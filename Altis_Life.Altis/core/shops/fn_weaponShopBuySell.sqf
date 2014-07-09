/*
	File: fn_weaponShopBuySell.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling of the weapon shop for buying / selling an item.
*/
private["_price","_item","_itemInfo","_bad"];
if((lbCurSel 38403) == -1) exitWith {hint "Du musst einen Gegenstand auswählen zum kaufen/verkaufen."};
_price = lbValue[38403,(lbCurSel 38403)]; if(isNil "_price") then {_price = 0;};
_item = lbData[38403,(lbCurSel 38403)];
_itemInfo = [_item] call life_fnc_fetchCfgDetails;

_bad = "";

if((_itemInfo select 6) != "CfgVehicles") then
{
	if((_itemInfo select 4) in [4096,131072]) then
	{
		if(!(player canAdd _item) && (uiNamespace getVariable["Weapon_Shop_Filter",0]) != 1) exitWith {_bad = "Du hast nicht genug Platz."};
	};
};

if(_bad != "") exitWith {hint _bad};

if((uiNamespace getVariable["Weapon_Shop_Filter",0]) == 1) then
{
	life_cash = life_cash + _price;
	[_item,false] call life_fnc_handleItem;
	hint parseText format["Du hast %1 für <t color='#8cff9b'>$%2</t> verkauft",_itemInfo select 1,[_price] call life_fnc_numberText];
	[nil,(uiNamespace getVariable["Weapon_Shop_Filter",0])] call life_fnc_weaponShopFilter; //Update the menu.
}
	else
{
	if(_price > life_cash) exitWith {hint "Du hast nicht genug Geld dabei!"};
	[_item,true] spawn life_fnc_handleItem;
	hint parseText format["Du hast %1 für <t color='#8cff9b'>$%2</t> gekauft.",_itemInfo select 1,[_price] call life_fnc_numberText];
	life_cash = life_cash - _price;
};

//Hotfix in for cop gear
if(playerSide == west) then
{
[] call life_fnc_saveGear;
};
