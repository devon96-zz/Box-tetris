/*
*
*	Author: Konrad Dryja
*	
*	
*	
*	
*/
private["_cam","_display","_cancel","_confirm","_list","_uniformArrayNames","_uniformArrayNames"];
params[["_chair",objNull,[objNull]]];

player setVariable["uniformOriginal",uniform player]; 

_cam = "CAMERA" camCreate getPos player;
showCinemaBorder false;
_cam cameraEffect ["Internal", "Back"];
_cam camSetTarget (_chair modelToWorld [0,0,0]);
_cam camSetPos (_chair modelToWorld [1,30,10]);
_cam camSetFOV .33;
_cam camSetFocus [50, 0];
_cam camCommit 0;

disableSerialization;
createDialog "OutfitShop";
_display = findDisplay 1;
_cancel = _display displayCtrl 2;
_confirm = _display displayCtrl 3;
_manipulate = _display displayCtrl 4;
_manipulate ctrlShow false;
_cancel ctrlEnable true;
_confirm ctrlEnable true;
myBox = objNull;

waitUntil {
	!dialog
};

_cam cameraEffect ["Terminate", "Back"];
camDestroy _cam;