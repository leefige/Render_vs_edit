#include "Surface.h"
#include <Eigen/Eigen>
#include <iostream>

#define EPSILON 1e-4
#define UPBOUND 1e20
#define MAXTRY 10

using namespace std;

Surface::Surface(vector<vector<float3>>& p, Material * mat) :
	Object(mat), m(p.size() - 1), n(p[0].size() - 1), p(p)
{
	float3 sum;
	for (auto vec : p) {
		for (auto point : vec) {
			sum = sum + point;
		}
	}
	sum = sum * (1.0 / ((m + 1)*(n + 1)));
	pos = sum;	// weight center

	double r = 0;
	for (auto vec : p) {
		for (auto point : vec) {
			r = max(r, (point-pos).mod());
		}
	}
	//printf("\nr=%lf\n", r);
	//printf("\npos=(%lf, %lf, %lf)\n", pos.x, pos.y, pos.z);
	round = Sphere(pos, r, NULL);

	for (double _u = 0.0, i = 0; _u <= 1.0; _u += 0.1, i++) {
		for (double _v = 0.0, j = 0; _v <= 1.0; _v += 0.1, j++) {
			float3 tmp = plotPoint(_u, _v);
	//		printf("\nx=%lf, y=%lf, z=%lf\n", tmp.x, tmp.y, tmp.z);
		}
	}
}

Surface::~Surface() {}

/*----------------private----------------------*/

float Surface::cmn(int m, int n)	//n>m
{
	float sum = 1;
	for (int i = n; i >= n - m + 1; i--)
		sum *= i;
	for (int i = 1; i <= m; i++)
		sum /= i;
	return sum;
}

float Surface::Bernstein(float t, int i, int m)
{
	return cmn(i, m) * pow(t, i) * pow(1-t, m - i);
}

float Surface::dBern(float t, int i, int m)
{
	return m * (Bernstein(t, i - 1, m - 1) - Bernstein(t, i, m - 1));
}
/*
float3 Surface::dpdu(float u, float v)
{
	float3 sum;
	for(int i = 0; i <= m; i++)
		for (int j = 0; j <= n; j++)
		{
			sum = sum + p[i][j] * dBern(u, i, m) * Bernstein(v, j, n);
		}
	return sum;
}

float3 Surface::dpdv(float u, float v)
{
	float3 sum;
	for (int i = 0; i <= m; i++)
		for (int j = 0; j <= n; j++)
		{
			sum = sum + p[i][j] * Bernstein(u, i, m) * dBern(v, j, n);
		}
	return sum;
}
*/
float3 Surface::dfdu(double u, double v) {
	float3 ans(0, 0, 0);
	for (int i = 0; i <= n; i++)
		for (int j = 0; j <= m; j++) {
			ans = ans + Bernstein(v, j, m) * (cmn(i, n) * pow(u, i - 1) * pow(1 - u, n - i - 1) * (n * u - i)) * p[i][j];
		}
	return ans;
}

float3 Surface::dfdv(double u, double v) {
	float3 ans(0, 0, 0);
	for (int i = 0; i <= n; i++)
		for (int j = 0; j <= m; j++) {
			ans = ans + Bernstein(u, i, n) * (cmn(j, m) * pow(v, j - 1) * pow(1 - v, m - j - 1) * (m * v - j)) * p[i][j];
		}
	return ans;
}

float3 Surface::plotPoint(float u, float v)
{
	float3 point;
	for (int i = 0; i <= m; i++){
		for (int j = 0; j <= n; j++) {
			point = point + p[i][j] * Bernstein(u, i, m) * Bernstein(v, j, n);
		}
	}
	return point;
}

/*--------------------public-------------------*/

double Surface::inter(Light light)
{
	//float3 v = pos - light.pos;
	//double b = v * light.direct;
	double check = round.inter(light);
	if (check == -1) {
		return -1;		//no intersect with surrounding sphere
	}
	double rslt = UPBOUND;
	for (int tr = 0; tr < MAXTRY; tr++) {
		Eigen::Vector3f xi(check, rand() / double(RAND_MAX), rand() / double(RAND_MAX));	//(t, u, v)

		float3 pt = plotPoint(xi(1), xi(2));
		float3 err = light.pos + light.direct * xi(0) - pt;
		int times = 0;
		while(1)
		{
			times++;
			if (times > 10) {
				xi(0) = -1;
				break;
			}
			
			float3 d1 = dfdu(xi(1), xi(2));
			float3 d2 = dfdv(xi(1), xi(2));
			Eigen::Matrix3f jac;
			jac(0, 0) = light.direct.x;
			jac(0, 1) = 1 * d1.x;
			jac(0, 2) = 1 * d2.x;
			jac(1, 0) = light.direct.y;
			jac(1, 1) = 1 * d1.y;
			jac(1, 2) = 1 * d2.y;
			jac(2, 0) = light.direct.z;
			jac(2, 1) = 1 * d1.z;
			jac(2, 2) = 1 * d2.z;

			if (jac.determinant() < EPSILON) {
				xi(0) = -1;
				break;	//not found
			}

			float3 neo = light.pos + light.direct * xi(0) - plotPoint(xi(1), xi(2));
			if (err.mod() < neo.mod()) {
				xi(0) = -1;
				break;	//not found
			}
			err = neo;
			
			if (err.mod() < EPSILON)
			{
				//printf("\nfound\n");
				break;	//found
			}
			
			Eigen::Vector3f fx(err.x, err.y, err.z);

			xi = xi - jac.inverse().eval() * fx;
			//cout << jac << endl << endl << jac.inverse().eval() << endl<<endl << endl;
			
			
			

			//new solution x_i+1
			
		}

		if (xi(1) < 1 + EPSILON &&
			xi(2) < 1 + EPSILON &&
			xi(1) > EPSILON &&
			xi(2) > EPSILON)
		{
			
			if (xi(0) >= rslt)
			{
				continue;
			}
			//printf("\nfound one:%lf", xi(0));
			n_vec = dfdu(xi(1), xi(2)).cross(dfdv(xi(1), xi(2))).normalize();
			cu = xi(1);
			cv = xi(2);
			rslt = xi(0) - EPSILON;
		}
	}
	if (rslt == UPBOUND)
	{
		return -1;
	}
	if(rslt>0)
		//printf("\nresult=%lf", rslt);
	return rslt;
}

Color Surface::getColor()
{
	if (mater->isPure)
	{
		return this->mater->getColor();
	}
	else
	{
		//printf("\ngetting color at cu=%lf, cv=%lf", cu, cv);
		return this->mater->getColor(cu, cv);
	}
}
