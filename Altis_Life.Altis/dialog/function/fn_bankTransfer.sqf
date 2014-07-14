/*
	File: fn_bankTransfer.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Figure it out again.
*/
private["_val","_unit","_tax"];
_val = parseNumber(ctrlText 2702);
_unit = call compile format["%1",(lbData[2703,(lbCurSel 2703)])];
if(isNull _unit) exitWith {};
if((lbCurSel 2703) == -1) exitWith {hint "Du musst jemanden auswählen zum überweisen"};
if(isNil "_unit") exitWith {hint "Der ausgewählte Spieler existiert nicht?"};
if(_val > 999999) exitWith {hint "Du kannst nicht mehr als $999,999 überweisen";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint "That isn't in an actual number format."};
if(_val > life_atmcash) exitWith {hint "Du hast nicht genug auf deinem Bankkonto!"};
_tax = [_val] call life_fnc_taxRate;
if((_val + _tax) > life_atmcash) exitWith {hint format["Du hast nicht genug Geld auf deinem Bankkonto, zum überweisen von $%1 brauchst du $%2 als Gebühr.",_val,_tax]};

life_atmcash = life_atmcash - (_val + _tax);

[[_val,profileName],"clientWireTransfer",_unit,false] spawn life_fnc_MP;
[] call life_fnc_atmMenu;
hint format["Du hast $%1 an %2 überwiesen.\n\n Für das überweisen fällt eine Gebühr in höhe von $%3.",[_val] call life_fnc_numberText,_unit getVariable["realname",name _unit],[_tax] call life_fnc_numberText];
[] call SOCK_fnc_updateRequest; //Silent Sync