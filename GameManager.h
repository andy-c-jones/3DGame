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
	void update(DWORD timeDelta, std::string fps);
	enum { MENU = 1, GAME = 2 };

private:

	Environment* _mainGame;
	Menu* _gameMenu;
	Input* _input;
	int activeState;
	HWND _hWnd; 
	HINSTANCE _instance; 
	UINT _screenWidth; 
	UINT _screenHeight;

};

