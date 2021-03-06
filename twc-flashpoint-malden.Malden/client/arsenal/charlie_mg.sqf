[arsenalAmmoBox,["LMG_Mk200_F","MMG_02_sand_F","hgun_P07_F"],false] call BIS_fnc_addVirtualWeaponCargo;
[arsenalAmmoBox,["200Rnd_65x39_cased_Box","130Rnd_338_Mag","16Rnd_9x21_Mag"],false] call BIS_fnc_addVirtualMagazineCargo;
[arsenalAmmoBox,["H_HelmetB_snakeskin","U_B_CombatUniform_mcam_tshirt","V_PlateCarrier1_rgr","acc_pointer_IR","bipod_01_F_snd"],false] call Bis_fnc_addVirtualItemCargo;
[arsenalAmmoBox,["B_AssaultPack_rgr"],false] call Bis_fnc_addVirtualBackpackCargo;

comment "Exported from Arsenal by jayman";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "U_B_CombatUniform_mcam_tshirt";
for "_i" from 1 to 5 do {player addItemToUniform "FirstAidKit";};
player addVest "V_PlateCarrier1_rgr";
for "_i" from 1 to 2 do {player addItemToVest "16Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {player addItemToVest "200Rnd_65x39_cased_Box";};
player addBackpack "B_AssaultPack_rgr";
for "_i" from 1 to 2 do {player addItemToBackpack "200Rnd_65x39_cased_Box";};
for "_i" from 1 to 2 do {player addItemToBackpack "HandGrenade";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShell";};
player addHeadgear "H_HelmetB_snakeskin";

comment "Add weapons";
player addWeapon "LMG_Mk200_F";
player addPrimaryWeaponItem "acc_pointer_IR";
player addPrimaryWeaponItem "bipod_01_F_snd";
player addWeapon "hgun_P07_F";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "NVGoggles";