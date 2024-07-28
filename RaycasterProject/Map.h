#pragma once
#include <glad/glad.h>

class Map
{
public:
	Map(int mapArray[]);
	~Map();
	bool showMap;
	int mapX = 16, mapY = 16, mapS = 64;
	int moveX, moveY;
private:
	void DrawMap(int mapArray[]);
	int x, y, xo, yo;
};

