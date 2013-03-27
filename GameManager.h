#pragma once

#include "Input.h"
#include "Menu.h"
#include "Environment.h"

class GameManager
{
public:
	GameManager(Input* input);
	~GameManager(void);

	bool Initialise(HWND hWnd, HINSTANCE instance, UINT screenWidth, UINT screenHeight, BOOL windowed);
	void update(void);
	enum { MENU = 1, GAME = 2 };

private:

	Environment* _mainGame;
	Menu* _gameMenu;
	Input* _input;
	int activeState;

};

