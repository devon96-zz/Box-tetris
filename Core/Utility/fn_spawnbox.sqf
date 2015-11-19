/*
*
*	Author: Konrad Dryja
*	
*		
*
*/
private["_control"];
params[["_control",controlNull,[controlNull]]];

if(isNull myBox) then {
	myBox = "Land_CargoBox_V1_F" createVehicle (player modelToWorld [0,2,0]);

	disableSerialization;
	_display = findDisplay 1;
	_manipulate = _display displayCtrl 4;
	_manipulate ctrlShow true;
	_manipulate ctrlEnable true;
};