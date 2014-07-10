#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000]
		];
	};
	
	case "spen_car":
	{
	    if(__GETC__(life_donator) == 0) exitWith {hint "Du bist kein Spender";closeDialog 0; };
		if(__GETC__(life_donator) == 1) then
		{
			_return set[count _return,["B_Quadbike_01_F",500]];
			_return set[count _return,["C_Hatchback_01_F",7000]];
			_return set[count _return,["C_SUV_01_F",11000]];
			_return set[count _return,["C_Offroad_01_F",22000]];
			_return set[count _return,["C_Hatchback_01_sport_F",31000]];
			_return set[count _return,["C_Van_01_transport_F",40000]];
			_return set[count _return,["C_Van_01_box_F",45000]];
			_return set[count _return,["C_Van_01_Fuel_F",50000]];
			_return set[count _return,["I_Truck_02_transport_F",90000]];
			_return set[count _return,["I_Truck_02_covered_F",110000]];
			_return set[count _return,["I_Truck_02_ammo_F",130000]];
			_return set[count _return,["I_Truck_02_fuel_F",150000]];
		};
		if(__GETC__(life_donator) == 2) then
		{
		    _return set[count _return,["B_Quadbike_01_F",500]];
			_return set[count _return,["C_Hatchback_01_F",7000]];
			_return set[count _return,["C_SUV_01_F",11000]];
			_return set[count _return,["C_Offroad_01_F",22000]];
			_return set[count _return,["C_Hatchback_01_sport_F",31000]];
			_return set[count _return,["C_Van_01_transport_F",40000]];
			_return set[count _return,["C_Van_01_box_F",45000]];
			_return set[count _return,["C_Van_01_Fuel_F",50000]];
			_return set[count _return,["I_Truck_02_transport_F",90000]];
			_return set[count _return,["I_Truck_02_covered_F",110000]];
			_return set[count _return,["I_Truck_02_ammo_F",130000]];
			_return set[count _return,["I_Truck_02_fuel_F",150000]];
			_return set[count _return,["O_Truck_03_transport_F",250000]];
			_return set[count _return,["O_Truck_03_covered_F",280000]];
			_return set[count _return,["O_Truck_03_ammo_F",360000]];
			_return set[count _return,["O_Truck_03_fuel_F",500000]];
			_return set[count _return,["B_Truck_01_transport_F",250000]];
			_return set[count _return,["B_Truck_01_covered_F",280000]];
			_return set[count _return,["B_Truck_01_ammo_F",360000]];
			_return set[count _return,["B_Truck_01_fuel_F",500000]];
			_return set[count _return,["B_Heli_Light_01_F",1600000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",4300000]];
		};
		if(__GETC__(life_donator) == 3) then
		{
		    _return set[count _return,["B_Quadbike_01_F",500]];
			_return set[count _return,["C_Hatchback_01_F",7000]];
			_return set[count _return,["C_SUV_01_F",11000]];
			_return set[count _return,["C_Offroad_01_F",22000]];
			_return set[count _return,["C_Hatchback_01_sport_F",31000]];
			_return set[count _return,["C_Van_01_transport_F",40000]];
			_return set[count _return,["C_Van_01_box_F",45000]];
			_return set[count _return,["C_Van_01_Fuel_F",50000]];
			_return set[count _return,["I_Truck_02_transport_F",90000]];
			_return set[count _return,["I_Truck_02_covered_F",110000]];
			_return set[count _return,["I_Truck_02_ammo_F",130000]];
			_return set[count _return,["I_Truck_02_fuel_F",150000]];
		    _return set[count _return,["O_Truck_03_transport_F",250000]];
			_return set[count _return,["O_Truck_03_covered_F",280000]];
			_return set[count _return,["O_Truck_03_ammo_F",360000]];
			_return set[count _return,["O_Truck_03_fuel_F",500000]];
			_return set[count _return,["B_Truck_01_transport_F",250000]];
			_return set[count _return,["B_Truck_01_covered_F",280000]];
			_return set[count _return,["B_Truck_01_ammo_F",360000]];
			_return set[count _return,["B_Truck_01_fuel_F",500000]];
			_return set[count _return,["B_Heli_Light_01_F",1500000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",4300000]];
			_return set[count _return,["B_Truck_01_box_F",2750000]];
			_return set[count _return,["I_Heli_Transport_02_F",10000000]];
			_return set[count _return,["I_MRAP_03_F",4000000]];
			_return set[count _return,["O_Truck_03_device_F",2700000]];
		};
		
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",17000],
			["C_SUV_01_F",38000],
			["C_Offroad_01_F",45000],
			["C_Hatchback_01_sport_F",63000],
			["C_Van_01_transport_F",80000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",90000],
			["I_Truck_02_transport_F",180000],
			["I_Truck_02_covered_F",220000],
			["I_Truck_02_ammo_F",260000],
			["I_Truck_02_fuel_F",300000],
			//Tempest
			["O_Truck_03_transport_F",800000],
			["O_Truck_03_covered_F",860000],
			["O_Truck_03_ammo_F",920000],
			["O_Truck_03_fuel_F",1800000],
			//hemtt
			["B_Truck_01_transport_F",800000],
			["B_Truck_01_covered_F",860000],
			["B_Truck_01_ammo_F",920000],
			["B_Truck_01_fuel_F",1800000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",850000],
			["B_Heli_Light_01_F",2000000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_MRAP_01_F",30000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",750000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",2000000],
			["O_Heli_Light_02_unarmed_F",8600000]
		];
	};
	
	case "cop_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",750000]];
		};
	};
	
	case "cop_airhq":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
			_return set[count _return,
			["B_MRAP_01_hmg_F",750000]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000],
			["C_Boat_Civil_01_rescue_F",60000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
