waitUntil {!isNull player};
waitUntil {player == player};
uiSleep 2;
#include "diary\init.sqf";

execVM "client\arsenal\init.sqf";

#include "cleanup\init.sqf";
#include "restrict\init.sqf";