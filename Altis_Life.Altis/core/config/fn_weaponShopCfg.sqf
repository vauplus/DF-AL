#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Anwärterladen",
					[
						["hgun_Pistol_heavy_01_F","Taser Pistole",2000],
						["11Rnd_45ACP_Mag",nil,100],
						["optic_MRD","Pistolenvisier",500],
						["muzzle_snds_acp",nil,500],
						["arifle_Katiba_F","Taser Gewehr",20000],
						["30Rnd_65x39_caseless_green","Taser Mag",1000],
						["optic_Aco",Visier,1500],
						["HandGrenade_Stone","Blendgranate",2000],
						["ItemGPS","Navigationsgerät",100],
						["Binocular","Fernglas",1000],
						["NVGoggles_OPFOR","Nachtsichtgerät",2000],
						["Medikit","Verbandskasten",250],
						["ToolKit","Werkzeugkasten",250]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Arzt!"};
			default {
				["Arztladen",
					[
						["ItemGPS","Navigationsgerät",100],
						["Binocular","Fernglas",1000],
						["NVGoggles_OPFOR","Nachtsichtgerät",2000],
						["Medikit","Verbandskasten",250],
						["ToolKit","Werkzeugkasten",250],
						["B_FieldPack_ocamo","Feldrucksack",3000]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (__GETC__(life_donator) == 0): {"Du bist kein Spender!"};
			case (__GETC__(life_donator) == 1):
			default
			{
				["Spender Shop 1",
					[
						["hgun_Rook40_F",nil,2500],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_PDW2000_F",nil,12500],
						["30Rnd_9x21_Mag",nil,75],
						["optic_ACO_grn_smg",nil,2500],
						["arifle_SDAR_F",nil,45000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_TRG20_F",nil,70000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_TRG21_F",nil,70000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,70000],
						["30Rnd_65x39_caseless_green",nil,275],
						["srifle_DMR_01_F",nil,120000],
						["10Rnd_762x51_Mag",nil,500],
						["LMG_Zafir_F",nil,120000],
						["150Rnd_762x51_Box",nil,2500],
						["launch_O_Titan_F",nil,770000],
						["launch_Titan_short_F",nil,770000],
						["Titan_AA",nil,120000],
						["Titan_AT",nil,120000],
						["Titan_AP",nil,120000],
						["muzzle_snds_H",nil,5000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_M",nil,5000],
						["ToolKit",nil,50],
						["itemgps",nil,50]
					]
				];
			};
			case (__GETC__(life_donator) == 2):
			default
			{
				["Spender Shop 2",
					[
						["hgun_Rook40_F",nil,2500],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_PDW2000_F",nil,12500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MK20C_plain_F",nil,15000],
						["30Rnd_556x45_Stanag",nil,125],
						["arifle_SDAR_F",nil,35000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_TRG20_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_TRG21_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,50000],
						["30Rnd_65x39_caseless_green",nil,275],
						["srifle_DMR_01_F",nil,100000],
						["10Rnd_762x51_Mag",nil,500],
						["LMG_Zafir_F",nil,100000],
						["150Rnd_762x51_Box",nil,2500],
						["launch_O_Titan_F",nil,500000],
						["launch_Titan_short_F",nil,500000],
						["Titan_AA",nil,100000],
						["Titan_AT",nil,100000],
						["Titan_AP",nil,100000],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,2500],
						["optic_DMS",nil,5000],
						["optic_NVS",nil,6000],
						["muzzle_snds_H",nil,5000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_M",nil,5000],
						["NVGoggles",nil,1250],
						["ToolKit",nil,50],
						["itemgps",nil,50]
					]
				];
			};
			
			case (__GETC__(life_donator) == 3):
			default
			{
				["Spender Shop 3",
					[
						["hgun_Rook40_F",nil,2500],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_PDW2000_F",nil,12500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MK20C_plain_F",nil,15000],
						["30Rnd_556x45_Stanag",nil,125],
						["arifle_SDAR_F",nil,35000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_TRG20_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_TRG21_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,50000],
						["30Rnd_65x39_caseless_green",nil,275],
						["srifle_DMR_01_F",nil,100000],
						["10Rnd_762x51_Mag",nil,500],
						["LMG_Zafir_F",nil,100000],
						["150Rnd_762x51_Box",nil,2500],
						["srifle_GM6_F",nil,400000],
						["5Rnd_127x108_Mag",nil,500],
						["5Rnd_127x108_APDS_Mag",nil,600],
						["arifle_Mk20_GL_plain_F",nil,800000],
						["30Rnd_556x45_Stanag",nil,300],
						["launch_O_Titan_F",nil,400000],
						["launch_Titan_short_F",nil,400000],
						["Titan_AA",nil,100000],
						["Titan_AT",nil,100000],
						["Titan_AP",nil,100000],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,2500],
						["optic_DMS",nil,5000],
						["optic_MRCO",nil,5000],
						["optic_NVS",nil,6000],
						["optic_SOS",nil,10000],
						["muzzle_snds_H",nil,5000],
						["muzzle_snds_B",nil,5000],
						["muzzle_snds_M",nil,5000],
						["1Rnd_HE_Grenade_shell",nil,33000],
						["1Rnd_SmokeOrange_Grenade_shell",nil,5000],
						["NVGoggles",nil,1250],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["Rangefinder",nil,500]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 2): {"Du bist kein Polizist!"};
			default
			{
				["Polizeiladen",
					[
						["hgun_Pistol_heavy_01_F","Taser Pistole",2000],
						["11Rnd_45ACP_Mag",nil,100],
						["optic_MRD","Pistolenvisier",500],
						["muzzle_snds_acp",nil,500],
						["arifle_Katiba_F","Taser Gewehr",20000],
						["30Rnd_65x39_caseless_green","Taser Mag",1000],
						["optic_Aco",Visier,1500],
						["HandGrenade_Stone","Blendgranate",2000],
						["ItemGPS","Navigationsgerät",100],
						["Binocular","Fernglas",1000],
						["NVGoggles_OPFOR","Nachtsichtgerät",2000],
						["Medikit","Verbandskasten",250],
						["ToolKit","Werkzeugkasten",250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 3): {"Du bist kein Bundespolizist!"};
			default
			{
				["Bundespolizeiladen",
					[
						["hgun_Pistol_heavy_01_F","Taser Pistole",2000],
						["11Rnd_45ACP_Mag",nil,100],
						["optic_MRD","Pistolenvisier",500],
						["muzzle_snds_acp",nil,500],
						["arifle_Katiba_F","Taser Gewehr",20000],
						["30Rnd_65x39_caseless_green","Taser Mag",1000],
						["arifle_MXM_Black_F","6,5mm MXM F",30000],
						["30Rnd_65x39_caseless_mag","6,5mm 30 Schuss",100],
						["muzzle_snds_H","6,5mm Schalldämpfer",2500],
						["optic_Arco","Visier",2000],
						["optic_NVS","Nachtsichtvisier",2500],
						["HandGrenade_Stone","Blendgranate",2000],
						["ItemGPS","Navigationsgerät",100],
						["Rangefinder","Entfernungsmesser",2000],
						["NVGoggles_OPFOR","Nachtsichtgerät",2000],
						["Medikit","Verbandskasten",250],
						["ToolKit","Werkzeugkasten",250]
					]
				];
			};
		};
	};
	
	case "cop_sek":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 4): {"Du bist kein S.E.K!"};
			default
			{
				["S.E.K Laden",
					[
						["hgun_Pistol_heavy_01_F","Taser Pistole",2000],
						["11Rnd_45ACP_Mag",nil,100],
						["optic_MRD","Pistolenvisier",500],
						["muzzle_snds_acp",nil,500],
						["arifle_Katiba_F","Taser Gewehr",20000],
						["30Rnd_65x39_caseless_green","Taser Mag",1000],
						["arifle_MXM_Black_F","6,5mm MXM F",30000],
						["30Rnd_65x39_caseless_mag","6,5mm 30 Schuss",100],
						["muzzle_snds_H","6,5mm Schalldämpfer",2500],
						["optic_Arco","Visier",2000],
						["optic_NVS","Nachtsichtvisier",2500],
						["HandGrenade_Stone","Blendgranate",2000],
						["ItemGPS","Navigationsgerät",100],
						["Rangefinder","Entfernungsmesser",2000],
						["NVGoggles_OPFOR","Nachtsichtgerät",2000],
						["Medikit","Verbandskasten",250],
						["ToolKit","Werkzeugkasten",250]
					]
				];
			};
		};
	};
	
	case "cop_polizeichef":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 5): {"Du bist kein Polizeichef!"};
			default
			{
				["Polizeichefladen",
					[
						["hgun_Pistol_heavy_01_F","Taser Pistole",2000],
						["11Rnd_45ACP_Mag",nil,100],
						["optic_MRD","Pistolenvisier",500],
						["muzzle_snds_acp",nil,500],
						["arifle_Katiba_F","Taser Gewehr",20000],
						["30Rnd_65x39_caseless_green","Taser Mag",1000],
						["srifle_EBR_F","7,62mm EBR F",30000],
						["20Rnd_762x51_Mag","7,62mm 20 Schuss",100],
						["muzzle_snds_B","7,62mm Schalldämpfer",2750],
						["srifle_LRR_F","50mm Intervention",50000],
						["7Rnd_408_Mag","50mm 7 Schuss",500],
						["optic_Arco","Visier",1500],
						["optic_NVS","Nachtsichtvisier",2500],
						["optic_LRPS","Interventionvisier",1500],
						["launch_RPG32_F","Raketenwerfer",75000],
						["RPG32_F","Flugabwehr",1000],
						["RPG32_HE_F","Fahrzeugabwehr",1000],
						["HandGrenade_Stone","Blendgranate",2000],
						["ItemGPS","Navigationsgerät",100],
						["Rangefinder","Entfernungsmesser",2000],
						["NVGoggles_OPFOR","Nachtsichtgerät",2000],
						["Medikit","Verbandskasten",250],
						["ToolKit","Werkzeugkasten",250]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast keine Rebellen-Lizenz!"};
			default
			{
				["Rebellenladen",
					[
						["arifle_SDAR_F",nil,75000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_TRG20_F",nil,100000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_TRG21_F",nil,100000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,100000],
						["30Rnd_65x39_caseless_green",nil,275],
						["srifle_DMR_01_F",nil,150000],
						["10Rnd_762x51_Mag",nil,500],
						["LMG_Zafir_F",nil,150000],
						["150Rnd_762x51_Box",nil,2500],
						["launch_O_Titan_F",nil,800000],
						["launch_Titan_short_F",nil,800000],
						["Titan_AA",nil,150000],
						["Titan_AT",nil,150000],
						["Titan_AP",nil,150000],
						["optic_ACO_grn",nil,10000],
						["optic_Holosight",nil,10000],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,1000],
						["optic_Hamr",nil,20000],
						["muzzle_snds_H",nil,25000],
						["muzzle_snds_B",nil,25000],
						["muzzle_snds_M",nil,25000],
						["SmokeShellOrange",nil,100],
						["SmokeShellYellow",nil,100],
						["SmokeShellPurple",nil,100],
						["SmokeShellGreen",nil,100],
						["SmokeShell",nil,100],												
						["SmokeShellRed",nil,100]		
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast keine Waffen-Lizenz!"};
			default
			{
				["Waffenladen",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Gemischtwarenladen",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
