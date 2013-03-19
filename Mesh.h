#pragma once
#include "d3dx9.h"
#include <string>
#include "ShadowEffect.h"

class Mesh
{
	IDirect3DDevice9* _pd3dDevice;
	IDirect3DTexture9* _texture;
	D3DXMATRIXA16 _worldMatrix;
	DWORD _numMaterials;
	std::string _meshFileName;
	std::string _textureFileName;
	ID3DXBuffer* _matBuffer;

public:
	ID3DXMesh* _pMesh;

	Mesh(IDirect3DDevice9* device, D3DXVECTOR3& position, std::string meshFileName,std::string textureFileName);
	~Mesh();

	D3DXMATRIXA16* GetWorldMat();
	void Translate(float inX, float inY, float inZ);

	bool Load();
	void RenderAmbient(D3DXMATRIXA16* inViewProjMat, 
					   ShadowEffect* inShadowMapper);

	void RenderMeshWithShadowCube(D3DXMATRIXA16* inViewProjMat, 
								  ShadowEffect* inShadowMapper);
	void CleanUp();
};
