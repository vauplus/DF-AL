#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_Rangemaster"};
player setObjectTextureGlobal [0,"textures\anwaerter.paa"];
waitUntil {uniform player != "U_Rangemaster"};
};
};
[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_Competitor"};
player setObjectTextureGlobal [0,"textures\polizist.paa"];
waitUntil {uniform player != "U_Competitor"};
};
};
[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_BG_Guerilla2_1"};
player setObjectTextureGlobal [0,"textures\bundespolizei.paa"];
waitUntil {uniform player != "U_BG_Guerilla2_1"};
};
};
[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_BG_Guerilla2_2"};
player setObjectTextureGlobal [0,"textures\polizeichef.paa"];
waitUntil {uniform player != "U_BG_Guerilla2_2"};
};
};