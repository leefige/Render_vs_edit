//
// Created by Liyf on 2017/5/27.
//

#include "Bezier.h"
#define M_PI 3.14159265359

Bezier::Bezier(float du, float dv) : du(du), dv(dv) {
	cin >> m >> n;
	pSurface = new float3*[m + 1];
	for (int i = 0; i <= m; i++)
		pSurface[i] = new float3[n + 1];
	for (int i = 0; i <= m; i++)
		for (int j = 0; j <= n; j++) {
			float x, y, z;
			cin >> x >> y >> z;
			pSurface[i][j] = float3(x, y, z);
		}
}

Bezier::Bezier(int m, int n, float du, float dv, float3** p) : 
	du(du), dv(dv), m(m), n(n), pSurface(p) {}

Bezier::Bezier(float dt) : dt(dt)
{
	cin >> m;
	pCurve = new float3[m + 1];

	for (int i = 0; i <= m; i++) {
		float x, y, z;
		cin >> x >> y >> z;
		pCurve[i] = float3(x, y, z);
	}
}

float Bezier::Bernstein(int t, int i, int m)
{
	if (i == m)
	{
		return pow(t, i);
	}
	if (i == 0)
	{
		return pow(1 - t, m);
	}
	return (1 - t) * Bernstein(t, i, m - 1) + t * Bernstein(t, i - 1, m - 1);
}

void Bezier::calcSurface() {
	int nu = 1 / du + 1;
	int nv = 1 / dv + 1;
	int pid = 0;

	for (float u = 0.0, i = 0; u <= 1.0; u += du, i++) {
		for (float v = 0.0, j = 0; v <= 1.0; v += dv, j++) {
			point.push_back(plotPoint(u, v, 0, 0, m, n));
			pid++;
			if (i != 0 && j != 0) {
				mesh.push_back(int4(pid - nv - 1, pid - nv, pid, pid - 1));
			}
		}
	}
}

void Bezier::calcCurve() {
	int nt = 1 / dt + 1;
	int ntheta = 2 * M_PI / (M_PI / 10) + 1;
	int pid = 0;

	for (float t = 0.0, i = 0; t <= 1.0; t += dt, i++) {
		for (float theta = 0.0, j = 0; theta < 2 * M_PI; theta += M_PI/10, j++) {
			point.push_back(rotate( plotPoint(t, 0, m), theta));
			pid++;
			if (i != 0 && j != 0) {
				mesh.push_back(int4(pid - ntheta - 1, pid - ntheta, pid, pid - 1));
			}
		}
	}
}

float3 Bezier::plotPoint(float u, float v, int i, int j, int num_u, int num_v) {
	if (num_u == 0 && num_v == 0) {
		return pSurface[i][j];
	}
	if (num_v == 0) {
		return plotPoint(u, v, i, j, num_u - 1, 0) * (1 - u) + plotPoint(u, v, i + 1, j, num_u - 1, 0) * u;
	}
	return plotPoint(u, v, 0, j, num_u, num_v - 1) * (1 - v) + plotPoint(u, v, 0, j + 1, num_u, num_v - 1) * v;
}

float3 Bezier::plotPoint(float t, int i, int num)
{
	if (num == 0) {
		return pCurve[i];
	}
	return plotPoint(t, i, num - 1) * (1 - t) + plotPoint(t, i + 1, num - 1) * t;
}

float3 Bezier::rotate(float3 point, float theta)
{
	return float3(point.x*cos(theta), point.y, point.z*sin(theta));
}

void Bezier::writeMesh(char* s) {
	calcSurface();
	ofstream fp(s);
	for (auto point : point) {
		fp << "v " << point.x << ' ' << point.y << ' ' << point.z << endl;
	}
	for (auto mesh : mesh) {
		fp << "f" << ' ' << mesh.x0 << ' ' << mesh.x1 << ' ' << mesh.x2 << ' ' << mesh.x3 << endl;
	}
}

void Bezier::writeSpin(char* s) {
	calcCurve();
	ofstream fp(s);
	for (auto point : point) {
		fp << "v " << point.x << ' ' << point.y << ' ' << point.z << endl;
	}
	for (auto mesh : mesh) {
		fp << "f" << ' ' << mesh.x0 << ' ' << mesh.x1 << ' ' << mesh.x2 << ' ' << mesh.x3 << endl;
	}
}

Bezier::~Bezier() {
	if(pSurface)
		delete[] pSurface;
	if (pCurve)
		delete[] pCurve;
}