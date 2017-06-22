//
// Created by Liyf on 2017/6/21.
//
#ifndef RENDER_SURFACE_H
#define RENDER_SURFACE_H

#include "Object.h"
#include "Color.h"
#include "Sphere.h"
#include <vector>

using namespace std;

class Surface : public Object {
	float3 dpdu(double u, double v);
	float3 dpdv(double u, double v);
	float3 plotPoint(double u, double v);
	double Bernstein(double u, int n, int i);
	double dBern(double u, int n, int i);
public:
	int m, n;
	double cu, cv;
	Sphere round;
	vector<vector<float3> > p;
	
	Surface(vector<vector<float3> >& p, Material * mat);
	
	double inter(Light light);
	Color getColor();

};

#endif //RENDER_SURFACE_H