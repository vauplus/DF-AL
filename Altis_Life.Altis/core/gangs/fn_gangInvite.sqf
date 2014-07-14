#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Prompts the player about an invite.
*/
private["_name","_group"];
_name = [_this,0,"",[""]] call BIS_fnc_param;
_group = [_this,1,grpNull,[grpNull]] call BIS_fnc_param;
if(_name == "" OR isNull _group) exitWith {}; //Fail horn anyone?

_gangName = _group getVariable "gang_name";
_action = [
	format["%1 hat dich zur Gang %2 eingeladen.",_name,_gangName],
	"Gang Einladung",
	"Ja",
	"Nein"
] call BIS_fnc_guiMessage;

if(_action) then {
	[player] join _group;
	_members = _group getVariable "gang_members";
	_members set[count _members,steamid];
	_group setVariable["gang_members",_members,true];
	[[4,_group],"TON_fnc_updateGang",false,false] spawn life_fnc_MP;
};