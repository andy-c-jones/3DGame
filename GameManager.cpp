#include "GameManager.h"


GameManager::GameManager(Input* userInput)
{
	_input = userInput;
	_mainGame = 0;
	_gameMenu = 0;
}


GameManager::~GameManager(void)
{
}


bool GameManager::Initialise(HWND hWnd, HINSTANCE instance, UINT screenWidth, UINT screenHeight, BOOL windowed)
{
	_hWnd = hWnd;
	_instance = instance;
	_screenWidth = screenWidth;
	_screenHeight = screenHeight;
	
	_gameMenu = new Menu;

	if( !(_gameMenu->Intialize()) )
	{
		MessageBoxA(NULL, "Failed to initialise the Menu.", NULL, MB_OK);
		return 0;
	}
	activeState = MENU;


}

void GameManager::update(DWORD timeDelta, std::string fps)
{

	bool RungameTemp = true;

	if (activeState == MENU)
	{
		if (RungameTemp == true)
		{
			_mainGame = new Environment(_input);

			if( !(_mainGame->Initialise(_hWnd, _instance, _screenWidth, _screenHeight, true)) )
			{
				MessageBoxA(NULL, "Failed to initialise the Maingame.", NULL, MB_OK);
			}
			activeState = GAME;
		}
	}

	if (activeState == GAME)
	{

		_mainGame->Render(timeDelta,fps);

	}
}