#include "Surface.h"


float3 Surface::dpdu(float u, float v)
{
	return float3();
}

float3 Surface::dpdv(float u, float v)
{
	return float3();
}

Surface::Surface(const float3 & pos, int m, int n, float3 ** p, Material * mat):
	Object(pos, mat), m(m), n(n), p(p), bz(m, n, 0.1, 0.1, p) {}

Surface::~Surface() {}

double Surface::inter(Light light)
{
	float3 v = pos - light.pos;
	double b = v * light.direct;
	return 0.0;
}

Color Surface::getColor()
{
	if (mater->isPure)
	{
		return mater->getColor();
	}
	else
	{
		return Color();
	}
		/*double a = acos(sgn(-(n * float3(0, 0, 1))));
		double b = acos(std::min(std::max(n * float3(0, 1, 0) / sin(a), -1.0), 1.0));
		//        double b = sin(a) == 0 ? 1 : acos(sgn(min(max(n * float3(0, 1, 0) / sin(a), -1.0), 1.0)));
		double u = a / M_PI, v = b / 2 / M_PI;

		if (n * float3(1, 0, 0) < 0)
			v = 1 - v;

		//        u = u + 0.5 > 1 ? u - 0.5 : u + 0.5;
		//        v = v + 0.5 > 1 ? v - 0.5 : v + 0.5;
		return mater->getColor(u, v);
	}*/
}
