#pragma once
#include <glad/glad.h>
#include <iostream>
#include <fstream>
#include <vector>

class Map
{
public:
	Map(int mapArray[]);
	~Map();
	bool showMap;
	int mapX = 16, mapY = 16, mapS = 64;
	int moveX, moveY;

	void saveMapToFile(int map[], int rows, int cols, const std::string& filename);
	void DrawMap(int mapArray[]);
private:
	int x, y, xo, yo;
};

