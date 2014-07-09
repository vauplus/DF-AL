/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
case "life_inv_oilu": {"Unbearbeitetes Öl"};
	case "life_inv_oilp": {"Bearbeitetes Öl"};
	case "life_inv_heroinu": {"Unbearbeitetes Heroin"};
	case "life_inv_heroinp": {"Bearbeitetes Heroin"};
	case "life_inv_cannabis": {"Marihuana"};
	case "life_inv_marijuana": {"Cannabis"};
	case "life_inv_apple": {"Apfel"};
	case "life_inv_rabbit": {"Red Burger"};
	case "life_inv_salema": {"Salema Fleisch"};
	case "life_inv_ornate": {"Ornate Fleisch"};
	case "life_inv_mackerel": {"Mackrelen Fleisch"};
	case "life_inv_tuna": {"Thunfisch Fleisch"};
	case "life_inv_mullet": {"Meeraesche Meat"};
	case "life_inv_catshark": {"Katzenhai Fleisch"};
	case "life_inv_turtle": {"Schildkröten Fleisch"};
	case "life_inv_fishingpoles": {"Angel"};
	case "life_inv_water": {"Wasserflasche"};
	case "life_inv_coffee": {"Kaffee"};
	case "life_inv_turtlesoup": {"Schildkröten Suppe"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Leerer Bezinkanister"};
	case "life_inv_fuelF": {"Voller Bezinkanister"};
	case "life_inv_pickaxe": {"Spitzhacke"};
	case "life_inv_copperore": {"Kupfererz"};
	case "life_inv_ironore": {"Eisenerz"};
	case "life_inv_ironr": {"Eisenbarren"};
	case "life_inv_copperr": {"Kupferbarren"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salz"};
	case "life_inv_saltr": {"Raffiniertes Salz"};
	case "life_inv_glass": {"Glass"};
	case "life_inv_diamond": {"Ungeschliffene Diamanten"};
	case "life_inv_diamondr": {"Geschliffene Diamanten"};
	case "life_inv_tbacon": {"Schinken"};
	case "life_inv_redgull": {"RedBull"};
	case "life_inv_lockpick": {"Dietrich"};
	case "life_inv_peach": {"Pfirsich"};
	case "life_inv_coke": {"Unbearbeitetes Kokain"};
	case "life_inv_cokep": {"Bearbeitetes Kokain"};
	case "life_inv_spikeStrip": {"Nagelband"};
	case "life_inv_rock": {"Stein"};
	case "life_inv_cement": {"Zementsack"};
	case "life_inv_goldbar": {"Goldbarren"};
	case "life_inv_blastingcharge": {"Sprengladung"};
	case "life_inv_boltcutter": {"Bolzenschneider"};
	case "life_inv_defusekit": {"Bomben Entschärfungskit"};
	case "life_inv_storagesmall": {"Hausbox klein"};
	case "life_inv_storagebig": {"Hausbox groß"};
	case "life_inv_banane": {"Bananen"};
	case "life_inv_tabaku": {"Tabak"};
	case "life_inv_tabakp": {"Zigaretten"};
	case "life_inv_bohrer": {"Bohrer"}; 
	case "life_inv_wood": {"Holz"};
	case "life_inv_coal": {"Kohle"};
	case "life_inv_uranore": {"Uranerz"};
	case "life_inv_uranp": {"Waffenfähiges Uran"};
	case "life_inv_hopfen": {"Hopfen"};
	case "life_inv_bier": {"Bier"};
	case "life_inv_frogu": {"Frösche"};
	case "life_inv_frogp": {"Frosch LSD"};
	
	//License Block
	case "license_civ_driver": {"Auto-Führerschein"};
	case "license_civ_air": {"Piloten-Lizenz"};
	case "license_civ_heroin": {"Heroin-Verarbeitung"};
	case "license_civ_gang": {"Gang-Lizenz"};
	case "license_civ_oil": {"Öl-Verarbeitung"};
	case "license_civ_dive": {"Tauchschein"};
	case "license_civ_boat": {"Boots-Führerschein"};
	case "license_civ_gun": {"Waffen-Lizenz"};
	case "license_cop_air": {"Piloten-Lizenz"};
	case "license_cop_swat": {"Swat-Lizenz"};
	case "license_cop_cg": {"Küstenwache"};
	case "license_civ_rebel": {"Rebellen-Lizenz"};
	case "license_civ_truck": {"LKW-Führerschein"};
	case "license_civ_diamond": {"Diamanten-Verarbeitung"};
	case "license_civ_copper": {"Kupfer-Verarbeitung"};
	case "license_civ_iron": {"Eisen-Verarbeitung"};
	case "license_civ_sand": {"Sand-Verarbeitung"};
	case "license_civ_salt": {"Salz-Verarbeitung"};
	case "license_civ_coke": {"Kokain-Verarbeitung"};
	case "license_civ_marijuana": {"Marihuana-Verarbeitung"};
	case "license_civ_cement": {"Zement-Verarbeitung"};
	case "license_med_air": {"Piloten-Lizenz"};
	case "license_civ_home": {"Hausbesitzer Lizenz"};	
	case "license_civ_tabak": {"Tabak-Verarbeitung"};
	case "license_civ_uran": {"Uran-Verarbeitung"};
	case "license_civ_kohle": {"Holz-Verarbeitung"};
	case "license_civ_stahl": {"Stahl-Verarbeitung"};
	case "license_civ_hopfen": {"Hopfen-Verarbeitung"};
	case "license_civ_frog": {"Frosch-Verarbeitung"};
};
