#pragma once
#include <GLFW/glfw3.h>

class Keyboard
{
public:
	Keyboard();
	~Keyboard();


private:
	void KeyDown();
	int w, a, s, d;
};

//TODO: