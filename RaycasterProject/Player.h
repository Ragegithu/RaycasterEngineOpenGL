#pragma once
#include <GLFW/glfw3.h>

class Player
{
public:
	Player();
	~Player();
	void DrawPlayer(float px, float py, float pdx, float pdy);
	bool showPlayer;
	int size;
	float sens = 0.07f, speed = 1.0f;
};

