#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Tells the player that the gang is created and throws him into it.
*/
private["_group"];
life_action_gangInUse = nil;

if(life_atmcash < (__GETC__(life_gangPrice))) exitWith {
	hint format["Du hast nicht genug Geld auf deinem Konto.\n\nDir fehlen: $%1",[((__GETC__(life_gangPrice))-life_atmcash)] call life_fnc_numberText];
	{(group player) setVariable[_x,nil,true];} foreach ["gang_id","gang_owner","gang_name","gang_members","gang_maxmembers","gang_bank"];
};

[[[player],{_this select 0 setRank "COLONEL";}],"BIS_fnc_call",nil,false] spawn life_fnc_MP;

hint format["Du hast die Gang %1 für $%2 erstellt.",(group player) getVariable "gang_name",[(__GETC__(life_gangPrice))] call life_fnc_numberText];