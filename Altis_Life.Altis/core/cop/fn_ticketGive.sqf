/*
	File: fn_ticketGive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives a ticket to the targeted player.
*/
private["_val"];
if(isNil {life_ticket_unit}) exitWith {hint "Person nil"};
if(isNull life_ticket_unit) exitWith {hint "Die Person existiert nicht."};
_val = ctrlText 2652;
if(!([_val] call fnc_isnumber)) exitWith {hint "Schonmal mit Zahlen probiert ?"};
if((parseNumber _val) > 100000) exitWith {hint "Strafzettel können nicht höher als $100,000 sein!"};
[[0,format["%1 hat ein Strafzettel an %3 in Höhe von $%2 ausgestellt",player getVariable["realname",name player],[(parseNumber _val)] call life_fnc_numberText,life_ticket_unit getVariable["realname",name life_ticket_unit]]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
[[player,(parseNumber _val)],"life_fnc_ticketPrompt",life_ticket_unit,false] spawn life_fnc_MP;
closeDialog 0;