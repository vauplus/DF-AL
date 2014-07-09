/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {1000}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {65000}; //Pilot/air license cost
	case "gun": {50000}; //Firearm/gun license cost
	case "dive": {5000}; //Diving license cost
	case "oil": {10000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {65000}; //Heroin processing license cost
	case "marijuana": {55000}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {10000}; //Gang license cost
	case "rebel": {550000}; //Rebel license cost
	case "truck": {50000}; //Truck license cost
	case "diamond": {44000};
	case "salt": {12000};
	case "cocaine": {70000};
	case "sand": {13000};
	case "iron": {9000};
	case "copper": {8000};
	case "cement": {6500};
	case "mair": {15000};
	case "home": {300000};
	case "kohle": {9000}; //edit
	case "tabak": {30000}; //edit
	case "uran": {75000}; //edit
	case "hopfen": {30000};
	case "frog": {75000};
};