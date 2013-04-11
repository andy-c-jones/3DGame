#include "Menu.h"


Menu::Menu(void)
{
	_userInput = 0;
	_background = 0;
	_newGame = 0;
	_newGameHigh = 0;
	_exitGame = 0;
	_exitGameHigh = 0;
}


Menu::~Menu(void)
{
	CleanUp();
}


bool Menu::Intialize(Input* input,HWND hwnd, int width, int height)
{
	if( !(IntializeDirectx(hwnd, width, height, false)) )
	{
		MessageBoxA(NULL, "of Menu Direct3d initialisation failed.", NULL, MB_OK);
		return false;
	}

	_userInput = input;
	//0 is new game, 1 is exit;
	_menuItemSelected = 0;
	_state = 0;
	//load menu Images
	//load background menubackground.jpg
	_background = new MenuImages;
	_background->LoadSurface(direct3dDevice, "menubackground.jpg");
	
	//load new game image
	_newGame = new MenuImages;
	_newGame->LoadSurface(direct3dDevice, "newgame.jpg");
	_newGame->setPosition(200,300);
	_newGameHigh = new MenuImages;
	_newGameHigh->LoadSurface(direct3dDevice, "newgameh.jpg");
	_newGameHigh->setPosition(200,300);
	//load exit image
	_exitGame = new MenuImages;
	_exitGame->LoadSurface(direct3dDevice, "exit.jpg");
	_exitGame->setPosition(200,400);
	_exitGameHigh = new MenuImages;
	_exitGameHigh->LoadSurface(direct3dDevice, "exith.jpg");
	_exitGameHigh->setPosition(200,400);

	

	return true;
}


bool Menu::IntializeDirectx(HWND hwnd, int width, int height, bool fullscreen)
{
	HRESULT hr;
	direct3d = Direct3DCreate9( D3D_SDK_VERSION );
	if(direct3d == NULL)
	{
		return false;
	}

	bool windowed = true;
	if (fullscreen){
		windowed = false;
	}

	//Setup the present parameters
	D3DPRESENT_PARAMETERS d3dpp; 
    ZeroMemory( &d3dpp, sizeof(d3dpp) );
    d3dpp.Windowed = windowed; //Windowed or Fullscreen
    d3dpp.SwapEffect = D3DSWAPEFFECT_DISCARD; //discards the previous frames
	d3dpp.BackBufferFormat = D3DFMT_R5G6B5; //The display format
	d3dpp.BackBufferCount  = 1;	//Number of back buffers
	d3dpp.BackBufferHeight = height; //height of the backbuffer
	d3dpp.BackBufferWidth  = width; //width of the backbuffer
	d3dpp.hDeviceWindow    = hwnd; //handle to our window
	d3dpp.AutoDepthStencilFormat = D3DFMT_D16; //The stencil format
    d3dpp.EnableAutoDepthStencil = TRUE;
	d3dpp.FullScreen_RefreshRateInHz = D3DPRESENT_RATE_DEFAULT;
	d3dpp.PresentationInterval = D3DPRESENT_INTERVAL_DEFAULT;


	//Create the Video Device
	hr = direct3d->CreateDevice( D3DADAPTER_DEFAULT, //The default adapter is the primary display adapter
							D3DDEVTYPE_HAL, //the HAL (hardware accelerated layer) uses your 3d accelerator card
							hwnd,
                            D3DCREATE_HARDWARE_VERTEXPROCESSING, //sets the graphic card to do the hardware vertexprocessing
                            &d3dpp, //The present parameters we created above
							&direct3dDevice 
							);
	if( FAILED(hr)){
        return false;
    }
	direct3dDevice->SetRenderState(D3DRS_CULLMODE, D3DCULL_CCW);
	direct3dDevice->SetRenderState(D3DRS_ZENABLE, TRUE);
	direct3dDevice->SetRenderState(D3DRS_NORMALIZENORMALS, TRUE); //this normalizes the normal values (this is important for how lighting effects your models)

	return true;


}


void Menu::update()
{
	_userInput->GetInputData();

	if (_userInput->IsWPressed() || _userInput->IsSPressed())
	{
		if (_menuItemSelected == 0)
		{
			_menuItemSelected = 1;
		} 
		else 
		{
			_menuItemSelected = 0;
		}

	}

	if (_userInput->IsEnterPressed())
	{
		switch (_menuItemSelected)
		{
			case 0: {_state = NEW_GAME; break;}
			case 1: {_state = EXIT; break;}
		}	

	}

}

void Menu::render()
{
	if( NULL == direct3dDevice )
        return;

    // Clear the backbuffer to a black color
    direct3dDevice->Clear( 0, 
						NULL, 
						D3DCLEAR_TARGET|D3DCLEAR_ZBUFFER,
						D3DCOLOR_XRGB(55,55,55), 
						1.0f, 
						0 
						);

	direct3dDevice->BeginScene();

	_background->render(direct3dDevice);
	
	//render menu items based on which is highlighted
	if (_menuItemSelected == 0){
		_newGameHigh->render(direct3dDevice);
		_exitGame->render(direct3dDevice);
	} else {
		_newGame->render(direct3dDevice);
		_exitGameHigh->render(direct3dDevice);
	}



	direct3dDevice->EndScene();
    direct3dDevice->Present( NULL, NULL, NULL, NULL );

}


int Menu::getState()
{

	return _state;

}


void Menu::CleanUp()
{
	if( direct3dDevice != NULL) 
	{
        direct3dDevice->Release();
		direct3dDevice = NULL;
	}
    if( direct3d != NULL)
	{
        direct3d->Release();
		direct3d = NULL;
	}

	if( _userInput != NULL )
	{
		_userInput->CleanUp();
		delete _userInput;
		_userInput = NULL;
	}

	if (_background != NULL)
	{
		delete _background;
	}

	if (_newGame != NULL)
	{
		delete _newGame;
	}

	if (_newGameHigh != NULL)
	{
		delete _newGameHigh;
	}

	if (_exitGame != NULL)
	{
		delete _exitGame;
	}
	if (_exitGameHigh != NULL)
	{
		delete _exitGameHigh;
	}

}