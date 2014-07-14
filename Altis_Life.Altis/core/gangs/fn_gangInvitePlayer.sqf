#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the invite process?
*/
private["_unit"];
disableSerialization;

if((lbCurSel 2632) == -1) exitWith {hint "Du musst einen Spieler auswählen zum einladen!"};
_unit = call compile format["%1",getSelData(2632)];
if(isNull _unit) exitWith {}; //Bad unit?
if(_unit == player) exitWith {hint "Du kannst dich nicht selber kicken!"};

_action = [
	format["Du bist dabei %1 zu deiner Gang einzuladen.",_unit getVariable ["realname",name _unit]],
	"Gang Leiter wechseln",
	"Ja",
	"Nein"
] call BIS_fnc_guiMessage;

if(_action) then {
	[[profileName,grpPlayer],"life_fnc_gangInvite",_unit,false] spawn life_fnc_MP;
	hint format["Du hast %1 eingeladen deine Gang beizutreten.",_unit getVariable["realname",name _unit]];
} else {
	hint "Einladung abgebrochen";
};