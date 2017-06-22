//
// Created by Liyf on 2017/6/17.
//

#ifndef RENDER_CAMERA_H
#define RENDER_CAMERA_H

#include "Scene.h"
#include "Film.h"
#include "float3.h"
#include "Render.h"
#include <opencv2/opencv.hpp>
#include <time.h>

using namespace cv;

class Camera {
    int w, h;
    float3 pos;
    float3 direct;
    double f_len;
    int samples;

    Film film;
    Render* render;

    uchar regularizeColor(double x) const;

public:
    Camera(int width, int height, const float3 &pos, const float3 &dir, double fov, int samples, Render *render) :
            pos(pos), direct(dir), w(width),
            h(height), film(width, height), samples(samples), render(render), f_len(fov) {}

    Mat printPhoto() const;
    void takePhoto(Scene *scene);
};

uchar Camera::regularizeColor(double x) const {
    double color = x;
    if (x > 255)
        color = 255;
    if (x < 0)
        color = 0;
    return uchar(pow(color / 255, (1 / 2.2)) * 255 + 0.5);
}

Mat Camera::printPhoto() const {
	printf("\nPrinting photo...\n");
    Mat mat(h, w, CV_8UC3);
    
#pragma omp parallel for num_threads(16)      // OpenMP
    for (int i = 0; i < w; i++)
        for (int j = 0; j < h; j++) {
            mat.at<Vec3b>(j, i)[0] = regularizeColor(film.pixes[j * w + i].b);
            mat.at<Vec3b>(j, i)[1] = regularizeColor(film.pixes[j * w + i].g);
            mat.at<Vec3b>(j, i)[2] = regularizeColor(film.pixes[j * w + i].r);
        }
    printf("Finished!\n\n");
    return mat;
}

void Camera::takePhoto(Scene *scene) {
    float3 fx = float3(w * f_len / h, 0, 0);
    float3 fy = fx.cross(direct).normalize() * f_len;
    time_t ctime = time(NULL);
    unsigned int seed = int(ctime);
    srand(seed);
    render->rendering(h, w, fx, fy, pos, direct, scene->objs, film, samples);
}

//Camera camera(width, height, float3(50, 52, 295.6), float3(0, -0.042612, -1).normalize(), 0.5312, smpl, render);

#endif //RENDER_CAMERA_H
