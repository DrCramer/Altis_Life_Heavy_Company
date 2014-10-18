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
			["Dar_Dar_02FirebirdSSVPolice",20000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",25000],
			["O_Heli_Light_02_unarmed_F",50000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
				["dbo_CIV_ol_bike",500],
				["dbo_CIV_new_bike",850],
				["C_Hatchback_01_F",9500],
				["C_Hatchback_01_sport_F",11500],
				["C_Offroad_01_F",12500],
				["C_SUV_01_F",35000],
				["C_Van_01_transport_F",40000],
				["B_G_Van_01_fuel_F",30000],
				["DAR_ImpalaCivE",11000],
				["DAR_ImpalaCivG",11000],
				["DAR_ImpalaCivF",11000],
				["DAR_ImpalaCivA",11000],
				["DAR_ImpalaCivC",10000],
				["DAR_ImpalaCivB",10000],
				["DAR_ImpalaCivD",10000],
				["DAR_ImpalaCiv",10000],
				["SAL_AudiCivBlack",17000],
				["SAL_AudiCivRed",17000],
				["SAL_AudiCivSilver",17000],
				["SAL_AudiCiv",17000],
				["DAR_TaurusCivBlack",20000],
				["DAR_TaurusCivBlue",20000],
				["DAR_TaurusCiv",20000],
				["DAR_FusionCivBlack",25000],
				["DAR_FusionCivBlue",25000],
				["DAR_FusionCivRed",25000],
				["DAR_FusionCiv",25000],
				["SAL_IROCCivBlack",30000],
				["SAL_IROCCivBlue",30000],
				["SAL_IROCCivRed",30000],
				["SAL_IROCCivSilver",30000],
				["SAL_IROCCiv",30000],
				["DAR_TahoeCiv",25000],
				["DAR_TahoeCivBlack",25000],
				["DAR_TahoeCivBlue",25000],
				["DAR_TahoeCivRed",25000],
				["DAR_TahoeCivSilver",25000],
				["DAR_M3CivWhite",37000],
				["DAR_M3CivBlack",37000],
				["DAR_M3CivGrey",37000],
				["DAR_ChallengerCivWhite",50000],
				["DAR_ChallengerCivBlack",50000],
				["DAR_ChallengerCivOrange",50000],
				["DAR_ChallengerCivRed",50000],
				["DAR_ChargerCiv",50000],
				["DAR_Charger_Blue",50000],
				["SAL_77TRANSAMCiv",150000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["DAR_4X4",90000],
			["I_Truck_02_transport_F",95000],
			["DAR_MK23",130000],
			["I_Truck_02_covered_F",150000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_03_transport_F",200000],
			["O_Truck_03_covered_F",250000],
			["B_Truck_01_box_F",350000],
			["O_Truck_03_device_F",450000],
			["B_Truck_01_fuel_F",100000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",15000],
			["emu_offroad_d1",35000],
			["B_G_Offroad_01_F",35000],
			["emu_offroad_d3",35000],
			["emu_offroad_t1",35000],
			["emu_offroad_d2",35000],
			["DAR_M1152",35000],
			["DAR_M1152Woodland",35000],
			["DAR_M1151WoodlandUA",55000],
			["DAR_M1151",85000],
			["DAR_M1151Woodland",85000],
			["DAR_MK27",160000],
			["DAR_MK27T",160000],	
			["HAFM_BAF_Jackal2_L2A1_D",300000],
			["HAFM_BAF_Jackal2_L2A1_W",300000],
			["DAR_MK23A",850000],
			["DAR_MaxxPro",850000],
			["DAR_MaxxProDXM",850000],
			["DAR_MaxxProPlus",850000],
			["B_Heli_Light_01_F",450000],
			["EMU_MH9",350000],
			["EMU_MH9_camo",350000],
			["Cha_Mi17_Ins",350000],
			["Cha_Mi17_TK_EP1",5000000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",800000];
		};
	};
	
	case "cop_car":
	{
			_return set[count _return,
			["Jonzie_96_Impala",2]];
			_return set[count _return,
			["Jonzie_96_Impala_Unmarked",20000]];
			_return set[count _return,
			["demian2435_police_car",20000]];
			_return set[count _return,
			["C_Offroad_01_F",20000]];
			_return set[count _return,
			["C_SUV_01_F",20000]];
			_return set[count _return,
			["Dar_TahoePolice",20000]];
			_return set[count _return,
			["Dar_TahoePoliceSlick",20000]];
			_return set[count _return,
			["Dar_TahoePoliceDet",20000]];
			_return set[count _return,
			["Dar_CVPIAuxiliary",20000]];
			_return set[count _return,
			["Dar_CVPISlick",20000]];
			_return set[count _return,
			["Dar_CVPIPolice",20000]];
			_return set[count _return,
			["Dar_ChargerPolice",20000]];
			_return set[count _return,
			["Dar_ChargerPoliceState",20000]];
			_return set[count _return,
			["Dar_ChargerPoliceStateSlick",20000]];
			_return set[count _return,
			["DAR_ExplorerPolice",20000]];
			_return set[count _return,
			["Dar_ExplorerPoliceStealth",20000]];
			_return set[count _return,
			["DAR_DAR_02FirebirdSSVPolice",20000]];
			_return set[count _return,
			["DAR_M1151_Deploy",40000]];
			_return set[count _return,
			["HAFM_BAF_Offroad_D",40000]];
			_return set[count _return,
			["HAFM_BAF_Offroad_W",40000]];
			_return set[count _return,
			["DAR_MaxxProDeploy",100000]];
			_return set[count _return,
			["DAR_MK23AD",100000]];
			_return set[count _return,
			["DAR_MK23ADT",100000]];
			_return set[count _return,
			["HAFM_BAF_Jackal2_L2A1_D",100000]];
			_return set[count _return,
			["HAFM_BAF_Jackal2_L2A1_W",100000]];
			
};
	
	case "civ_air":
	{
		_return =
		[
			["GNT_C185",200000],
			["B_Heli_Light_01_F",253000],
			["EMU_MH9_blk",260000],
			["EMU_MH9_yel",260000],
			["I_Heli_Transport_02_F",750000],
			["Cha_Mi17_Civilian",1000000]
		];
	};
	
	case "cop_air":
	{
		_return pushBack
		["B_Heli_Light_01_F",25000];
		_return pushBack
		["tcg_policehelo",25000];
		_return pushBack
		["PMC_MH9",25000];
		_return pushBack
		["EMU_MH9_navy",25000];
		_return pushBack
		["tcg_swathelo",30000];
		_return pushBack
		["I_Heli_light_03_unarmed_F",30000];
		_return pushBack
		["B_Heli_Transport_01_F",75000];
	};
	
	case "cop_airhq":
	{
			_return pushBack
			["B_Heli_Light_01_F",25000];
			_return pushBack
			["B_Heli_Transport_01_F",60000];
			_return pushBack
			["B_MRAP_01_hmg_F",90000];
			_return pushBack
			["tcg_policehelo",25000];
			_return pushBack
			["tcg_swathelo",25000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",30000];
			_return pushBack
			["EMU_MH9_navy",25000];
			_return pushBack
			["Cha_Mi17_CDF",30000];
			_return pushBack
			["B_UAV_02_CAS_F",30000];
			_return pushBack
			["GNT_C185",25000];
			_return pushBack
			["IVORY_T6A_1",25000];
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["GNT_C185F",10000],
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
