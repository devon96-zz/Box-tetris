/*
*
*	Author: Konrad Dryja
*	
*		
*
*/
private["_keycontrol", "_box"];
disableSerialization;
params[["_keycontrol",controlNull,[controlNull]],["_key",0,[0]]];

myBox enableSimulation false;

if(_key == 0x11) then {
	myBox setPos [getPos myBox select 0, (getPos myBox select 1) + 0.5, getPos myBox select 2];
};
if(_key == 0x1F) then {
	myBox setPos [getPos myBox select 0, (getPos myBox select 1) - 0.5, getPos myBox select 2];
};
if(_key == 0x1E) then {
	myBox setPos [(getPos myBox select 0) + 0.5, getPos myBox select 1, getPos myBox select 2];
};
if(_key == 0x20) then {
	myBox setPos [(getPos myBox select 0) - 0.5, getPos myBox select 1, getPos myBox select 2];
};
if(_key == 0x2A) then {
	myBox setPos [getPos myBox select 0, getPos myBox select 1, (getPos myBox select 2) + 0.5];
};
if(_key == 0x1D) then {
	myBox setPos [getPos myBox select 0, getPos myBox select 1, (getPos myBox select 2) - 0.5];
};
if(_key == 0x10) then {
	myBox setDir (getDir myBox + 1)
};
if(_key == 0x12) then {
	myBox setDir (getDir myBox - 1)
};


if(_key == 0x1C || _key == 0x01) then {
	myBox enableSimulation true;
	myBox = objNull;
	closeDialog 2; 
};