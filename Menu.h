#pragma once

#include "Input.h"
#include "d3dx9.h"

class Menu
{
public:
	Menu();
	~Menu();

	bool Intialize(Input* input);
	void update();
	void render(LPDIRECT3DDEVICE9 device);
	int getState();

	enum{NEW_GAME = 1, EXIT = 2};

private:

	Input* _userInput;

	int _menuItemSelected;
	int _state;
};

