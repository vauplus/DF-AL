/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
    //Cars
	case "C_Offroad_01_F": {110};
	case "B_G_Offroad_01_F": {65};
	case "B_Quadbike_01_F": {25};
	case "C_Hatchback_01_F": {65};
	case "C_Hatchback_01_sport_F": {105};
	case "C_SUV_01_F": {80};
	//Small Trucks
	case "C_Van_01_transport_F": {150};
	case "I_G_Van_01_transport_F": {130};
	case "C_Van_01_box_F": {180};
	//Zamak
	case "I_Truck_02_covered_F": {220};
	case "I_Truck_02_transport_F": {260};
	case "I_Truck_02_ammo_F": {300};
	case "I_Truck_02_fuel_F": {340};
	//Tempest
	case "O_Truck_03_transport_F": {440};
	case "O_Truck_03_covered_F": {490};
	case "O_Truck_03_ammo_F": {550};
	case "O_Truck_03_fuel_F": {750};
	case "O_Truck_03_device_F": {650};
	//Hemtt
	case "B_Truck_01_transport_F": {440};
	case "B_Truck_01_covered_F": {490};
	case "B_Truck_01_ammo_F": {550};
	case "B_Truck_01_fuel_F": {750};
	case "B_Truck_01_box_F": {1000};
	//etc
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {210};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "B_Heli_Light_01_F": {100};
	case "O_Heli_Light_02_unarmed_F": {270};
	case "I_Heli_Transport_02_F": {390};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	default {-1};
};