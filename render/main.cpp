#include "Camera.h"
#include "PathTracing.h"
#include "Sphere.h"
#include "Surface.h"
#include "PureColor.h"
#include "Grain.h"
#include <vector>

using namespace std;
using namespace cv;

int main(int argc, char** argv) {
    if(argc != 5)
    {
        printf("Please specify:\n%s width height sample_size [max_threads]\n", argv[0]);
        return 1;
    }
    int width = atoi(argv[1]);
    int height = atoi(argv[2]);
    int smpl = atoi(argv[3]);

    Scene scene;
    Render* render = new PathTracing(atoi(argv[4]));
    Camera camera(width, height, float3(50, 52, 295.6), float3(0, -0.042612, -1).normalize(), 0.5312, smpl, render);

    /*-------------------Setup Scene-------------------*/
	
	vector<vector<float3> > p;
	p.resize(3);
	p[0].push_back(float3(27, 2, 30));
	p[0].push_back(float3(27, 10, 60));
	p[0].push_back(float3(27, 2, 90));

	p[1].push_back(float3(40, 5, 30));
	p[1].push_back(float3(40, 50, 60));
	p[1].push_back(float3(40, 5, 90));

	p[2].push_back(float3(65, 3, 30));
	p[2].push_back(float3(65, 25, 60));
	p[2].push_back(float3(65, 3, 90));

	Material* b_m = new PureColor(SPECULAR, Color(50, 50, 240));
	Surface bz(p, b_m);

	Material* sp1_m = new Grain(REFRACTIVE, "../grain/concrete.jpg");
	Sphere sphere1(float3(40, 9.5, 94), 9.5, sp1_m);

	//Material* sp2_m = new PureColor(DIFFUSE, Color(50, 150, 250));
	Material* sp2_m = new PureColor(REFRACTIVE, Color(220, 220, 220));
	Sphere sphere2(float3(80, 16, 78), 16, sp2_m);		//79,14,78

	Material* sp3_m = new Grain(SPECULAR, "../grain/marble.bmp");
	//    Material* sp3_m = new PureColor(SPECULAR, Color(200, 200, 200));
	Sphere sphere3(float3(27, 17, 37), 17, sp3_m);

	Material* sp4_m = new Grain(DIFFUSE, "../grain/wallpaper.jpg");
	Sphere sphere4(float3(55, 6, 114), 6, sp4_m);

	Material* lt_m = new PureColor(DIFFUSE, Color(), Color(7000, 7000, 6800));
	Sphere light(float3(50, 681.6 - .27, 81), 600, lt_m);

	Material* lw_m = new PureColor(DIFFUSE, Color(200, 100, 100));
	Sphere left(float3(1e5 + 1, 40.8, 81.6), 1e5, lw_m);

	Material* rw_m = new PureColor(DIFFUSE, Color(180, 100, 220));	//180, 100, 220
	Sphere right(float3(-1e5 + 99, 40.8, 81.6), 1e5, rw_m);

	Material* bw_m = new PureColor(SPECULAR, Color(50, 50, 50));
	Sphere back(float3(50, 40.8, 1e5), 1e5, bw_m);

	Material* fw_m = new PureColor(SPECULAR, Color(170, 170, 170));
	Sphere front(float3(50, 40.8, -1e5 + 170), 1e5, fw_m);

	Material* fl_m = new PureColor(DIFFUSE, Color(200, 200, 120));
	Sphere bot(float3(50, 1e5, 81.6), 1e5, fl_m);

	Material* tp_m = new PureColor(DIFFUSE, Color(200, 200, 200));
	Sphere top(float3(50, -1e5 + 81.6, 81.6), 1e5, tp_m);

	scene.addObj(&bz);
    //scene.addObj(&sphere1);
    //scene.addObj(&sphere2);
    //scene.addObj(&sphere3);
    //scene.addObj(&sphere4);
    scene.addObj(&light);
    scene.addObj(&left);
    scene.addObj(&right);
    scene.addObj(&back);
    scene.addObj(&front);
    scene.addObj(&bot);
    scene.addObj(&top);

    /*---------------Start rendering---------------*/

    camera.takePhoto(&scene);
    Mat photo = camera.printPhoto();
    stringstream ss; string ptr;
    time_t ctime = time(NULL);
    ss << int(ctime); ss >> ptr;
    string out_path = string("../img/bmp/pic-") + ptr + string(".bmp");
    string pre_path = string("../img/preview-") + ptr + string(".png");

    vector<int>compression_params;
    compression_params.push_back(CV_IMWRITE_PNG_COMPRESSION);
    compression_params.push_back(9);

    imwrite(out_path, photo);
    imwrite(pre_path, photo, compression_params);

    //imshow("Preview", photo);
    //cvWaitKey(0);

    /*--------------------Clean-------------------*/

	delete b_m;
    delete sp1_m;
    delete sp2_m;
    delete sp3_m;
    delete sp4_m;
    delete lw_m;
    delete rw_m;
    delete lt_m;
    delete bw_m;
    delete fw_m;
    delete fl_m;
    delete tp_m;
    delete render;

    return 0;
}