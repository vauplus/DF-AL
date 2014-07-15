/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Rebellen Händler"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,5000],
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11500],
			["U_O_SpecopsUniform_ocamo",nil,17500],
			["U_O_PilotCoveralls",nil,15610],
			["U_IG_leader","Guerilla Leader",15340],
			["U_I_OfficerUniform","Uniform",20500],
			["U_I_pilotCoveralls",nil,7000],
			["U_I_CombatUniform_shortsleeve",nil,15000],
			["U_I_CombatUniform",nil,15000],
			["U_O_CombatUniform_oucamo",nil,25000],
			["U_O_Wetsuit",nil,10000],
			["U_O_GhillieSuit",nil,50000],
			["U_I_GhillieSuit",nil,50000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_Shemag_khk",nil,800],
			["H_Shemag_tan",nil,800],
			["H_Shemag_olive_hs",nil,800],
			["H_HelmetB_grass",nil,3800],
			["H_HelmetB_camo",nil,3800],
			["H_HelmetIA_net",nil,2800],
			["H_HelmetSpecB_paint1",nil,1800],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_CrewHelmetHeli_I",nil,7700],
			["H_Bandanna_camo",nil,650]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500],
			["V_BandollierB_cbr",nil,4500],
			["V_HarnessO_brn",nil,7500],
			["V_I_G_resistanceLeader_F",nil,10500],
			["V_HarnessOGL_brn","Suicide Vest",1000000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,500],
			["B_FieldPack_ocamo",nil,600],
			["B_Bergen_sgg",nil,600],
			["B_TacticalPack_oli",nil,700],
			["B_Kitbag_mcamo",nil,800],
			["B_Kitbag_cbr",nil,800],
			["B_Carryall_oli",nil,10000],
			["B_Carryall_khk",nil,10000]
		];
	};
};