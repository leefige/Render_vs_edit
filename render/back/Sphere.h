//
// Created by Liyf on 2017/5/27.
//

#ifndef RENDER_SPHERE_H
#define RENDER_SPHERE_H

#include "Object.h"
#include "Texture.h"
#include <cmath>

class Sphere: public Object {
	double sgn(double x);
public:
    double r;

    Sphere(const float3& pos, double r, Material* mat);

    double inter(Light light);
    Color getColor();
};

#endif //RENDER_SPHERE_H
