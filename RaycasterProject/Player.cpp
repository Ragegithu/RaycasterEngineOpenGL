#include "Player.h"

Player::Player()
{
	glColor3f(0.5f, 0.5f, 0.6f);
	glPointSize(size);
}

Player::~Player()
{
}

void Player::DrawPlayer(float px, float py, float pdx, float pdy)
{
	if (showPlayer) {
		glBegin(GL_POINTS);
		glVertex2i(px, py);
		glEnd();
		//PLAYER LOOK RAY
		glLineWidth(3);
		glBegin(GL_LINES);
		glVertex2i(px, py);
		glVertex2i(px + pdx * 5, py + pdy * 5);
		glEnd();
	}
}
