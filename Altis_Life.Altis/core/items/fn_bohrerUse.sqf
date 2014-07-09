/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
switch (true) do
{
	case (player distance (getMarkerPos "uran_1") < 30): {_mine = "uranore"; _val = 2;};
	case (player distance (getMarkerPos "coal_1") < 30): {_mine = "coal"; _val = 2;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint "Du bist nicht in der nähe einer Mine!"};
if(vehicle player != player) exitWith {hint "Du kannst nicht innerhalb eines Fahrzeugen abbauen!";};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint "Dein Inventar ist voll."};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format["Du hast %2 %1 abgebaut",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;