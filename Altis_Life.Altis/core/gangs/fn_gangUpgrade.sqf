#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Determinds the upgrade price and blah
*/
private["_maxMembers","_slotUpgrade","_upgradePrice"];
_maxMembers = grpPlayer getVariable ["gang_maxMembers",8];
_slotUpgrade = _maxMembers + 4;
_upgradePrice = round(_slotUpgrade * (__GETC__(life_gangUpgradeBase)) / (__GETC__(life_gangUpgradeMultipler)));

_action = [
	format["Du bist dabei die maximal erlaubten Mitglieder zu erhöhen.<br/><br/>Derzeitig Max: %1<br/>Erweitert Max: %2<br/>Preis: <t color='#8cff9b'>$%3</t>",_maxMembers,_slotUpgrade,[_upgradePrice] call life_fnc_numberText],
	"Maximal erlaubte Mitglieder erweitern",
	"Kaufen",
	"Abbrechen"
] call BIS_fnc_guiMessage;

if(_action) then {
	if(life_atmcash < _upgradePrice) exitWith {
		hint parseText format[
			"Du hast nicht genug Geld auf deinem Konto um die erweiterung zu kaufen.<br/><br/>Derzeitig: <t color='#8cff9b'>$%1</t><br/>Dir fehlen: <t color='#FF0000'>$%2</t>",
			[life_atmcash] call life_fnc_numberText,
			[_upgradePrice - life_atmcash] call life_fnc_numberText
		];
	};
	__SUB__(life_atmcash,_upgradePrice);
	grpPlayer setVariable["gang_maxMembers",_slotUpgrade,true];
	hint parseText format["Du hast die maximale Anzahl von Mitglieder von %1 auf %2 erweitert für <t color='#8cff9b'>$%3</t>",_maxMembers,_slotUpgrade,[_upgradePrice] call life_fnc_numberText];
	[[2,grpPlayer],"TON_fnc_updateGang",false,false] spawn life_fnc_MP;
} else {
	hint "Erweiterung abgebrochen.";
};