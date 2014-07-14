#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Something about being a quitter.
*/
private["_unit","_unitID","_members","_action","_index"];
disableSerialization;

if((lbCurSel 2621) == -1) exitWith {hint "Du musst einen Spieler auswählen zum einladen!"};
_unit = call compile format["%1",getSelData(2621)];
if(isNull _unit) exitWith {}; //Bad unit?
if(_unit == player) exitWith {hint "Du bist bereits Gangleiter!"};

_action = [
	format["Du bist dabei %1 als Leiter zu ernennen.",_unit getVariable ["realname",name _unit]],
	"Neuer Leiter",
	"Ja",
	"Neon"
] call BIS_fnc_guiMessage;

if(_action) then {
	_unitID = getPlayerUID _unit;
	if(_unitID == "") exitWith {hint "Bad UID?"}; //Unlikely?
	grpPlayer setVariable["gang_owner",_unitID,true];
	grpPlayer selectLeader _unit;
	[[_unit,grpPlayer],"clientGangLeader",_unit,false] spawn life_fnc_MP; //Boot that bitch!
	[[3,grpPlayer],"TON_fnc_updateGang",false,false] spawn life_fnc_MP; //Update the database.
} else {
	hint "Aktion abgebrochen.";
};
[] call life_fnc_gangMenu;