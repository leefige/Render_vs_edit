//
// Created by Liyf on 2017/5/27.
//

#ifndef RENDER_BEZIER_H
#define RENDER_BEZIER_H

#include "float3.h"
#include "int4.h"
#include <vector>
#include <string>
#include <fstream>
#include <iostream>

using namespace std;

class Bezier {
	float3 **pSurface;
	float3 *pCurve;
	int m, n;
	vector<float3> point;
	vector<int4> mesh;
	float du, dv, dt;
public:
	Bezier(float du, float dv);

	Bezier(int m, int n, float du, float dv, float3 ** p);

	Bezier(float dt);

	float cnm(int n, int m);

	float Bernstein(int t, int i, int m);

	void calcSurface();

	void calcCurve();

	float3 plotPoint(float u, float v, int i, int j, int num_u, int num_v);

	float3 Bezier::plotPoint(float t, int i, int num);

	float3 rotate(float3 point, float theta);

	void writeMesh(char* s);

	void writeSpin(char * s);

	virtual ~Bezier();
};

#endif //RENDER_BEZIER_H
