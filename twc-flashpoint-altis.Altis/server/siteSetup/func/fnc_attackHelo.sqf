/*
*
* Called after blufor capture
*
* Sends a hind to attack them
*/
params["_marker"];
if((getMarkerColor "mainHQ") != "ColorEAST")exitWith{ hint "Enemy Base Captured"};

_group = [getMarkerPos "mainHQ", EAST, hind] call Bis_fnc_spawnGroup;

[_group, getMarkerPos _marker,25] call CBA_fnc_taskAttack;

format["The enemy isn't ready to give up %1 that easily. Dig in and defend for the Counter Attack. A hind has also taken off from their base!",_marker] remoteExec ["hint"]; 