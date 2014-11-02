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
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
			_ret set[count _ret,["TCG_PDCPL","Police Uniform",10000]];
			_ret set[count _ret,["TCG_TRPSGT","Trooper Uniform",10000]];
			_ret set[count _ret,["TCG_PDAV","Pilot Uniform",10000]];
			_ret set[count _ret,["JaKdo_uniform_black","Black Uniform",15000]];
			_ret set[count _ret,["JaKdo_uniform_spec3","Special Uniform",15000]];
			
			if(__GETC__(life_adminlevel) > 4) then
		{
			_ret set[count _ret,["JaKdo_uniform_Us3ctt","Desert Uniform",0]];
		};
			
	};
	
	//Hats
	case 1:
	{
			_ret set[count _ret,["H_Cap_police","Police Cap",100]];
			_ret set[count _ret,["cap_blk","Black Cap",100]];
			_ret set[count _ret,["JaKdo_AUT_PASGTHelmet_Black1","Black Helmet",1500]];
			
			if(__GETC__(life_adminlevel) > 4) then
		{
			_ret set[count _ret,["JaKdo_AUT_PASGTHelmet_tan1","Desert Helmet",0]];
		};
			
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,250],
			["G_Shades_Blue",nil,200],
			["G_Sport_Blackred",nil,200],
			["G_Sport_Checkered",nil,200],
			["G_Sport_Blackyellow",nil,200],
			["G_Sport_BlackWhite",nil,200],
			["G_Balaclava_blk",nil,350],
			["G_Balaclava_combat",nil,350],
			["G_Balaclava_lowprofile",nil,350],
			["G_Tactical_Black",nil,350],
			["G_Tactical_Clear",nil,350],
			["G_Aviator",nil,750],
			["G_Squares",nil,800],
			["G_Lowprofile",nil,800],
			["G_Combat",nil,1000],
			["Mask_M40",nil,5000],
			["Mask_M40_OD",nil,5000],
			["Mask_M50",nil,10000]
		];
	};
	
	//Vest
	case 3:
	{
			_ret pushBack ["V_TacVest_blk_POLICE",nil,1500];	
			_ret pushBack ["TCG_policevest1",nil,1500];
			_ret pushBack ["TCG_troopervest1",nil,1500];
			
			if(__GETC__(life_adminlevel) > 4) then
		{
			_ret set[count _ret,["JaKdo_vest_Majordesert","Desert Vest",0]];
			_ret set[count _ret,["EMU_V_hostage","Black Vest",0]];
		};
			
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["EMU_plecak_fast_blk",nil,1500],
			["B_Kitbag_cbr",nil,1500],
			["JaKdo_ruck_oliv",nil,1700],
			["B_UAV_01_backpack_F",nil,4500]	
		];
	};
};

_ret;