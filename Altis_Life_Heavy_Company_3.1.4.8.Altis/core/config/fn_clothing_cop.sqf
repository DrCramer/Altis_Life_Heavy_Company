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
			_ret pushBack ["U_Rangemaster","Cop Uniform",25];
			_ret pushBack ["U_B_CombatUniform_mcam_tshirt",nil,350];
			_ret pushBack ["U_B_survival_uniform",nil,1250];
			_ret pushBack ["U_B_CombatUniform_mcam_worn",nil,550];
			_ret set[count _ret,["U_BasicBody",nil,0]];
			_ret set[count _ret,["TCG_PDCPL",nil,0]];
			_ret set[count _ret,["TCG_TRPCPL",nil,0]];
			_ret set[count _ret,["TCG_TRPSGT",nil,0]];
			_ret set[count _ret,["TCG_SWAT",nil,0]];
			_ret set[count _ret,["TCG_SERT",nil,0]];
	};
	
	//Hats
	case 1:
	{
			_ret set[count _ret,["cap_blk",nil,0]];
			_ret set[count _ret,["cap_head_blk",nil,0]];
			_ret set[count _ret,["boonie_blk",nil,0]];
			_ret pushBack ["H_HelmetB_plain_mcamo",nil,75];
			_ret pushBack ["H_Booniehat_mcamo",nil,120];
			_ret pushBack ["H_MilCap_mcamo",nil,100];
			_ret set[count _ret,["TCG_swathelmet",nil,0]];
			_ret set[count _ret,["TCG_serthelmet",nil,0]];
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
			["G_Balaclava_blk",nil,0],
			["G_Balaclava_combat",nil,0],
			["G_Balaclava_lowprofile",nil,0],
			["G_Tactical_Black",nil,0],
			["G_Tactical_Clear",nil,0],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["Mask_M40",nil,0],
			["Mask_M40_OD",nil,0],
			["Mask_M50",nil,0]
		];
	};
	
	//Vest
	case 3:
	{
			_ret pushBack ["V_Rangemaster_belt",nil,800];	
			_ret pushBack ["V_PlateCarrier2_rgr",nil,1500];
			_ret set[count _ret,["EMU_Tacticalvest_kh",0]];
			_ret set[count _ret,["EMU_V_hostage",0]];
			_ret set[count _ret,["EMU_V_PlateCarrier1_blk",nil,0]];
			_ret set[count _ret,["EMU_V_Harness_blk",nil,0]];
			_ret set[count _ret,["TCG_troopervest1",nil,0]];
			_ret set[count _ret,["TCG_policevest1",nil,0]];
			_ret set[count _ret,["TCG_swatvest1",nil,0]];
			_ret set[count _ret,["TCG_swatvest3",nil,0]];
			_ret set[count _ret,["TCG_sertvest1",nil,0]];
			_ret set[count _ret,["TCG_sertvest3",nil,0]];
			_ret set[count _ret,["V_PlateCarrierGL_rgr",nil,0]];
			_ret set[count _ret,["V_TacVest_khk",nil,0]];	

	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["EMU_plecak_tor_blk",nil,0],
			["EMU_plecak_comp_blk",nil,0],
			["EMU_plecak_fast_blk",nil,0],
			["EMU_plecak_kr_high",nil,0],
			["EMU_plecak_kr_mand",nil,0],
			["EMU_plecak_kr_nom",nil,0],
			["EMU_plecak_kr_typh",nil,0],
			["EMU_plecak_kr_yet",nil,0],
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500],
			["B_UAV_01_backpack_F",nil,4500]
		];
	};
};

_ret;