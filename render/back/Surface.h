#ifndef RENDER_SURFACE_H
#define RENDER_SURFACE_H

#include "Object.h"
#include "Bezier.h"

class Surface :
	public Object
{
	float3 dpdu(float u, float v);
	float3 dpdv(float u, float v);
public:
	int m, n;
	float3** p;
	Bezier bz;

	Surface(const float3& pos, int m, int n, float3** p, Material* mat);
	~Surface();
	double inter(Light light);
	Color getColor();
};

#endif

