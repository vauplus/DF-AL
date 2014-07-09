/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","storagesmall","storagebig","bohrer","wood","banane"]]};
	case "rebel": {["Rebellen Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","marijuana","frogp"]]};
	case "oil": {["Öl Händler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Fischmarkt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Glas Händler",["glass","coal"]]};
	case "iron": {["Eisen / Kupfer Händler",["iron_r","copper_r"]]};
	case "diamond": {["Diamanten Händler",["diamond","diamondc"]]};
	case "salt": {["Salz Händler",["salt_r"]]};
	case "cop": {["Polizei Markt",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit"]]};
	case "cement": {["Zement Händler",["cement"]]};
	case "tabak": {["Zigaretten Händler",["tabakp"]]};
	case "uran": {["Waffendealer",["uranp"]]};
	case "bier": {["Bier Händler",["bier"]]};
	case "donate": {["Spenderladen",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe"]]}
};