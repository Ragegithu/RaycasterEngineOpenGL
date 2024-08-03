#include "Map.h"

Map::Map(int mapArray[])
{
	DrawMap(mapArray);
}

Map::~Map()
{
}

void Map::DrawMap(int mapArray[])
{
	for (y=0; y<mapY; y++) 
	{
		for (x=0; x< mapX; x++) 
		{
			if (mapArray[y * mapX + x] == 1)
			{
				glColor3f(1, 1, 1);
			}
			else if (mapArray[y * mapX + x] == 2)
			{
				glColor3f(1, 0.5, 0.5);
			}
			else if (mapArray[y * mapX + x] == 3)
			{
				glColor3f(0.5, 0.5, 1);
			}
			else { glColor3f(0, 0, 0); }

			xo = x * mapS + moveX; yo = y * mapS + moveY;
			
			if (showMap) {
				glBegin(GL_QUADS);
				glVertex2i(xo + 1, yo + 1);
				glVertex2i(xo + 1, yo + mapS - 1);
				glVertex2i(xo + mapS - 1, yo + mapS - 1);
				glVertex2i(xo + mapS - 1, yo + 1);
				glEnd();
			}
		}
	}
}
