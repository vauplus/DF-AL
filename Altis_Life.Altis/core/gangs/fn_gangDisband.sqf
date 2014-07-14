#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Prompts the user about disbanding the gang and if the user accepts the gang will be
	disbanded and removed from the database.
*/
private["_action"];

_action = [
	"Du bist dabei deine Gang zu löschen.<br/><br/> Das Geld für das erstellen der Gang wird nicht zurück erstattet!",
	"Gang löschen",
	"Ja",
	"Nein"
] call BIS_fnc_guiMessage;

if(_action) then {
	hint "Gang wird gelöscht....";
	[[grpPlayer],"TON_fnc_removeGang",false,false] spawn life_fnc_MP;
} else {
	hint "Löschen abgebrochen.";
};