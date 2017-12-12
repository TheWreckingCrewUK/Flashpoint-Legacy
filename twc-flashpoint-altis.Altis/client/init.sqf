execVM "client\playerFunctions.sqf";

InsP_MissionStatus = ["MissionStatus","Mission Status","",{execVM "client\diary\missionStatus.sqf"},{true}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], InsP_MissionStatus] call ace_interact_menu_fnc_addActionToObject;


player addEventHandler ["KILLED",{
	counterAttackCounter = counterAttackCounter + 1;
	publicVariable "counterAttackCounter";
	if(counterAttackCounter > 20)then {
		remoteExec ["twc_redforSiteRecapAttempt",2];
	};
	patrolCounter = patrolCounter + 1;
	publicVariable "patrolCounter";
	if(patrolCounter > 15) then{
		remoteExec ["twc_patrols",2];
	};
}];

execVM "client\restrict\init.sqf";
execVM "client\cleanup\gear.sqf";
execVM "client\diary\init.sqf";
execVM "client\vehicleSpawning\supportVehicles.sqf";
g_class = "";
g_group = "";
g_unit = "";
g_name = "";
if (!isNil "helo1" && {player == helo1}) then {
    g_class = "helo";
	g_group = "0";
	g_unit = "100";
	g_name = "Wildcat Pilot";
	g_radio = "";
	SpawnAW19Action = ["SpawnAW159","AW19 Wildcat","",{["CUP_B_AW159_Cannon_GB"] call twc_fnc_spawnAirVehicle},{TRUE}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V2_F", 0, ["ACE_MainActions"], SpawnAW19Action] call ace_interact_menu_fnc_addActionToClass;	
	execVM "client\radar\helicopterRadar1.sqf";
	execVM "client\radar\helicopterRadar2.sqf";
};
if (!isNil "helo2" && {player == helo2}) then {
    g_class = "helo2";
	g_group = "0";
	g_unit = "101";
	g_name = "BlackHawk Pilot";
	g_radio = "";
	SpawnUH60MAction = ["SpawnUH60M","UH60M Blackhawk","",{["CUP_B_UH60M_US"] call twc_fnc_spawnAirVehicle},{TRUE}] call ace_interact_menu_fnc_createAction;
	["Land_InfoStand_V2_F", 0, ["ACE_MainActions"], SpawnUH60MAction] call ace_interact_menu_fnc_addActionToClass;
	execVM "client\radar\helicopterRadar1.sqf";
	execVM "client\radar\helicopterRadar2.sqf";
};
if (!isNil "commander1" && {player == commander1}) then {
    g_class = "CMDR";
	g_group = "0";
	g_unit = "000";
	g_name = "Commander";
	g_radio_channel = 10;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landCommander.sqf";
	execVM "client\commander\init.sqf";
};
if (!isNil "p1" && {player == p1}) then {
    g_class = "alpha_sl";
	g_group = "0";
	g_unit = "001";
	g_name = "Alpha Section Leader";
	g_radio_channel = 1;
	g_radio = "ACRE_PRC343";
	execVM "client\vehicleSpawning\landBritish.sqf";
};
if (!isNil "p2" && {player == p2}) then {
    g_class = "alpha_rf";
	g_group = "0";
	g_unit = "002";
	g_name = "Alpha Rifleman";
	g_radio_channel = 1;
	g_radio = "ACRE_PRC343";
	execVM "client\vehicleSpawning\landBritishGrunts.sqf";
};
if (!isNil "p3" && {player == p3}) then {
    g_class = "alpha_grn";
	g_group = "0";
	g_unit = "003";
	g_name = "Alpha Grenadier";
	g_radio_channel = 1;
	g_radio = "ACRE_PRC343";
	execVM "client\vehicleSpawning\landBritishGrunts.sqf";
};
if (!isNil "p4" && {player == p4}) then {
    g_class = "alpha_ar";
	g_group = "0";
	g_unit = "004";
	g_name = "Alpha Automatic Rifleman";
	g_radio_channel = 1;
	g_radio = "ACRE_PRC343";
	execVM "client\vehicleSpawning\landBritishGrunts.sqf";
};
if (!isNil "p5" && {player == p5}) then {
    g_class = "alpha_2ic";
	g_group = "0";
	g_unit = "005";
	g_name = "Alpha 2IC";
	g_radio_channel = 1;
	g_radio = "ACRE_PRC343";
	execVM "client\vehicleSpawning\landBritish.sqf";
};
if (!isNil "p6" && {player == p6}) then {
    g_class = "alpha_mg";
	g_group = "0";
	g_unit = "006";
	g_name = "Alpha Machine Gunner";
	g_radio_channel = 1;
	g_radio = "ACRE_PRC343";
	execVM "client\vehicleSpawning\landBritishGrunts.sqf";
};
if (!isNil "p7" && {player == p7}) then {
    g_class = "alpha_mark";
	g_group = "0";
	g_unit = "007";
	g_name = "Alpha Marksman";
	g_radio_channel = 1;
	g_radio = "ACRE_PRC343";
	execVM "client\vehicleSpawning\landBritishGrunts.sqf";
};
if (!isNil "p8" && {player == p8}) then {
    g_class = "alpha_med";
	g_group = "0";
	g_unit = "008";
	g_name = "Alpha Medic";
	g_radio_channel = 1;
	g_radio = "ACRE_PRC343";
	execVM "client\vehicleSpawning\landBritishGrunts.sqf";
};
if (!isNil "p9" && {player == p9}) then {
    g_class = "bravo_sl";
	g_group = "0";
	g_unit = "009";
	g_name = "Bravo Section Leader";
	g_radio_channel = 2;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSArmy.sqf";
};
if (!isNil "p10" && {player == p10}) then {
    g_class = "bravo_tl";
	g_group = "0";
	g_unit = "010";
	g_name = "Bravo Fireteam Leader";
	g_radio_channel = 2;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSArmy.sqf";
};
if (!isNil "p11" && {player == p11}) then {
    g_class = "bravo_rf";
	g_group = "0";
	g_unit = "011";
	g_name = "Bravo Rifleman";
	g_radio_channel = 2;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSArmyGrunts.sqf";
};
if (!isNil "p12" && {player == p12}) then {
    g_class = "bravo_grn";
	g_group = "0";
	g_unit = "012";
	g_name = "Bravo Grenadier";
	g_radio_channel = 2;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSArmyGrunts.sqf";
};
if (!isNil "p13" && {player == p13}) then {
    g_class = "bravo_ar";
	g_group = "0";
	g_unit = "013";
	g_name = "Bravo Automatic Rifleman";
	g_radio_channel = 2;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSArmyGrunts.sqf";
};
if (!isNil "p14" && {player == p14}) then {
    g_class = "bravo_tl";
	g_group = "0";
	g_unit = "014";
	g_name = "Bravo Fireteam Leader";
	g_radio_channel = 2;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSArmy.sqf";
};
if (!isNil "p15" && {player == p15}) then {
    g_class = "bravo_ar";
	g_group = "0";
	g_unit = "015";
	g_name = "Bravo Automatic Rifleman";
	g_radio_channel = 2;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSArmyGrunts.sqf";
};
if (!isNil "p16" && {player == p16}) then {
    g_class = "bravo_mark";
	g_group = "0";
	g_unit = "016";
	g_name = "Bravo Marksman";
	g_radio_channel = 2;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSArmyGrunts.sqf";
};
if (!isNil "p17" && {player == p17}) then {
    g_class = "bravo_med";
	g_group = "0";
	g_unit = "017";
	g_name = "Bravo Medic";
	g_radio_channel = 2;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSArmyGrunts.sqf";
};
if (!isNil "p18" && {player == p18}) then {
    g_class = "charlie_sl";
	g_group = "0";
	g_unit = "018";
	g_name = "Charlie Section Leader";
	g_radio_channel = 3;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSMC.sqf";
};
if (!isNil "p19" && {player == p19}) then {
    g_class = "charlie_tl";
	g_group = "0";
	g_unit = "019";
	g_name = "Charlie Fireteam Leader";
	g_radio_channel = 3;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSMC.sqf";
};
if (!isNil "p20" && {player == p20}) then {
    g_class = "charlie_rf";
	g_group = "0";
	g_unit = "020";
	g_name = "Charlie Rifleman";
	g_radio_channel = 3;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSMCGrunts.sqf";
};
if (!isNil "p21" && {player == p21}) then {
    g_class = "charlie_ar";
	g_group = "0";
	g_unit = "022";
	g_name = "Charlie Automatic Rifleman";
	g_radio_channel = 3;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSMCGrunts.sqf";
};
if (!isNil "p22" && {player == p22}) then {
    g_class = "charlie_aar";
	g_group = "0";
	g_unit = "022";
	g_name = "Charlie Assistant Automatic Rifleman";
	g_radio_channel = 3;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSMCGrunts.sqf";
};
if (!isNil "p23" && {player == p23}) then {
    g_class = "charlie_tl";
	g_group = "0";
	g_unit = "023";
	g_name = "Charlie Fireteam Leader";
	g_radio_channel = 3;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSMC.sqf";
};
if (!isNil "p24" && {player == p24}) then {
    g_class = "charlie_rf";
	g_group = "0";
	g_unit = "024";
	g_name = "Charlie Rifleman";
	g_radio_channel = 3;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSMCGrunts.sqf";
};
if (!isNil "p25" && {player == p25}) then {
    g_class = "charlie_ar";
	g_group = "0";
	g_unit = "025";
	g_name = "Charlie Automatic Rifleman";
	g_radio_channel = 3;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSMCGrunts.sqf";
};
if (!isNil "p26" && {player == p26}) then {
    g_class = "charlie_aar";
	g_group = "0";
	g_unit = "026";
	g_name = "Charlie Assistant Automatic Rifleman";
	g_radio_channel = 3;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSMCGrunts.sqf";
};
if (!isNil "p27" && {player == p27}) then {
    g_class = "charlie_tl";
	g_group = "0";
	g_unit = "027";
	g_name = "Charlie Fireteam Leader";
	g_radio_channel = 3;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSMC.sqf";
};
if (!isNil "p28" && {player == p28}) then {
    g_class = "charlie_mg";
	g_group = "0";
	g_unit = "028";
	g_name = "Charlie Machine Gunner";
	g_radio_channel = 3;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSMCGrunts.sqf";
};
if (!isNil "p29" && {player == p29}) then {
    g_class = "charlie_mgass";
	g_group = "0";
	g_unit = "029";
	g_name = "Charlie Machine Gunner Assistant";
	g_radio_channel = 3;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSMCGrunts.sqf";
};
if (!isNil "p30" && {player == p30}) then {
    g_class = "charlie_med";
	g_group = "0";
	g_unit = "030";
	g_name = "Medic";
	g_radio_channel = 3;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landUSMCGrunts.sqf";
};
if (!isNil "p31" && {player == p31}) then {
    g_class = "SNIPER";
	g_group = "0";
	g_unit = "031";
	g_name = "Sniper/Mortar Commander";
	g_radio_channel = 6;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landAttachments.sqf";
};
if (!isNil "p32" && {player == p32}) then {
    g_class = "SPOTTER";
	g_group = "0";
	g_unit = "032";
	g_name = "Spotter/Mortar Gunner";
	g_radio_channel = 6;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landAttachments.sqf";
};
if (!isNil "armour1" && {player == armour1}) then {
    g_class = "armour_co";
	g_group = "0";
	g_unit = "033";
	g_name = "Armour Crew commander";
	g_radio_channel = 7;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\armourCommander.sqf";
	execVM "client\restrict\fullCrew.sqf";
};
if (!isNil "armour2" && {player == armour2}) then {
    g_class = "armour_cr";
	g_group = "0";
	g_unit = "034";
	g_name = "Armour Crewman";
	g_radio_channel = 7;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landAttachments.sqf";
	execVM "client\restrict\fullCrew.sqf";
};
if (!isNil "armour3" && {player == armour3}) then {
    g_class = "armour_cr";
	g_group = "0";
	g_unit = "035";
	g_name = "Armour Crewman";
	g_radio_channel = 7;
	g_radio = "ACRE_PRC148";
	execVM "client\vehicleSpawning\landAttachments.sqf";
	execVM "client\restrict\fullCrew.sqf";
};
if (!isNil "jet1" && {player == jet1}) then {
    g_class = "jet";
	g_group = "0";
	g_unit = "100";
	g_name = "Jet Pilot";
	g_radio = "";
	execVM "client\vehicleSpawning\jetPilot.sqf";
	execVM "client\radar\helicopterRadar1.sqf";
	execVM "client\radar\helicopterRadar2.sqf";	
};

execVM "client\boxes\init.sqf";

TWC_fnc_getAlphaList = {
    execVM "client\playerlist\alpha.sqf";
};

TWC_fnc_getBravoList = {
     execVM "client\playerlist\bravo.sqf";
};

TWC_fnc_getCharlieList = {
   execVM "client\playerlist\charlie.sqf";
};
TWC_fnc_getSupportList = {
   execVM "client\playerlist\support.sqf";
};
TWC_fnc_getAirList = {
   execVM "client\playerlist\air.sqf";
};

playerListAction = ["thisStartsTheList","Player List","", {},{true}] call ace_interact_menu_fnc_createAction;
alphaAction = ["AlphaList","Alpha List","", {call TWC_fnc_getAlphaList;},{true}] call ace_interact_menu_fnc_createAction;
bravoAction = ["BravoList","Bravo List","", {call TWC_fnc_getBravoList;},{true}] call ace_interact_menu_fnc_createAction;
charlieAction = ["CharlieList","Charlie List","", {call TWC_fnc_getCharlieList;},{true}] call ace_interact_menu_fnc_createAction;
supportAction = ["SupportList","Support List","", {call TWC_fnc_getSupportList;},{true}] call ace_interact_menu_fnc_createAction;
airAction = ["AirList","Air List","", {call TWC_fnc_getAirList;},{true}] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions"], playerListAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "thisStartsTheList"], alphaAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "thisStartsTheList"], bravoAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "thisStartsTheList"], charlieAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "thisStartsTheList"], supportAction] call ace_interact_menu_fnc_addActionToObject;
[player, 1, ["ACE_SelfActions", "thisStartsTheList"], airAction] call ace_interact_menu_fnc_addActionToObject;

_name = name player;
_text = format["%1 joined in as %2",_name,g_name];
[TWCServer,_text] remoteExec ["TWC_fnc_GlobalChat", 2]; 

if (g_class != "") then {
	execVM format["client\loadout\%1.sqf", g_class];
};

sleep 2;
if (g_radio != "") then {
	_radioID = [g_radio] call acre_api_fnc_getRadioByType;
	_switchChannel = [_radioID, g_radio_channel] call acre_api_fnc_setRadioChannel;
	Hint parseText format ["<t color='#d0dd00' size='1.2' shadow='1' shadowColor='#000000' align='center'>Radio Set</t><br/><t color='#d0dd00' size='0.8' shadow='1' shadowColor='#565656' align='left'>Radio:</t><t color='##013bb6' size='0.8' shadow='1' shadowColor='#565656' align='right'>%1</t><br/><t color='#d0dd00' size='0.8' shadow='1' shadowColor='#565656' align='left'>Channel:</t><t color='##013bb6' size='0.8' shadow='1' shadowColor='#565656' align='right'>%2</t>",g_radio,g_radio_channel];
};


