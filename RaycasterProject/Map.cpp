#include "Map.h"
#include <fstream>

Map::Map(int mapArray[])
{
}

Map::~Map()
{
}

void Map::saveMapToFile(int map[], int rows, int cols, const std::string& filename) {
	std::ofstream outFile(filename + ".txt");

	if (!outFile) {
		std::cerr << "Error opening file: " << filename << std::endl;
		return;
	}

	for (int i = 0; i < rows; ++i) {
		for (int j = 0; j < cols; ++j) {
			outFile << map[i * mapX + j] << ",";
		}
		outFile << std::endl;
	}

	outFile.close();
}
void Map::loadMapFromFile(int map[],int rows, int cols, const std::string& filename)
{
  std::ifstream inFile(filename + ".txt");

  if (!inFile){
    std::cerr << "Error Loading File"<< filename << std::endl;
    return;
  }
  for(int i = 0; i < rows; i++)
  {
    for (int j = 0; j < cols; j++) {
      char ch;
      inFile >> ch;
      if (ch == ';') {
        --j;  // Skip the separator
      }else {
        map[i * cols + j] = ch - '0';  // Convert character to integer
      }
    }
  }
  inFile.close();
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
