#include "Ray3D.h"

Ray3D::Ray3D(float dr, float pi, float pa)
{
	ra = pa - (dr * fov/2);
	if (ra <      0) { ra += 2 * pi; }
	if (ra > 2 * pi) { ra -= 2 * pi; }
}

Ray3D::~Ray3D()
{
}

void Ray3D::DrawRay(float dr, float pi, float p2, float p3, float px, float py, float pa, int mapX, int mapY, int mapSize, int mapArray[])
{
	for (r = 0; r<fov; r++) 
	{
		if (drawWorld) 
		{
			
			//DRAW SKY
			glLineWidth(8);
			glColor3f(0.1, 0.3, 0.4);
			glBegin(GL_LINES);
			glVertex2f(r * 8 + 330, 0);
			glVertex2f(r * 8 + 330, 640 / 2);
			glEnd();
			//DRAW GROUND
			glColor3f(0.1, 0.7, 0.2);
			glBegin(GL_LINES);
			glVertex2f(r * 8 + 330, 640 / 2);
			glVertex2f(r * 8 + 330, 640);
			glEnd();
		}
		//CHECK HORIZONTAL LINES
		dof = 0;
		disH = 100000, hx = px, hy = py;
		float aTan = -1 / tan(ra);
		if (ra > pi) // looking down
		{
			ry = (((int)py >> 6) << 6) - 0.0001;
			rx = (py - ry) * aTan + px;
			yo =-mapSize;
			xo =-yo * aTan;
		}
		if (ra < pi) // looking up
		{
			ry = (((int)py >> 6) << 6) + mapSize;
			rx = (py - ry) * aTan + px;
			yo = mapSize;
			xo =-yo * aTan; 
		}
		if (ra == 0 || ra == pi) // looking straight left or right
		{
			rx = px;
			ry = py;
			dof = depthOfFieldConstant;
		}
		while(dof< depthOfFieldConstant)
		{
			mx = (int)(rx) >> 6;
			my = (int)(ry) >> 6;
			mpY = my * mapX + mx;
			if (mpY > 0 && mpY<mapX * mapY && mapArray[mpY] > 0) // if hit wall
			{
				hx = rx;
				hy = ry;
				disH = dist(px, py, hx, hy, ra);
				dof = depthOfFieldConstant;
			}
			else { rx += xo; ry += yo; dof += 1; }
		}

		//CHECK VERTECAL LINES
		dof = 0;
		disV = 100000, vx = px, vy = py;
		float nTan = -tan(ra);
		if (ra > p2 && ra < p3) // looking left
		{
			rx = (((int)px >> 6) << 6) - 0.0001;
			ry = (px - rx) * nTan + py;
			xo = -mapSize;
			yo = -xo * nTan;
		}
		if (ra < p2 || ra > p3) // looking right
		{
			rx = (((int)px >> 6) << 6) + mapSize;
			ry = (px - rx) * nTan + py;
			xo = mapSize;
			yo = -xo * nTan;
		}
		if (ra == 0 || ra == pi) // looking straight up or down
		{
			rx = px;
			ry = py;
			dof = depthOfFieldConstant;
		}
		while (dof < depthOfFieldConstant)
		{
			mx = (int)(rx) >> 6;
			my = (int)(ry) >> 6;
			mp = my * mapX + mx;
			if (mp > 0 && mp < mapX * mapY && mapArray[mp] > 0) // if hit wall
			{
				vx = rx;
				vy = ry;
				disV = dist(px, py, vx, vy, ra);
				dof = depthOfFieldConstant;
			}
			else { rx += xo; ry += yo; dof += 1; }
		}

		//CHECK WALL TYPE VERTICAL
		if (disV < disH)
		{
			if (mapArray[mp] == 1) {
				glColor3f(0.5, 0.3, 0);
			}
			if (mapArray[mp] == 2) {
				glColor3f(0.7, 0.2, 0.3);
			}
			if (mapArray[mp] == 3) {
				glColor3f(0.4, 0.2, 0.8);
			}
		}

		//CHECK WALL TYPE HORIZONTAL
		if (disH < disV)
		{
			if (mapArray[mpY] == 1) {
				glColor3f(0.7, 0.4, 0);
			}
			else if (mapArray[mpY] == 2) {
				glColor3f(0.7, 0.3, 0.3);
			}
			else if (mapArray[mpY] == 3) {
				glColor3f(0.4, 0.3, 1.0);
			}
		}

		if(disV < disH)
		{
			rx = vx;
			ry = vy;
			disF = disV;
		}

		if (disH < disV)
		{
			rx = hx;
			ry = hy;
			disF = disH;
		}

		//DRAW RAYCAST RAYS
		/*
		if (drawPlayerRay) {
			glLineWidth(1);
			glBegin(GL_LINES);
			glVertex2i(px, py);
			glVertex2i(rx, ry);
			glEnd();
		}
		*/
		//DRAW WALLS HERE
		if (drawWorld) {
			
			float ca = pa - ra;
			if (ca < 0) { ca += 2 * pi; } if (ca > 2 * pi) { ca -= 2 * pi; } disF = disF * cos(ca);

			float lineH = (mapSize * 320) / disF; // <- line height
			float lineO = 320 - lineH / 2; //<-- 320 IS HALF WINDOW HEIGHT RESOLUTION
			if (lineH > 640 *2) { lineH = 640 * 2; } //<-- 640 is HALF WINDOW WIDTH

			//HERE
			glBegin(GL_QUADS);
			glVertex2f(r * 8 + 330 - 4, lineO);          // top-left corner
			glVertex2f(r * 8 + 330 + 4, lineO);          // top-right corner
			glVertex2f(r * 8 + 330 + 4, lineH + lineO);  // bottom-right corner
			glVertex2f(r * 8 + 330 - 4, lineH + lineO);  // bottom-left corner
			glEnd();
			//END
		}
		ra += dr;
		if (ra < 0) { ra += 2 * pi; }
		if (ra > 2 * pi) { ra -= 2 * pi; }
	}
}


float Ray3D::dist(float ax, float ay, float bx, float by, float ang)
{
	return (sqrt((bx-ax)*(bx - ax) + (by-ay)*(by - ay)));
}