#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	32 hours later...
*/
private["_grp","_grpMembers"];
//if(steamid == (grpPlayer getVariable "gang_owner")) exitWith {hint "Du kannst die Gang nicht verlassen, du musst vorher einen neuen Leiter auswählen!"};

_grp = grpPlayer;
_grpMembers = grpPlayer getVariable "gang_members";
_grpMembers = _grpMembers - [steamid];
_grp setVariable["gang_members",_grpMembers,true];
//[player] joinSilent (createGroup civilian);

[[4,_grp],"TON_fnc_updateGang",false,false] spawn life_fnc_MP;
closeDialog 0;