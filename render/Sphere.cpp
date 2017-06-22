//
// Created by Liyf on 2017/5/27.
//


#include "Sphere.h"
#include <opencv2/opencv.hpp>

#define EPSILON 1e-4

using namespace cv;

double sgn(double x);

Sphere::Sphere() : Object(float3(), NULL), r(0){}

Sphere::Sphere(const float3 &pos, double r, Material *mat) : Object(pos, mat), r(r) {}

double Sphere::sgn(double x) {
    if (x > 1) return 1;
    if (x < -1) return -1;
    return x;
}

double Sphere::inter(Light light) {
    float3 v = pos - light.pos;
    double b = v * light.direct;
    double det = b * b - v * v + r * r;
    if (det < 0) 
		return -1;
    else det = sqrt(det);
    double rslt;
    if (b - det > EPSILON)
        rslt = b - det;
    else if (b + det > EPSILON)
        rslt = b + det;
    else
        rslt =  -1;

    if (rslt > EPSILON) {
        n_vec = (light.pos + light.direct * rslt - pos).normalize();
        isIn = (light.direct * n_vec > 0);
    }
    return rslt;
}

Color Sphere::getColor() {
    if(mater->isPure)
    {
        return mater->getColor();
    }
    else
    {
        double a = acos(sgn(-(n_vec * float3(0, 0, 1))));
        double b = acos( min( max( n_vec * float3(0, 1, 0) / sin( a ) , -1.0 ) , 1.0 ) );
//        double b = sin(a) == 0 ? 1 : acos(sgn(min(max(n * float3(0, 1, 0) / sin(a), -1.0), 1.0)));
        double u = a / M_PI, v = b / 2 / M_PI;

        if (n_vec * float3(1, 0, 0) < 0)
            v = 1 - v;

//        u = u + 0.5 > 1 ? u - 0.5 : u + 0.5;
//        v = v + 0.5 > 1 ? v - 0.5 : v + 0.5;
        return mater->getColor(u, v);
    }
}


