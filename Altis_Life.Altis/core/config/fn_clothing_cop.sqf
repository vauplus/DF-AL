#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bekleidungs Händler"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Rangemaster","Anwärter Uniform",1000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["U_Competitor","Polizist Uniform",1000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_BG_Guerilla2_1","Bundespolizei Uniform",1000]];
			_ret set[count _ret,["U_B_GhillieSuit","Tarnanzug",10000]];
			_ret set[count _ret,["U_B_Wetsuit","Taucheranzug",10000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
		   _ret set[count _ret,["U_B_survival_uniform","S.E.K Uniform",1000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
		   _ret set[count _ret,["U_BG_Guerilla2_2","Polizeichef Uniform",1000]];
		};
	};
	
	//Hats
	case 1:
	{
        _ret set[count _ret,["H_MilCap_blue","Anwärter Hut",1000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_MilCap_blue","Polizisten Hut",1000]];
			_ret set[count _ret,["H_PilotHelmetFighter_B","Tränengas Helm",1000]];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_Watchcap_sgg","Bundespolizei Hut",1000]];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{		
			_ret set[count _ret,["H_Booniehat_mcamo","S.E.K Hut",1000]];
			_ret set[count _ret,["H_Beret_ocamo","S.E.K Chef Hut",1000]];
		};
		
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["H_Beret_Colonel","Polizeichef Baret",1000]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt","Anwärter Veste",1000]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_TacVest_blk_POLICE","Polizei Veste",1000]];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk","Bundespolizei Veste",1000]];
			_ret set[count _ret,["V_RebreatherB","Taucher Veste",10000]];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["V_PlateCarrierSpec_rgr","S.E.K Veste",1000]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_FieldPack_blk",nil,500],
			["B_OutdoorPack_blk",nil,700],
			["B_AssaultPack_cbr",nil,700],
			["B_AssaultPack_blk",nil,1000],
			["B_Bergen_sgg",nil,2500],
			["B_Bergen_blk",nil,2500],
			["B_Carryall_cbr",nil,3500], 
			["B_Carryall_oucamo",nil,3500],
			["B_Parachute",nil,3000] 			
		];
	};
};

_ret;