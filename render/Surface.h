#ifndef RENDER_SURFACE_H
#define RENDER_SURFACE_H

#include "Object.h"
#include "Sphere.h"
#include <vector>

using namespace std;

class Surface :	public Object
{
	float cmn(int m, int n);
	float Bernstein(float t, int i, int m);
	float dBern(float t, int i, int m);
	//float3 dpdu(float u, float v);
	//float3 dpdv(float u, float v);
	float3 dfdu(double u, double v);
	float3 dfdv(double u, double v);
	float3 plotPoint(float u, float v);

public:
	int m, n;		// control point num; vector is (m+1)*(n+1)
	float cu, cv;	// for getColor
	vector<vector<float3> >& p;
	Sphere round;	// surrounding sphere

	Surface(vector<vector<float3> >& p, Material* mat);
	~Surface();

	double inter(Light light);
	Color getColor();
};

#endif

