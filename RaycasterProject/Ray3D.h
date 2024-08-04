#pragma once
#include <glad/glad.h>
#include "iostream"
#include <chrono>
#include <thread>
#include <math.h>

class Ray3D
{
public:
	bool drawWorld = false;
	bool drawPlayerRay = false;
	float depthOfFieldConstant;
	int fov = 100;
	Ray3D(float dr, float pi, float pa);
	~Ray3D();
	void DrawRay(float dr, float pi, float p2, float p3, float px, float py, float pa, int mapX, int mapY, int mapSize, int mapArray[]);
private:
	float dist(float ax, float ay, float bx, float by, float ang);
	int r, mx, my, mp = 0, mpY = 0, dof;
	float rx, ry, ra, xo, yo, disF;
	float disH, hx, hy;
	float disV, vx, vy;
};

