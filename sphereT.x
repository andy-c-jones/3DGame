xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header {
 1;
 0;
 1;
}

Mesh {
 225;
 0.00000;-1.00000; 0.00000;,
 0.00000;-0.97493;-0.22252;,
 0.00000;-0.90097;-0.43388;,
 0.00000;-0.78183;-0.62349;,
 0.00000;-0.62349;-0.78183;,
 0.00000;-0.43388;-0.90097;,
 0.00000;-0.22252;-0.97493;,
 0.00000;-0.00000;-1.00000;,
 0.00000; 0.22252;-0.97493;,
 0.00000; 0.43388;-0.90097;,
 0.00000; 0.62349;-0.78183;,
 0.00000; 0.78183;-0.62349;,
 0.00000; 0.90097;-0.43388;,
 0.00000; 0.97493;-0.22252;,
 0.00000; 1.00000;-0.00000;,
 0.00000;-1.00000; 0.00000;,
-0.09655;-0.97493;-0.20048;,
-0.18826;-0.90097;-0.39092;,
-0.27052;-0.78183;-0.56174;,
-0.33922;-0.62349;-0.70441;,
-0.39092;-0.43388;-0.81174;,
-0.42301;-0.22252;-0.87838;,
-0.43388;-0.00000;-0.90097;,
-0.42301; 0.22252;-0.87838;,
-0.39092; 0.43388;-0.81174;,
-0.33922; 0.62349;-0.70441;,
-0.27052; 0.78183;-0.56174;,
-0.18826; 0.90097;-0.39092;,
-0.09655; 0.97493;-0.20048;,
-0.00000; 1.00000;-0.00000;,
 0.00000;-1.00000; 0.00000;,
-0.17397;-0.97493;-0.13874;,
-0.33922;-0.90097;-0.27052;,
-0.48746;-0.78183;-0.38874;,
-0.61126;-0.62349;-0.48746;,
-0.70441;-0.43388;-0.56174;,
-0.76223;-0.22252;-0.60786;,
-0.78183;-0.00000;-0.62349;,
-0.76223; 0.22252;-0.60786;,
-0.70441; 0.43388;-0.56174;,
-0.61126; 0.62349;-0.48746;,
-0.48746; 0.78183;-0.38874;,
-0.33922; 0.90097;-0.27052;,
-0.17397; 0.97493;-0.13874;,
-0.00000; 1.00000;-0.00000;,
 0.00000;-1.00000; 0.00000;,
-0.21694;-0.97493;-0.04952;,
-0.42301;-0.90097;-0.09655;,
-0.60786;-0.78183;-0.13874;,
-0.76223;-0.62349;-0.17397;,
-0.87838;-0.43388;-0.20048;,
-0.95048;-0.22252;-0.21694;,
-0.97493;-0.00000;-0.22252;,
-0.95048; 0.22252;-0.21694;,
-0.87838; 0.43388;-0.20048;,
-0.76223; 0.62349;-0.17397;,
-0.60786; 0.78183;-0.13874;,
-0.42301; 0.90097;-0.09655;,
-0.21694; 0.97493;-0.04952;,
-0.00000; 1.00000;-0.00000;,
 0.00000;-1.00000; 0.00000;,
-0.21694;-0.97493; 0.04952;,
-0.42301;-0.90097; 0.09655;,
-0.60786;-0.78183; 0.13874;,
-0.76223;-0.62349; 0.17397;,
-0.87838;-0.43388; 0.20048;,
-0.95048;-0.22252; 0.21694;,
-0.97493;-0.00000; 0.22252;,
-0.95048; 0.22252; 0.21694;,
-0.87838; 0.43388; 0.20048;,
-0.76223; 0.62349; 0.17397;,
-0.60786; 0.78183; 0.13874;,
-0.42301; 0.90097; 0.09655;,
-0.21694; 0.97493; 0.04952;,
-0.00000; 1.00000; 0.00000;,
 0.00000;-1.00000; 0.00000;,
-0.17397;-0.97493; 0.13874;,
-0.33922;-0.90097; 0.27052;,
-0.48746;-0.78183; 0.38874;,
-0.61126;-0.62349; 0.48746;,
-0.70441;-0.43388; 0.56174;,
-0.76223;-0.22252; 0.60786;,
-0.78183;-0.00000; 0.62349;,
-0.76223; 0.22252; 0.60786;,
-0.70441; 0.43388; 0.56174;,
-0.61126; 0.62349; 0.48746;,
-0.48746; 0.78183; 0.38874;,
-0.33922; 0.90097; 0.27052;,
-0.17397; 0.97493; 0.13874;,
-0.00000; 1.00000; 0.00000;,
 0.00000;-1.00000; 0.00000;,
-0.09655;-0.97493; 0.20048;,
-0.18826;-0.90097; 0.39092;,
-0.27052;-0.78183; 0.56174;,
-0.33922;-0.62349; 0.70441;,
-0.39092;-0.43388; 0.81174;,
-0.42301;-0.22252; 0.87838;,
-0.43388;-0.00000; 0.90097;,
-0.42301; 0.22252; 0.87838;,
-0.39092; 0.43388; 0.81174;,
-0.33922; 0.62349; 0.70441;,
-0.27052; 0.78183; 0.56174;,
-0.18826; 0.90097; 0.39092;,
-0.09655; 0.97493; 0.20048;,
-0.00000; 1.00000; 0.00000;,
 0.00000;-1.00000; 0.00000;,
-0.00000;-0.97493; 0.22252;,
-0.00000;-0.90097; 0.43388;,
-0.00000;-0.78183; 0.62349;,
-0.00000;-0.62349; 0.78183;,
-0.00000;-0.43388; 0.90097;,
-0.00000;-0.22252; 0.97493;,
-0.00000;-0.00000; 1.00000;,
-0.00000; 0.22252; 0.97493;,
-0.00000; 0.43388; 0.90097;,
-0.00000; 0.62349; 0.78183;,
-0.00000; 0.78183; 0.62349;,
-0.00000; 0.90097; 0.43388;,
-0.00000; 0.97493; 0.22252;,
-0.00000; 1.00000; 0.00000;,
 0.00000;-1.00000; 0.00000;,
 0.09655;-0.97493; 0.20048;,
 0.18826;-0.90097; 0.39092;,
 0.27052;-0.78183; 0.56174;,
 0.33922;-0.62349; 0.70441;,
 0.39092;-0.43388; 0.81174;,
 0.42301;-0.22252; 0.87838;,
 0.43388;-0.00000; 0.90097;,
 0.42301; 0.22252; 0.87838;,
 0.39092; 0.43388; 0.81174;,
 0.33922; 0.62349; 0.70441;,
 0.27052; 0.78183; 0.56174;,
 0.18826; 0.90097; 0.39092;,
 0.09655; 0.97493; 0.20048;,
 0.00000; 1.00000; 0.00000;,
 0.00000;-1.00000; 0.00000;,
 0.17397;-0.97493; 0.13874;,
 0.33922;-0.90097; 0.27052;,
 0.48746;-0.78183; 0.38874;,
 0.61126;-0.62349; 0.48746;,
 0.70441;-0.43388; 0.56174;,
 0.76223;-0.22252; 0.60786;,
 0.78183;-0.00000; 0.62349;,
 0.76223; 0.22252; 0.60786;,
 0.70441; 0.43388; 0.56174;,
 0.61126; 0.62349; 0.48746;,
 0.48746; 0.78183; 0.38874;,
 0.33922; 0.90097; 0.27052;,
 0.17397; 0.97493; 0.13874;,
 0.00000; 1.00000; 0.00000;,
 0.00000;-1.00000; 0.00000;,
 0.21694;-0.97493; 0.04952;,
 0.42301;-0.90097; 0.09655;,
 0.60786;-0.78183; 0.13874;,
 0.76223;-0.62349; 0.17397;,
 0.87838;-0.43388; 0.20048;,
 0.95048;-0.22252; 0.21694;,
 0.97493;-0.00000; 0.22252;,
 0.95048; 0.22252; 0.21694;,
 0.87838; 0.43388; 0.20048;,
 0.76223; 0.62349; 0.17397;,
 0.60786; 0.78183; 0.13874;,
 0.42301; 0.90097; 0.09655;,
 0.21694; 0.97493; 0.04952;,
 0.00000; 1.00000; 0.00000;,
 0.00000;-1.00000; 0.00000;,
 0.21694;-0.97493;-0.04952;,
 0.42301;-0.90097;-0.09655;,
 0.60786;-0.78183;-0.13874;,
 0.76223;-0.62349;-0.17397;,
 0.87838;-0.43388;-0.20048;,
 0.95048;-0.22252;-0.21694;,
 0.97493;-0.00000;-0.22252;,
 0.95048; 0.22252;-0.21694;,
 0.87838; 0.43388;-0.20048;,
 0.76223; 0.62349;-0.17397;,
 0.60786; 0.78183;-0.13874;,
 0.42301; 0.90097;-0.09655;,
 0.21694; 0.97493;-0.04952;,
 0.00000; 1.00000;-0.00000;,
 0.00000;-1.00000; 0.00000;,
 0.17397;-0.97493;-0.13874;,
 0.33922;-0.90097;-0.27052;,
 0.48746;-0.78183;-0.38874;,
 0.61126;-0.62349;-0.48746;,
 0.70441;-0.43388;-0.56174;,
 0.76223;-0.22252;-0.60786;,
 0.78183;-0.00000;-0.62349;,
 0.76223; 0.22252;-0.60786;,
 0.70441; 0.43388;-0.56174;,
 0.61126; 0.62349;-0.48746;,
 0.48746; 0.78183;-0.38874;,
 0.33922; 0.90097;-0.27052;,
 0.17397; 0.97493;-0.13874;,
 0.00000; 1.00000;-0.00000;,
 0.00000;-1.00000; 0.00000;,
 0.09655;-0.97493;-0.20048;,
 0.18826;-0.90097;-0.39092;,
 0.27052;-0.78183;-0.56174;,
 0.33922;-0.62349;-0.70441;,
 0.39092;-0.43388;-0.81174;,
 0.42301;-0.22252;-0.87838;,
 0.43388;-0.00000;-0.90097;,
 0.42301; 0.22252;-0.87838;,
 0.39092; 0.43388;-0.81174;,
 0.33922; 0.62349;-0.70441;,
 0.27052; 0.78183;-0.56174;,
 0.18826; 0.90097;-0.39092;,
 0.09655; 0.97493;-0.20048;,
 0.00000; 1.00000;-0.00000;,
 0.00000;-1.00000; 0.00000;,
 0.00000;-0.97493;-0.22252;,
 0.00000;-0.90097;-0.43388;,
 0.00000;-0.78183;-0.62349;,
 0.00000;-0.62349;-0.78183;,
 0.00000;-0.43388;-0.90097;,
 0.00000;-0.22252;-0.97493;,
 0.00000;-0.00000;-1.00000;,
 0.00000; 0.22252;-0.97493;,
 0.00000; 0.43388;-0.90097;,
 0.00000; 0.62349;-0.78183;,
 0.00000; 0.78183;-0.62349;,
 0.00000; 0.90097;-0.43388;,
 0.00000; 0.97493;-0.22252;,
 0.00000; 1.00000;-0.00000;;

392;
3;0,15,1;,
3;1,15,16;,
3;1,16,2;,
3;2,16,17;,
3;2,17,3;,
3;3,17,18;,
3;3,18,4;,
3;4,18,19;,
3;4,19,5;,
3;5,19,20;,
3;5,20,6;,
3;6,20,21;,
3;6,21,7;,
3;7,21,22;,
3;7,22,8;,
3;8,22,23;,
3;8,23,9;,
3;9,23,24;,
3;9,24,10;,
3;10,24,25;,
3;10,25,11;,
3;11,25,26;,
3;11,26,12;,
3;12,26,27;,
3;12,27,13;,
3;13,27,28;,
3;13,28,14;,
3;14,28,29;,
3;15,30,16;,
3;16,30,31;,
3;16,31,17;,
3;17,31,32;,
3;17,32,18;,
3;18,32,33;,
3;18,33,19;,
3;19,33,34;,
3;19,34,20;,
3;20,34,35;,
3;20,35,21;,
3;21,35,36;,
3;21,36,22;,
3;22,36,37;,
3;22,37,23;,
3;23,37,38;,
3;23,38,24;,
3;24,38,39;,
3;24,39,25;,
3;25,39,40;,
3;25,40,26;,
3;26,40,41;,
3;26,41,27;,
3;27,41,42;,
3;27,42,28;,
3;28,42,43;,
3;28,43,29;,
3;29,43,44;,
3;30,45,31;,
3;31,45,46;,
3;31,46,32;,
3;32,46,47;,
3;32,47,33;,
3;33,47,48;,
3;33,48,34;,
3;34,48,49;,
3;34,49,35;,
3;35,49,50;,
3;35,50,36;,
3;36,50,51;,
3;36,51,37;,
3;37,51,52;,
3;37,52,38;,
3;38,52,53;,
3;38,53,39;,
3;39,53,54;,
3;39,54,40;,
3;40,54,55;,
3;40,55,41;,
3;41,55,56;,
3;41,56,42;,
3;42,56,57;,
3;42,57,43;,
3;43,57,58;,
3;43,58,44;,
3;44,58,59;,
3;45,60,46;,
3;46,60,61;,
3;46,61,47;,
3;47,61,62;,
3;47,62,48;,
3;48,62,63;,
3;48,63,49;,
3;49,63,64;,
3;49,64,50;,
3;50,64,65;,
3;50,65,51;,
3;51,65,66;,
3;51,66,52;,
3;52,66,67;,
3;52,67,53;,
3;53,67,68;,
3;53,68,54;,
3;54,68,69;,
3;54,69,55;,
3;55,69,70;,
3;55,70,56;,
3;56,70,71;,
3;56,71,57;,
3;57,71,72;,
3;57,72,58;,
3;58,72,73;,
3;58,73,59;,
3;59,73,74;,
3;60,75,61;,
3;61,75,76;,
3;61,76,62;,
3;62,76,77;,
3;62,77,63;,
3;63,77,78;,
3;63,78,64;,
3;64,78,79;,
3;64,79,65;,
3;65,79,80;,
3;65,80,66;,
3;66,80,81;,
3;66,81,67;,
3;67,81,82;,
3;67,82,68;,
3;68,82,83;,
3;68,83,69;,
3;69,83,84;,
3;69,84,70;,
3;70,84,85;,
3;70,85,71;,
3;71,85,86;,
3;71,86,72;,
3;72,86,87;,
3;72,87,73;,
3;73,87,88;,
3;73,88,74;,
3;74,88,89;,
3;75,90,76;,
3;76,90,91;,
3;76,91,77;,
3;77,91,92;,
3;77,92,78;,
3;78,92,93;,
3;78,93,79;,
3;79,93,94;,
3;79,94,80;,
3;80,94,95;,
3;80,95,81;,
3;81,95,96;,
3;81,96,82;,
3;82,96,97;,
3;82,97,83;,
3;83,97,98;,
3;83,98,84;,
3;84,98,99;,
3;84,99,85;,
3;85,99,100;,
3;85,100,86;,
3;86,100,101;,
3;86,101,87;,
3;87,101,102;,
3;87,102,88;,
3;88,102,103;,
3;88,103,89;,
3;89,103,104;,
3;90,105,91;,
3;91,105,106;,
3;91,106,92;,
3;92,106,107;,
3;92,107,93;,
3;93,107,108;,
3;93,108,94;,
3;94,108,109;,
3;94,109,95;,
3;95,109,110;,
3;95,110,96;,
3;96,110,111;,
3;96,111,97;,
3;97,111,112;,
3;97,112,98;,
3;98,112,113;,
3;98,113,99;,
3;99,113,114;,
3;99,114,100;,
3;100,114,115;,
3;100,115,101;,
3;101,115,116;,
3;101,116,102;,
3;102,116,117;,
3;102,117,103;,
3;103,117,118;,
3;103,118,104;,
3;104,118,119;,
3;105,120,106;,
3;106,120,121;,
3;106,121,107;,
3;107,121,122;,
3;107,122,108;,
3;108,122,123;,
3;108,123,109;,
3;109,123,124;,
3;109,124,110;,
3;110,124,125;,
3;110,125,111;,
3;111,125,126;,
3;111,126,112;,
3;112,126,127;,
3;112,127,113;,
3;113,127,128;,
3;113,128,114;,
3;114,128,129;,
3;114,129,115;,
3;115,129,130;,
3;115,130,116;,
3;116,130,131;,
3;116,131,117;,
3;117,131,132;,
3;117,132,118;,
3;118,132,133;,
3;118,133,119;,
3;119,133,134;,
3;120,135,121;,
3;121,135,136;,
3;121,136,122;,
3;122,136,137;,
3;122,137,123;,
3;123,137,138;,
3;123,138,124;,
3;124,138,139;,
3;124,139,125;,
3;125,139,140;,
3;125,140,126;,
3;126,140,141;,
3;126,141,127;,
3;127,141,142;,
3;127,142,128;,
3;128,142,143;,
3;128,143,129;,
3;129,143,144;,
3;129,144,130;,
3;130,144,145;,
3;130,145,131;,
3;131,145,146;,
3;131,146,132;,
3;132,146,147;,
3;132,147,133;,
3;133,147,148;,
3;133,148,134;,
3;134,148,149;,
3;135,150,136;,
3;136,150,151;,
3;136,151,137;,
3;137,151,152;,
3;137,152,138;,
3;138,152,153;,
3;138,153,139;,
3;139,153,154;,
3;139,154,140;,
3;140,154,155;,
3;140,155,141;,
3;141,155,156;,
3;141,156,142;,
3;142,156,157;,
3;142,157,143;,
3;143,157,158;,
3;143,158,144;,
3;144,158,159;,
3;144,159,145;,
3;145,159,160;,
3;145,160,146;,
3;146,160,161;,
3;146,161,147;,
3;147,161,162;,
3;147,162,148;,
3;148,162,163;,
3;148,163,149;,
3;149,163,164;,
3;150,165,151;,
3;151,165,166;,
3;151,166,152;,
3;152,166,167;,
3;152,167,153;,
3;153,167,168;,
3;153,168,154;,
3;154,168,169;,
3;154,169,155;,
3;155,169,170;,
3;155,170,156;,
3;156,170,171;,
3;156,171,157;,
3;157,171,172;,
3;157,172,158;,
3;158,172,173;,
3;158,173,159;,
3;159,173,174;,
3;159,174,160;,
3;160,174,175;,
3;160,175,161;,
3;161,175,176;,
3;161,176,162;,
3;162,176,177;,
3;162,177,163;,
3;163,177,178;,
3;163,178,164;,
3;164,178,179;,
3;165,180,166;,
3;166,180,181;,
3;166,181,167;,
3;167,181,182;,
3;167,182,168;,
3;168,182,183;,
3;168,183,169;,
3;169,183,184;,
3;169,184,170;,
3;170,184,185;,
3;170,185,171;,
3;171,185,186;,
3;171,186,172;,
3;172,186,187;,
3;172,187,173;,
3;173,187,188;,
3;173,188,174;,
3;174,188,189;,
3;174,189,175;,
3;175,189,190;,
3;175,190,176;,
3;176,190,191;,
3;176,191,177;,
3;177,191,192;,
3;177,192,178;,
3;178,192,193;,
3;178,193,179;,
3;179,193,194;,
3;180,195,181;,
3;181,195,196;,
3;181,196,182;,
3;182,196,197;,
3;182,197,183;,
3;183,197,198;,
3;183,198,184;,
3;184,198,199;,
3;184,199,185;,
3;185,199,200;,
3;185,200,186;,
3;186,200,201;,
3;186,201,187;,
3;187,201,202;,
3;187,202,188;,
3;188,202,203;,
3;188,203,189;,
3;189,203,204;,
3;189,204,190;,
3;190,204,205;,
3;190,205,191;,
3;191,205,206;,
3;191,206,192;,
3;192,206,207;,
3;192,207,193;,
3;193,207,208;,
3;193,208,194;,
3;194,208,209;,
3;195,210,196;,
3;196,210,211;,
3;196,211,197;,
3;197,211,212;,
3;197,212,198;,
3;198,212,213;,
3;198,213,199;,
3;199,213,214;,
3;199,214,200;,
3;200,214,215;,
3;200,215,201;,
3;201,215,216;,
3;201,216,202;,
3;202,216,217;,
3;202,217,203;,
3;203,217,218;,
3;203,218,204;,
3;204,218,219;,
3;204,219,205;,
3;205,219,220;,
3;205,220,206;,
3;206,220,221;,
3;206,221,207;,
3;207,221,222;,
3;207,222,208;,
3;208,222,223;,
3;208,223,209;,
3;209,223,224;;
 MeshMaterialList {
  1;
  1;
  0;;
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
   225;
    0.00000;-1.00000; 0.00000;,
    0.00000;-0.97493;-0.22252;,
    0.00000;-0.90097;-0.43388;,
    0.00000;-0.78183;-0.62349;,
    0.00000;-0.62349;-0.78183;,
    0.00000;-0.43388;-0.90097;,
    0.00000;-0.22252;-0.97493;,
    0.00000;-0.00000;-1.00000;,
    0.00000; 0.22252;-0.97493;,
    0.00000; 0.43388;-0.90097;,
    0.00000; 0.62349;-0.78183;,
    0.00000; 0.78183;-0.62349;,
    0.00000; 0.90097;-0.43388;,
    0.00000; 0.97493;-0.22252;,
    0.00000; 1.00000;-0.00000;,
    0.00000;-1.00000; 0.00000;,
   -0.09655;-0.97493;-0.20048;,
   -0.18826;-0.90097;-0.39092;,
   -0.27052;-0.78183;-0.56174;,
   -0.33922;-0.62349;-0.70441;,
   -0.39092;-0.43388;-0.81174;,
   -0.42301;-0.22252;-0.87838;,
   -0.43388;-0.00000;-0.90097;,
   -0.42301; 0.22252;-0.87838;,
   -0.39092; 0.43388;-0.81174;,
   -0.33922; 0.62349;-0.70441;,
   -0.27052; 0.78183;-0.56174;,
   -0.18826; 0.90097;-0.39092;,
   -0.09655; 0.97493;-0.20048;,
   -0.00000; 1.00000;-0.00000;,
    0.00000;-1.00000; 0.00000;,
   -0.17397;-0.97493;-0.13874;,
   -0.33922;-0.90097;-0.27052;,
   -0.48746;-0.78183;-0.38874;,
   -0.61126;-0.62349;-0.48746;,
   -0.70441;-0.43388;-0.56174;,
   -0.76223;-0.22252;-0.60786;,
   -0.78183;-0.00000;-0.62349;,
   -0.76223; 0.22252;-0.60786;,
   -0.70441; 0.43388;-0.56174;,
   -0.61126; 0.62349;-0.48746;,
   -0.48746; 0.78183;-0.38874;,
   -0.33922; 0.90097;-0.27052;,
   -0.17397; 0.97493;-0.13874;,
   -0.00000; 1.00000;-0.00000;,
    0.00000;-1.00000; 0.00000;,
   -0.21694;-0.97493;-0.04952;,
   -0.42301;-0.90097;-0.09655;,
   -0.60786;-0.78183;-0.13874;,
   -0.76223;-0.62349;-0.17397;,
   -0.87838;-0.43388;-0.20048;,
   -0.95048;-0.22252;-0.21694;,
   -0.97493;-0.00000;-0.22252;,
   -0.95048; 0.22252;-0.21694;,
   -0.87838; 0.43388;-0.20048;,
   -0.76223; 0.62349;-0.17397;,
   -0.60786; 0.78183;-0.13874;,
   -0.42301; 0.90097;-0.09655;,
   -0.21694; 0.97493;-0.04952;,
   -0.00000; 1.00000;-0.00000;,
    0.00000;-1.00000; 0.00000;,
   -0.21694;-0.97493; 0.04952;,
   -0.42301;-0.90097; 0.09655;,
   -0.60786;-0.78183; 0.13874;,
   -0.76223;-0.62349; 0.17397;,
   -0.87838;-0.43388; 0.20048;,
   -0.95048;-0.22252; 0.21694;,
   -0.97493;-0.00000; 0.22252;,
   -0.95048; 0.22252; 0.21694;,
   -0.87838; 0.43388; 0.20048;,
   -0.76223; 0.62349; 0.17397;,
   -0.60786; 0.78183; 0.13874;,
   -0.42301; 0.90097; 0.09655;,
   -0.21694; 0.97493; 0.04952;,
   -0.00000; 1.00000; 0.00000;,
    0.00000;-1.00000; 0.00000;,
   -0.17397;-0.97493; 0.13874;,
   -0.33922;-0.90097; 0.27052;,
   -0.48746;-0.78183; 0.38874;,
   -0.61126;-0.62349; 0.48746;,
   -0.70441;-0.43388; 0.56174;,
   -0.76223;-0.22252; 0.60786;,
   -0.78183;-0.00000; 0.62349;,
   -0.76223; 0.22252; 0.60786;,
   -0.70441; 0.43388; 0.56174;,
   -0.61126; 0.62349; 0.48746;,
   -0.48746; 0.78183; 0.38874;,
   -0.33922; 0.90097; 0.27052;,
   -0.17397; 0.97493; 0.13874;,
   -0.00000; 1.00000; 0.00000;,
    0.00000;-1.00000; 0.00000;,
   -0.09655;-0.97493; 0.20048;,
   -0.18826;-0.90097; 0.39092;,
   -0.27052;-0.78183; 0.56174;,
   -0.33922;-0.62349; 0.70441;,
   -0.39092;-0.43388; 0.81174;,
   -0.42301;-0.22252; 0.87838;,
   -0.43388;-0.00000; 0.90097;,
   -0.42301; 0.22252; 0.87838;,
   -0.39092; 0.43388; 0.81174;,
   -0.33922; 0.62349; 0.70441;,
   -0.27052; 0.78183; 0.56174;,
   -0.18826; 0.90097; 0.39092;,
   -0.09655; 0.97493; 0.20048;,
   -0.00000; 1.00000; 0.00000;,
    0.00000;-1.00000; 0.00000;,
   -0.00000;-0.97493; 0.22252;,
   -0.00000;-0.90097; 0.43388;,
   -0.00000;-0.78183; 0.62349;,
   -0.00000;-0.62349; 0.78183;,
   -0.00000;-0.43388; 0.90097;,
   -0.00000;-0.22252; 0.97493;,
   -0.00000;-0.00000; 1.00000;,
   -0.00000; 0.22252; 0.97493;,
   -0.00000; 0.43388; 0.90097;,
   -0.00000; 0.62349; 0.78183;,
   -0.00000; 0.78183; 0.62349;,
   -0.00000; 0.90097; 0.43388;,
   -0.00000; 0.97493; 0.22252;,
   -0.00000; 1.00000; 0.00000;,
    0.00000;-1.00000; 0.00000;,
    0.09655;-0.97493; 0.20048;,
    0.18826;-0.90097; 0.39092;,
    0.27052;-0.78183; 0.56174;,
    0.33922;-0.62349; 0.70441;,
    0.39092;-0.43388; 0.81174;,
    0.42301;-0.22252; 0.87838;,
    0.43388;-0.00000; 0.90097;,
    0.42301; 0.22252; 0.87838;,
    0.39092; 0.43388; 0.81174;,
    0.33922; 0.62349; 0.70441;,
    0.27052; 0.78183; 0.56174;,
    0.18826; 0.90097; 0.39092;,
    0.09655; 0.97493; 0.20048;,
    0.00000; 1.00000; 0.00000;,
    0.00000;-1.00000; 0.00000;,
    0.17397;-0.97493; 0.13874;,
    0.33922;-0.90097; 0.27052;,
    0.48746;-0.78183; 0.38874;,
    0.61126;-0.62349; 0.48746;,
    0.70441;-0.43388; 0.56174;,
    0.76223;-0.22252; 0.60786;,
    0.78183;-0.00000; 0.62349;,
    0.76223; 0.22252; 0.60786;,
    0.70441; 0.43388; 0.56174;,
    0.61126; 0.62349; 0.48746;,
    0.48746; 0.78183; 0.38874;,
    0.33922; 0.90097; 0.27052;,
    0.17397; 0.97493; 0.13874;,
    0.00000; 1.00000; 0.00000;,
    0.00000;-1.00000; 0.00000;,
    0.21694;-0.97493; 0.04952;,
    0.42301;-0.90097; 0.09655;,
    0.60786;-0.78183; 0.13874;,
    0.76223;-0.62349; 0.17397;,
    0.87838;-0.43388; 0.20048;,
    0.95048;-0.22252; 0.21694;,
    0.97493;-0.00000; 0.22252;,
    0.95048; 0.22252; 0.21694;,
    0.87838; 0.43388; 0.20048;,
    0.76223; 0.62349; 0.17397;,
    0.60786; 0.78183; 0.13874;,
    0.42301; 0.90097; 0.09655;,
    0.21694; 0.97493; 0.04952;,
    0.00000; 1.00000; 0.00000;,
    0.00000;-1.00000; 0.00000;,
    0.21694;-0.97493;-0.04952;,
    0.42301;-0.90097;-0.09655;,
    0.60786;-0.78183;-0.13874;,
    0.76223;-0.62349;-0.17397;,
    0.87838;-0.43388;-0.20048;,
    0.95048;-0.22252;-0.21694;,
    0.97493;-0.00000;-0.22252;,
    0.95048; 0.22252;-0.21694;,
    0.87838; 0.43388;-0.20048;,
    0.76223; 0.62349;-0.17397;,
    0.60786; 0.78183;-0.13874;,
    0.42301; 0.90097;-0.09655;,
    0.21694; 0.97493;-0.04952;,
    0.00000; 1.00000;-0.00000;,
    0.00000;-1.00000; 0.00000;,
    0.17397;-0.97493;-0.13874;,
    0.33922;-0.90097;-0.27052;,
    0.48746;-0.78183;-0.38874;,
    0.61126;-0.62349;-0.48746;,
    0.70441;-0.43388;-0.56174;,
    0.76223;-0.22252;-0.60786;,
    0.78183;-0.00000;-0.62349;,
    0.76223; 0.22252;-0.60786;,
    0.70441; 0.43388;-0.56174;,
    0.61126; 0.62349;-0.48746;,
    0.48746; 0.78183;-0.38874;,
    0.33922; 0.90097;-0.27052;,
    0.17397; 0.97493;-0.13874;,
    0.00000; 1.00000;-0.00000;,
    0.00000;-1.00000; 0.00000;,
    0.09655;-0.97493;-0.20048;,
    0.18826;-0.90097;-0.39092;,
    0.27052;-0.78183;-0.56174;,
    0.33922;-0.62349;-0.70441;,
    0.39092;-0.43388;-0.81174;,
    0.42301;-0.22252;-0.87838;,
    0.43388;-0.00000;-0.90097;,
    0.42301; 0.22252;-0.87838;,
    0.39092; 0.43388;-0.81174;,
    0.33922; 0.62349;-0.70441;,
    0.27052; 0.78183;-0.56174;,
    0.18826; 0.90097;-0.39092;,
    0.09655; 0.97493;-0.20048;,
    0.00000; 1.00000;-0.00000;,
    0.00000;-1.00000; 0.00000;,
    0.00000;-0.97493;-0.22252;,
    0.00000;-0.90097;-0.43388;,
    0.00000;-0.78183;-0.62349;,
    0.00000;-0.62349;-0.78183;,
    0.00000;-0.43388;-0.90097;,
    0.00000;-0.22252;-0.97493;,
    0.00000;-0.00000;-1.00000;,
    0.00000; 0.22252;-0.97493;,
    0.00000; 0.43388;-0.90097;,
    0.00000; 0.62349;-0.78183;,
    0.00000; 0.78183;-0.62349;,
    0.00000; 0.90097;-0.43388;,
    0.00000; 0.97493;-0.22252;,
    0.00000; 1.00000;-0.00000;;

   392;
   3;0,15,1;,
   3;1,15,16;,
   3;1,16,2;,
   3;2,16,17;,
   3;2,17,3;,
   3;3,17,18;,
   3;3,18,4;,
   3;4,18,19;,
   3;4,19,5;,
   3;5,19,20;,
   3;5,20,6;,
   3;6,20,21;,
   3;6,21,7;,
   3;7,21,22;,
   3;7,22,8;,
   3;8,22,23;,
   3;8,23,9;,
   3;9,23,24;,
   3;9,24,10;,
   3;10,24,25;,
   3;10,25,11;,
   3;11,25,26;,
   3;11,26,12;,
   3;12,26,27;,
   3;12,27,13;,
   3;13,27,28;,
   3;13,28,14;,
   3;14,28,29;,
   3;15,30,16;,
   3;16,30,31;,
   3;16,31,17;,
   3;17,31,32;,
   3;17,32,18;,
   3;18,32,33;,
   3;18,33,19;,
   3;19,33,34;,
   3;19,34,20;,
   3;20,34,35;,
   3;20,35,21;,
   3;21,35,36;,
   3;21,36,22;,
   3;22,36,37;,
   3;22,37,23;,
   3;23,37,38;,
   3;23,38,24;,
   3;24,38,39;,
   3;24,39,25;,
   3;25,39,40;,
   3;25,40,26;,
   3;26,40,41;,
   3;26,41,27;,
   3;27,41,42;,
   3;27,42,28;,
   3;28,42,43;,
   3;28,43,29;,
   3;29,43,44;,
   3;30,45,31;,
   3;31,45,46;,
   3;31,46,32;,
   3;32,46,47;,
   3;32,47,33;,
   3;33,47,48;,
   3;33,48,34;,
   3;34,48,49;,
   3;34,49,35;,
   3;35,49,50;,
   3;35,50,36;,
   3;36,50,51;,
   3;36,51,37;,
   3;37,51,52;,
   3;37,52,38;,
   3;38,52,53;,
   3;38,53,39;,
   3;39,53,54;,
   3;39,54,40;,
   3;40,54,55;,
   3;40,55,41;,
   3;41,55,56;,
   3;41,56,42;,
   3;42,56,57;,
   3;42,57,43;,
   3;43,57,58;,
   3;43,58,44;,
   3;44,58,59;,
   3;45,60,46;,
   3;46,60,61;,
   3;46,61,47;,
   3;47,61,62;,
   3;47,62,48;,
   3;48,62,63;,
   3;48,63,49;,
   3;49,63,64;,
   3;49,64,50;,
   3;50,64,65;,
   3;50,65,51;,
   3;51,65,66;,
   3;51,66,52;,
   3;52,66,67;,
   3;52,67,53;,
   3;53,67,68;,
   3;53,68,54;,
   3;54,68,69;,
   3;54,69,55;,
   3;55,69,70;,
   3;55,70,56;,
   3;56,70,71;,
   3;56,71,57;,
   3;57,71,72;,
   3;57,72,58;,
   3;58,72,73;,
   3;58,73,59;,
   3;59,73,74;,
   3;60,75,61;,
   3;61,75,76;,
   3;61,76,62;,
   3;62,76,77;,
   3;62,77,63;,
   3;63,77,78;,
   3;63,78,64;,
   3;64,78,79;,
   3;64,79,65;,
   3;65,79,80;,
   3;65,80,66;,
   3;66,80,81;,
   3;66,81,67;,
   3;67,81,82;,
   3;67,82,68;,
   3;68,82,83;,
   3;68,83,69;,
   3;69,83,84;,
   3;69,84,70;,
   3;70,84,85;,
   3;70,85,71;,
   3;71,85,86;,
   3;71,86,72;,
   3;72,86,87;,
   3;72,87,73;,
   3;73,87,88;,
   3;73,88,74;,
   3;74,88,89;,
   3;75,90,76;,
   3;76,90,91;,
   3;76,91,77;,
   3;77,91,92;,
   3;77,92,78;,
   3;78,92,93;,
   3;78,93,79;,
   3;79,93,94;,
   3;79,94,80;,
   3;80,94,95;,
   3;80,95,81;,
   3;81,95,96;,
   3;81,96,82;,
   3;82,96,97;,
   3;82,97,83;,
   3;83,97,98;,
   3;83,98,84;,
   3;84,98,99;,
   3;84,99,85;,
   3;85,99,100;,
   3;85,100,86;,
   3;86,100,101;,
   3;86,101,87;,
   3;87,101,102;,
   3;87,102,88;,
   3;88,102,103;,
   3;88,103,89;,
   3;89,103,104;,
   3;90,105,91;,
   3;91,105,106;,
   3;91,106,92;,
   3;92,106,107;,
   3;92,107,93;,
   3;93,107,108;,
   3;93,108,94;,
   3;94,108,109;,
   3;94,109,95;,
   3;95,109,110;,
   3;95,110,96;,
   3;96,110,111;,
   3;96,111,97;,
   3;97,111,112;,
   3;97,112,98;,
   3;98,112,113;,
   3;98,113,99;,
   3;99,113,114;,
   3;99,114,100;,
   3;100,114,115;,
   3;100,115,101;,
   3;101,115,116;,
   3;101,116,102;,
   3;102,116,117;,
   3;102,117,103;,
   3;103,117,118;,
   3;103,118,104;,
   3;104,118,119;,
   3;105,120,106;,
   3;106,120,121;,
   3;106,121,107;,
   3;107,121,122;,
   3;107,122,108;,
   3;108,122,123;,
   3;108,123,109;,
   3;109,123,124;,
   3;109,124,110;,
   3;110,124,125;,
   3;110,125,111;,
   3;111,125,126;,
   3;111,126,112;,
   3;112,126,127;,
   3;112,127,113;,
   3;113,127,128;,
   3;113,128,114;,
   3;114,128,129;,
   3;114,129,115;,
   3;115,129,130;,
   3;115,130,116;,
   3;116,130,131;,
   3;116,131,117;,
   3;117,131,132;,
   3;117,132,118;,
   3;118,132,133;,
   3;118,133,119;,
   3;119,133,134;,
   3;120,135,121;,
   3;121,135,136;,
   3;121,136,122;,
   3;122,136,137;,
   3;122,137,123;,
   3;123,137,138;,
   3;123,138,124;,
   3;124,138,139;,
   3;124,139,125;,
   3;125,139,140;,
   3;125,140,126;,
   3;126,140,141;,
   3;126,141,127;,
   3;127,141,142;,
   3;127,142,128;,
   3;128,142,143;,
   3;128,143,129;,
   3;129,143,144;,
   3;129,144,130;,
   3;130,144,145;,
   3;130,145,131;,
   3;131,145,146;,
   3;131,146,132;,
   3;132,146,147;,
   3;132,147,133;,
   3;133,147,148;,
   3;133,148,134;,
   3;134,148,149;,
   3;135,150,136;,
   3;136,150,151;,
   3;136,151,137;,
   3;137,151,152;,
   3;137,152,138;,
   3;138,152,153;,
   3;138,153,139;,
   3;139,153,154;,
   3;139,154,140;,
   3;140,154,155;,
   3;140,155,141;,
   3;141,155,156;,
   3;141,156,142;,
   3;142,156,157;,
   3;142,157,143;,
   3;143,157,158;,
   3;143,158,144;,
   3;144,158,159;,
   3;144,159,145;,
   3;145,159,160;,
   3;145,160,146;,
   3;146,160,161;,
   3;146,161,147;,
   3;147,161,162;,
   3;147,162,148;,
   3;148,162,163;,
   3;148,163,149;,
   3;149,163,164;,
   3;150,165,151;,
   3;151,165,166;,
   3;151,166,152;,
   3;152,166,167;,
   3;152,167,153;,
   3;153,167,168;,
   3;153,168,154;,
   3;154,168,169;,
   3;154,169,155;,
   3;155,169,170;,
   3;155,170,156;,
   3;156,170,171;,
   3;156,171,157;,
   3;157,171,172;,
   3;157,172,158;,
   3;158,172,173;,
   3;158,173,159;,
   3;159,173,174;,
   3;159,174,160;,
   3;160,174,175;,
   3;160,175,161;,
   3;161,175,176;,
   3;161,176,162;,
   3;162,176,177;,
   3;162,177,163;,
   3;163,177,178;,
   3;163,178,164;,
   3;164,178,179;,
   3;165,180,166;,
   3;166,180,181;,
   3;166,181,167;,
   3;167,181,182;,
   3;167,182,168;,
   3;168,182,183;,
   3;168,183,169;,
   3;169,183,184;,
   3;169,184,170;,
   3;170,184,185;,
   3;170,185,171;,
   3;171,185,186;,
   3;171,186,172;,
   3;172,186,187;,
   3;172,187,173;,
   3;173,187,188;,
   3;173,188,174;,
   3;174,188,189;,
   3;174,189,175;,
   3;175,189,190;,
   3;175,190,176;,
   3;176,190,191;,
   3;176,191,177;,
   3;177,191,192;,
   3;177,192,178;,
   3;178,192,193;,
   3;178,193,179;,
   3;179,193,194;,
   3;180,195,181;,
   3;181,195,196;,
   3;181,196,182;,
   3;182,196,197;,
   3;182,197,183;,
   3;183,197,198;,
   3;183,198,184;,
   3;184,198,199;,
   3;184,199,185;,
   3;185,199,200;,
   3;185,200,186;,
   3;186,200,201;,
   3;186,201,187;,
   3;187,201,202;,
   3;187,202,188;,
   3;188,202,203;,
   3;188,203,189;,
   3;189,203,204;,
   3;189,204,190;,
   3;190,204,205;,
   3;190,205,191;,
   3;191,205,206;,
   3;191,206,192;,
   3;192,206,207;,
   3;192,207,193;,
   3;193,207,208;,
   3;193,208,194;,
   3;194,208,209;,
   3;195,210,196;,
   3;196,210,211;,
   3;196,211,197;,
   3;197,211,212;,
   3;197,212,198;,
   3;198,212,213;,
   3;198,213,199;,
   3;199,213,214;,
   3;199,214,200;,
   3;200,214,215;,
   3;200,215,201;,
   3;201,215,216;,
   3;201,216,202;,
   3;202,216,217;,
   3;202,217,203;,
   3;203,217,218;,
   3;203,218,204;,
   3;204,218,219;,
   3;204,219,205;,
   3;205,219,220;,
   3;205,220,206;,
   3;206,220,221;,
   3;206,221,207;,
   3;207,221,222;,
   3;207,222,208;,
   3;208,222,223;,
   3;208,223,209;,
   3;209,223,224;;
}
 MeshTextureCoords {
  225;
 1.00000; 0.00000;,
 1.00000; 0.07143;,
 1.00000; 0.14286;,
 1.00000; 0.21429;,
 1.00000; 0.28571;,
 1.00000; 0.35714;,
 1.00000; 0.42857;,
 1.00000; 0.50000;,
 1.00000; 0.57143;,
 1.00000; 0.64286;,
 1.00000; 0.71429;,
 1.00000; 0.78571;,
 1.00000; 0.85714;,
 1.00000; 0.92857;,
 1.00000; 1.00000;,
 0.92857; 0.00000;,
 0.92857; 0.07143;,
 0.92857; 0.14286;,
 0.92857; 0.21429;,
 0.92857; 0.28571;,
 0.92857; 0.35714;,
 0.92857; 0.42857;,
 0.92857; 0.50000;,
 0.92857; 0.57143;,
 0.92857; 0.64286;,
 0.92857; 0.71429;,
 0.92857; 0.78571;,
 0.92857; 0.85714;,
 0.92857; 0.92857;,
 0.92857; 1.00000;,
 0.85714; 0.00000;,
 0.85714; 0.07143;,
 0.85714; 0.14286;,
 0.85714; 0.21429;,
 0.85714; 0.28571;,
 0.85714; 0.35714;,
 0.85714; 0.42857;,
 0.85714; 0.50000;,
 0.85714; 0.57143;,
 0.85714; 0.64286;,
 0.85714; 0.71429;,
 0.85714; 0.78571;,
 0.85714; 0.85714;,
 0.85714; 0.92857;,
 0.85714; 1.00000;,
 0.78571; 0.00000;,
 0.78571; 0.07143;,
 0.78571; 0.14286;,
 0.78571; 0.21429;,
 0.78571; 0.28571;,
 0.78571; 0.35714;,
 0.78571; 0.42857;,
 0.78571; 0.50000;,
 0.78571; 0.57143;,
 0.78571; 0.64286;,
 0.78571; 0.71429;,
 0.78571; 0.78571;,
 0.78571; 0.85714;,
 0.78571; 0.92857;,
 0.78571; 1.00000;,
 0.71429; 0.00000;,
 0.71429; 0.07143;,
 0.71429; 0.14286;,
 0.71429; 0.21429;,
 0.71429; 0.28571;,
 0.71429; 0.35714;,
 0.71429; 0.42857;,
 0.71429; 0.50000;,
 0.71429; 0.57143;,
 0.71429; 0.64286;,
 0.71429; 0.71429;,
 0.71429; 0.78571;,
 0.71429; 0.85714;,
 0.71429; 0.92857;,
 0.71429; 1.00000;,
 0.64286; 0.00000;,
 0.64286; 0.07143;,
 0.64286; 0.14286;,
 0.64286; 0.21429;,
 0.64286; 0.28571;,
 0.64286; 0.35714;,
 0.64286; 0.42857;,
 0.64286; 0.50000;,
 0.64286; 0.57143;,
 0.64286; 0.64286;,
 0.64286; 0.71429;,
 0.64286; 0.78571;,
 0.64286; 0.85714;,
 0.64286; 0.92857;,
 0.64286; 1.00000;,
 0.57143; 0.00000;,
 0.57143; 0.07143;,
 0.57143; 0.14286;,
 0.57143; 0.21429;,
 0.57143; 0.28571;,
 0.57143; 0.35714;,
 0.57143; 0.42857;,
 0.57143; 0.50000;,
 0.57143; 0.57143;,
 0.57143; 0.64286;,
 0.57143; 0.71429;,
 0.57143; 0.78571;,
 0.57143; 0.85714;,
 0.57143; 0.92857;,
 0.57143; 1.00000;,
 0.50000; 0.00000;,
 0.50000; 0.07143;,
 0.50000; 0.14286;,
 0.50000; 0.21429;,
 0.50000; 0.28571;,
 0.50000; 0.35714;,
 0.50000; 0.42857;,
 0.50000; 0.50000;,
 0.50000; 0.57143;,
 0.50000; 0.64286;,
 0.50000; 0.71429;,
 0.50000; 0.78571;,
 0.50000; 0.85714;,
 0.50000; 0.92857;,
 0.50000; 1.00000;,
 0.42857; 0.00000;,
 0.42857; 0.07143;,
 0.42857; 0.14286;,
 0.42857; 0.21429;,
 0.42857; 0.28571;,
 0.42857; 0.35714;,
 0.42857; 0.42857;,
 0.42857; 0.50000;,
 0.42857; 0.57143;,
 0.42857; 0.64286;,
 0.42857; 0.71429;,
 0.42857; 0.78571;,
 0.42857; 0.85714;,
 0.42857; 0.92857;,
 0.42857; 1.00000;,
 0.35714; 0.00000;,
 0.35714; 0.07143;,
 0.35714; 0.14286;,
 0.35714; 0.21429;,
 0.35714; 0.28571;,
 0.35714; 0.35714;,
 0.35714; 0.42857;,
 0.35714; 0.50000;,
 0.35714; 0.57143;,
 0.35714; 0.64286;,
 0.35714; 0.71429;,
 0.35714; 0.78571;,
 0.35714; 0.85714;,
 0.35714; 0.92857;,
 0.35714; 1.00000;,
 0.28571; 0.00000;,
 0.28571; 0.07143;,
 0.28571; 0.14286;,
 0.28571; 0.21429;,
 0.28571; 0.28571;,
 0.28571; 0.35714;,
 0.28571; 0.42857;,
 0.28571; 0.50000;,
 0.28571; 0.57143;,
 0.28571; 0.64286;,
 0.28571; 0.71429;,
 0.28571; 0.78571;,
 0.28571; 0.85714;,
 0.28571; 0.92857;,
 0.28571; 1.00000;,
 0.21429; 0.00000;,
 0.21429; 0.07143;,
 0.21429; 0.14286;,
 0.21429; 0.21429;,
 0.21429; 0.28571;,
 0.21429; 0.35714;,
 0.21429; 0.42857;,
 0.21429; 0.50000;,
 0.21429; 0.57143;,
 0.21429; 0.64286;,
 0.21429; 0.71429;,
 0.21429; 0.78571;,
 0.21429; 0.85714;,
 0.21429; 0.92857;,
 0.21429; 1.00000;,
 0.14286; 0.00000;,
 0.14286; 0.07143;,
 0.14286; 0.14286;,
 0.14286; 0.21429;,
 0.14286; 0.28571;,
 0.14286; 0.35714;,
 0.14286; 0.42857;,
 0.14286; 0.50000;,
 0.14286; 0.57143;,
 0.14286; 0.64286;,
 0.14286; 0.71429;,
 0.14286; 0.78571;,
 0.14286; 0.85714;,
 0.14286; 0.92857;,
 0.14286; 1.00000;,
 0.07143; 0.00000;,
 0.07143; 0.07143;,
 0.07143; 0.14286;,
 0.07143; 0.21429;,
 0.07143; 0.28571;,
 0.07143; 0.35714;,
 0.07143; 0.42857;,
 0.07143; 0.50000;,
 0.07143; 0.57143;,
 0.07143; 0.64286;,
 0.07143; 0.71429;,
 0.07143; 0.78571;,
 0.07143; 0.85714;,
 0.07143; 0.92857;,
 0.07143; 1.00000;,
 0.00000; 0.00000;,
 0.00000; 0.07143;,
 0.00000; 0.14286;,
 0.00000; 0.21429;,
 0.00000; 0.28571;,
 0.00000; 0.35714;,
 0.00000; 0.42857;,
 0.00000; 0.50000;,
 0.00000; 0.57143;,
 0.00000; 0.64286;,
 0.00000; 0.71429;,
 0.00000; 0.78571;,
 0.00000; 0.85714;,
 0.00000; 0.92857;,
 0.00000; 1.00000;;
 }
}