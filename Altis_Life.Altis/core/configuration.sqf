#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 3; //Scaled in minutes
life_has_insurance = false;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,750); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,7); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang Stuff
__CONST__(life_gangPrice,75000);
__CONST__(life_gangUpgradeBase,10000);
__CONST__(life_gangUpgradeMultipler,2.5);

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 64; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 64; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Food Variables *******
*****************************
*/
life_eat_Salema = 40;
life_eat_Ornate = 20;
life_eat_Mackerel = 20;
life_eat_Tuna = 100;
life_eat_Mullet = 30;
life_eat_CatShark = 60;
life_eat_Rabbit = 20;
life_eat_Apple = 5;
life_eat_turtlesoup = 62;
life_eat_donuts = 30;

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,10); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,3000);
__CONST__(life_impound_boat,5000);
__CONST__(life_impound_air,10000);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 10000; //Starting Bank Money
		life_paycheck = 11000; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 10000; //Starting Bank Money
		life_paycheck = 2500; //Paycheck Amount
	};
	
	case independent: 
	{
		life_atmcash = 10000;
		life_paycheck = 3000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_banane",
	"life_inv_tabaku",
	"life_inv_tabakp",
	"life_inv_bohrer",
	"life_inv_wood",
	"life_inv_coal",
	"life_inv_uranore",
	"life_inv_uranp",
	"life_inv_hopfen",
	"life_inv_bier",
	"life_inv_frogu",
	"life_inv_frogp"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_tabak","civ"],
	["license_civ_kohle","civ"],
	["license_civ_uran","civ"],
	["license_civ_hopfen","civ"],
	["license_civ_frog","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500],["uranore",1500],["uranp",2100],["frogu",1600],["frogp",3600]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",1850],
	["heroinp",2650],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",3200],
	["turtle",3000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",2350],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",55],
	["cocaine",3000],
	["cocainep",5000],
	["diamond",750],
	["diamondc",2000],
	["iron_r",3200],
	["copper_r",1500],
	["salt_r",1650],
	["glass",1450],
	["fuelF",500],
	["spikeStrip",1200],
	["cement",1950],
	["goldbar",95000],
	["banane",68],
	["wood",165], 
	["uranore",3000],
	["uranp",6000],
	["tabaku",1000],
	["tabakp",2100],
	["coal",920],
	["blastingcharge",15000],
	["boltcutter",2500],
	["defusekit",500],
	["storagesmall",37500],
	["storagebig",75000],
	["bier",2500],
	["frogp",5100]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4100],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",150],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",350000],
	["bohrer",3500],
	["bier",2800],
	["oilp",1960],
	["tabakp",2730],
	["iron_r",1700],
	["diamondc",3000],
	["copper_r",990],
	["coal",920],
	["salt_r",1235],
	["glass",1500],
	["cement",920],
	["uranp",3900],
	["marijuana",4300],
	["cocainep",6000],
	["frogp",6200],
	["heroinp",5000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_Quadbike_01_F",500],
    ["C_Hatchback_01_F",2000],
    ["C_SUV_01_F",2500],
    ["C_Offroad_01_F",3500],
    ["C_Hatchback_01_sport_F",4000],
    ["B_G_Offroad_01_F",3500],
    ["O_MRAP_02_F",200000],
    ["B_MRAP_01_F",30000],
    ["I_MRAP_03_F",200000],
	["B_Heli_Transport_01_F",60000],
    ["B_Heli_Light_01_F",50000],
    ["I_Heli_Transport_02_F",100000],
    ["O_Heli_Light_02_unarmed_F",80000],
    ["C_Van_01_transport_F",6000],
    ["C_Van_01_box_F",7000],
    ["C_Van_01_Fuel_F",8000],
    ["I_Truck_02_transport_F",10000],
    ["I_Truck_02_covered_F",11000],
    ["I_Truck_02_ammo_F",12000],
    ["I_Truck_02_fuel_F",15000],
    ["O_Truck_03_transport_F",20000],
    ["O_Truck_03_covered_F",25000],
    ["O_Truck_03_ammo_F",32000],
    ["O_Truck_03_fuel_F",60000],
    ["B_Truck_01_transport_F",20000],
    ["B_Truck_01_covered_F",25000],
    ["B_Truck_01_ammo_F",32000],
    ["B_Truck_01_fuel_F",60000],
    ["B_Truck_01_box_F",80000],
    ["C_Rubberboat",2000],
    ["C_Boat_Civil_01_F",12000],
    ["C_Boat_Civil_01_rescue_F",20000],
    ["B_Boat_Transport_01_F",2000],
    ["C_Boat_Civil_01_police_F",12000],
    ["B_Boat_Armed_01_minigun_F",25000],
    ["B_SDV_01_F",30000],
    ["I_Truck_02_medical_F",10000],
    ["O_Truck_03_medical_F",20000],
    ["B_Truck_01_medical_F",20000],
	["O_Truck_03_device_F",90000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",400],
	["C_Hatchback_01_F",6000],
	["C_SUV_01_F",10000],
	["C_Offroad_01_F",21000],
	["C_Hatchback_01_sport_F",30000],
	["B_G_Offroad_01_F",15000],
	["O_MRAP_02_F",420000],
	["B_MRAP_01_F",30000],
	["I_MRAP_03_F",600000],
	["B_Heli_Transport_01_F",200000],
	["B_Heli_Light_01_F",75000],
	["I_Heli_Transport_02_F",500000],
	["O_Heli_Light_02_unarmed_F",500000],
	["C_Van_01_transport_F",38000],
	["C_Van_01_box_F",42000],
	["C_Van_01_Fuel_F",45000],
	["I_Truck_02_transport_F",80000],
	["I_Truck_02_covered_F",100000],
	["I_Truck_02_ammo_F",120000],
	["I_Truck_02_fuel_F",140000],
	["O_Truck_03_transport_F",240000],
	["O_Truck_03_covered_F",270000],
	["O_Truck_03_ammo_F",350000],
	["O_Truck_03_fuel_F",480000],
	["B_Truck_01_transport_F",240000],
	["B_Truck_01_covered_F",270000],
	["B_Truck_01_ammo_F",350000],
	["B_Truck_01_fuel_F",480000],
	["B_Truck_01_box_F",700000],
	["C_Rubberboat",5000],
	["C_Boat_Civil_01_F",22000],
	["C_Boat_Civil_01_rescue_F",60000],
	["B_Boat_Transport_01_F",3000],
	["C_Boat_Civil_01_police_F",20000],
	["B_Boat_Armed_01_minigun_F",75000],
	["B_SDV_01_F",100000],
	["I_Truck_02_medical_F",25000],
	["O_Truck_03_medical_F",45000],
	["B_Truck_01_medical_F",60000]
];
__CONST__(life_garage_sell,life_garage_sell);