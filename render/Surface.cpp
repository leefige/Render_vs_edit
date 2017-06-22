//
// Created by Liyf on 2017/6/21.
//

#include <opencv2/opencv.hpp>
#include <fstream>
#include <iostream>
#include <Eigen/Eigen>
#include "Surface.h"

using namespace cv;

#define EPSILON 1e-4
#define MAXTRY 10
#define MAX_DISTANCE 1e20

Surface::Surface(vector<vector<float3> >& p, Material* mat) :Object(mat), p(p) {

	n = p.size() - 1;
	m = p[0].size() - 1;

	float3 pos;
	for (auto vec : p) {
		for (auto point : vec) {
			pos = pos + point;
		}
	}
	pos = pos * (1.0 / (n + 1) / (m + 1));
	double r = 0;
	for (int i = 0; i <= n; i++) {
		for (int j = 0; j <= m; j++) {
			r = max(r, (p[i][j] - pos).mod());
		}
	}
	round = Sphere(pos, r, NULL);
}

double cnm(int n, int m) {
    double ans = 1;
    for (int i = n; i >= n - m + 1; i--)
        ans *= i;
    for (int i = 1; i <= m; i++)
        ans /= i;
    return ans;
}

double Surface::Bernstein(double t, int n, int i) {
	return cnm(n, i) * pow(t, i) * pow(1 - t, n - i);
}

double Surface::dBern(double t, int n, int i) {
	return cnm(n, i) * pow(t, i - 1) * pow(1 - t, n - i - 1) * (n * t - i);
}

float3 Surface::plotPoint(double u, double v) {
	float3 sum;
	for (int i = 0; i <= n; i++)
		for (int j = 0; j <= m; j++) {
			sum = sum + p[i][j] * Bernstein(u, n, i) * Bernstein(v, m, j);
		}
	return sum;
}

float3 Surface::dpdu(double u, double v) {
    float3 sum;
    for (int i = 0; i <= n; i++)
        for (int j = 0; j <= m; j++) {
            sum = sum + Bernstein(v, m, j) * dBern(u, n, i) * p[i][j];
        }
    return sum;
}

float3 Surface::dpdv(double u, double v) {
    float3 sum;
    for (int i = 0; i <= n; i++)
        for (int j = 0; j <= m; j++) {
            sum = sum + Bernstein(u, n, i) * dBern(v, m, j) * p[i][j];
        }
    return sum;
}

double Surface::inter(Light light) {
    double check = round.inter(light);
    if (check == -1) 
		return -1;

    double rslt = MAX_DISTANCE;

    for (int trytime = 0; trytime < MAXTRY; trytime++) {

        Eigen::Vector3d xi(check, rand() / (double) RAND_MAX, rand() / (double) RAND_MAX);
		float3 err = light.pos + xi(0) * light.direct - plotPoint(xi(1), xi(2));
        
		int subtime = 0;
        while (1) {
            subtime++;
            if (subtime > MAXTRY) {
                xi(0) = -1;
                break;
            }
            
			float3 d1 = dpdu(xi(1), xi(2));
			float3 d2 = dpdv(xi(1), xi(2));
			Eigen::Matrix3d jac;

			jac <<
				light.direct.x, d1.x, d2.x,
				light.direct.y, d1.y, d2.y,
				light.direct.z, d1.z, d2.z;

            if (jac.determinant() < EPSILON) {
                xi(0) = -1;
                break;
            }
            
            float3 neo = light.pos + light.direct * xi(0) - plotPoint(xi(1), xi(2));

            if (err.mod() < neo.mod()) {
                xi(0) = -1;
                break;
            }
            err = neo;

            if (err.mod() < EPSILON) break;

            Eigen::Vector3d fx(neo.x, neo.y, neo.z);
            xi = xi - jac.inverse().eval() * fx;
        }
        if (xi(0) > EPSILON && 
			xi(1) > EPSILON && xi(2) > EPSILON && 
			xi(1) < 1 + EPSILON && xi(2) < 1 + EPSILON) 
		{
			if (xi(0) >= rslt) {
				continue;
			}
			float3 du = dpdu(xi(1), xi(2));
			float3 dv = dpdv(xi(1), xi(2));
			n_vec = du.cross(dv).normalize();
            cu = xi(1);
            cv = xi(2);
            rslt = xi(0) - EPSILON;
        }
    }
    if (rslt == MAX_DISTANCE) 
		return -1;
    return rslt;
}



Color Surface::getColor() {
	if (mater->isPure)
	{
		return mater->getColor();
	}
	else {
		return mater->getColor(cu, cv);
	}
}

