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
			case (playerSide != west): {"Вы не полицейский!"};
			default
			{
				["Altis Cop Shop",
					[
						["arifle_sdar_F","Автоматический Электрошокер",1000],
						["hgun_P07_snds_F","Электрошокер",1000],
						["HandGrenade_Stone","Светошумовая Граната",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["NVGoggles_OPFOR",nil,2000],
						["NVGoggles_INDEP",nil,2000],
						["Chemlight_yellow",nil,300],
						["acc_flashlight",nil,1000],
						["B_UavTerminal",nil,1000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Магазин Для Автоматического Электрошокера",10]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Вы не медик!"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["NVGoggles_OPFOR",nil,2000],
						["NVGoggles_INDEP",nil,2000],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Вы не полицейский!"};
			case (__GETC__(life_coplevel) < 2): {"Вы не патрульный!"};
			default
			{
				["Pistol shop",
					[
						["RPG7V",nil,500],
						["PG7V",nil,110],
						["PG7VL",nil,110],
						["PG7VR",nil,110],
						["OG7",nil,110],
						["optic_tws",nil,110],
						["Launch_RPG32_F",nil,500],
						["RPG32_F",nil,100],
						["Titan_AA",nil,500],
						["launch_B_Titan_F",nil,100],
						["RH_deagle","Пустынный Орел",5000],
						["RH_7Rnd_50_AE",nil,250],
						["RH_sw659","SMITH&WESSON 645",5000],
						["RH_14Rnd_9x19_sw",nil,250],
						["RH_usp","Heckler&Koch USP",5000],
						["RH_uspm","Heckler&Koch USP Match",5000],
						["RH_12Rnd_45cal_usp",nil,250],
						["RH_mak","Пистолет Макарова",5000],
						["RH_8Rnd_9x18_Mak",nil,250],
						["RH_m1911",nil,1000],
						["RH_kimber",nil,5000],
						["RH_kimber_nw",nil,5000],
						["RH_7Rnd_45cal_m1911",nil,100],
						["RH_m9","Беретта 92FS (M9)",5000],
						["RH_m9c","Беретта 92FS (M9) Camo",5000],
						["RH_15Rnd_9x19_M9",nil,250],
						["RH_g17",nil,6000],
						["RH_g18",nil,6000],
						["RH_g19t",nil,6000],
						["RH_17Rnd_9x19_g17",nil,350],
						["RH_19Rnd_9x19_g18",nil,350],
						["RH_33Rnd_9x19_g18",nil,350],
						["RH_tt33","ТТ-33",5000],
						["RH_8Rnd_762_tt33",nil,250],
						["RH_p226","SIG-Sauer P226",5000],
						["RH_p226s","SIG-Sauer P226 Silver",5000],
						["RH_15Rnd_9x19_SIG",nil,250],
						["RH_mk2","Ruger Mk.II Amphibian",5000],
						["RH_10Rnd_22LR_mk2",nil,250],
						["RH_cz75",nil,5000],
						["RH_16Rnd_9x19_CZ",nil,250],
						["RH_vp70",nil,5000],
						["RH_18Rnd_9x19_VP",nil,250],
						["RH_mateba",nil,5000],
						["RH_6Rnd_44_Mag",nil,250],
						["RH_mp412",nil,5000],
						["RH_python",nil,5000],
						["RH_6Rnd_357_Mag",nil,250],
						["RH_fnp45",nil,5000],
						["RH_15Rnd_45cal_fnp",nil,250],
						["RH_muzi",nil,7000],
						["RH_30Rnd_9x19_UZI",nil,450],
						["RH_tec9",nil,7000],
						["RH_32Rnd_9x19_tec",nil,450],
						["Trixie_M110_NG",nil,20000],
						["Trixie_M110_NG_Black",nil,20000],
						["Trixie_M40A3",nil,20000],
						["Trixie_M40A3_NG",nil,20000],
						["Trixie_M40A3_Clean",nil,20000],
						["Trixie_CZ750",nil,20000],
						["Trixie_CZ750_Black",nil,20000],
						["Trixie_CZ750_Ghillie",nil,20000],
						["Trixie_M14DMR",nil,20000],
						["Trixie_M14DMR_NG",nil,20000],
						["Trixie_M14DMR_Clean",nil,20000],
						["Trixie_M14DMR_NG_Black",nil,20000],
						["Trixie_M14DMR_Clean_Black",nil,20000],
						["Trixie_M14DMR_NG_Black_Short",nil,20000],
						["Trixie_M14DMR_NG_Short",nil,20000],
						["Trixie_M14DMR_Clean_Pink",nil,20000],
						["Trixie_M14",nil,20000],
						["Trixie_M14_Black",nil,20000],
						["Trixie_M14_Green",nil,20000],
						["Trixie_AWM338",nil,20000],
						["Trixie_AWM338_Black",nil,20000],
						["Trixie_AWM338_Ghillie",nil,20000],
						["Trixie_M107",nil,20000],
						["Trixie_M107_Black",nil,20000],
						["Trixie_M107_Green",nil,20000],
						["Trixie_AS50",nil,20000],
						["Trixie_M24",nil,20000],
						["Trixie_M24_Clean",nil,20000],
						["Trixie_M24_Black",nil,20000],
						["Trixie_M24_Black_Clean",nil,20000],
						["Trixie_M24_Ghillie",nil,20000],
						["Trixie_LM308MWS",nil,20000],
						["Trixie_LSMARK4",nil,10000],
						["Trixie_LSMARK4_Delta",nil,10000],
						["Trixie_SB31250",nil,10000],
						["Trixie_SB31250_Net",nil,10000],
						["Trixie_M68CCO",nil,10000],
						["Trixie_M68CCO_Net",nil,10000],
						["Trixie_Cyclone",nil,10000],
						["Trixie_Cyclone_Camo",nil,10000],
						["Trixie_Cyclone_Net",nil,10000],
						["Trixie_Ranger3",nil,10000],
						["Trixie_Ranger3_Camo",nil,10000],
						["Trixie_Ranger3_Net",nil,10000],
						["Trixie_Rangefinder",nil,2000],
						["Trixie_Rangefinder_Tripod",nil,2000],
						["B_762x51_Ball",nil,500],
						["B_408_Ball",nil,500],
						["B_127x108_Ball",nil,5000],
						["B_556x45_Ball",nil,500],
						["Trixie_556_Mk262_Ball",nil,500],
						["Trixie_762_Ball",nil,1000],
						["Trixie_338_Ball",nil,1000],
						["Trixie_127_Ball",nil,5000],
						["B_556x45_Ball",nil,1000]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"Вы не сержант!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["HandGrenade_Stone","Светошумовая Граната",1700],
						["optic_MRCO",nil,0],
						["hlc_rifle_ak74","АК74",5000],
						["hlc_rifle_aks74","АКС-74",5000],
						["hlc_rifle_ak12","АК-12",5000],
						["hlc_rifle_aks74u","АКС74У",5000],
						["hlc_rifle_aks74_GL","АКС74 + ГП30",5000],
						["hlc_rifle_aek971","АЕК-971",5000],
						["hlc_optic_kobra","Прицел Кобра",5000],
						["hlc_30Rnd_545x39_t_ak",nil,500],
						["hlc_45Rnd_545x39_t_rpk",nil,500],
						["hlc_muzzle_545SUP_AK",nil,500],
						["hlc_rifle_ak47","АК-47",5000],
						["hlc_rifle_akm","АКМ",5000],
						["hlc_rifle_akmgl","АКМ + ГП25",5000],
						["hlc_VOG25_AK",nil,1000],
						["hlc_GRD_White",nil,200],
						["hlc_GRD_red",nil,200],
						["hlc_GRD_green",nil,200],
						["hlc_GRD_blue",nil,200],
						["hlc_GRD_orange",nil,200],
						["hlc_GRD_purple",nil,200],
						["hlc_rifle_rpk","РПК-74",10000],
						["hlc_30Rnd_762x39_t_ak",nil,200],
						["hlc_75Rnd_762x39_m_rpk",nil,700],
						["hlc_muzzle_762SUP_AK",nil,1000],
						["HLC_Optic_PSO1","ПСО-1",500],
						["HLC_Optic_1p29","УСП-1",500],
						["hlc_optic_kobra","Кобра",0],
						["hlc_rifle_RU556",nil,10000],
						["hlc_rifle_RU5562",nil,10000],
						["hlc_rifle_Colt727",nil,10000],
						["hlc_rifle_bcmjack",nil,10000],
						["hlc_rifle_Colt727_GL",nil,10000],	
						["3Rnd_HE_Grenade_shell",nil,200],
						["hlc_rifle_vendimus",nil,10000],
						["hlc_rifle_SAMR",nil,10000],
						["hlc_rifle_Bushmaster300",nil,10000],
						["hlc_rifle_honeybadger",nil,10000],
						["29rnd_300BLK_STANAG",nil,1000],
						["hlc_50rnd_556x45_EPR",nil,1000],
						["hlc_rifle_LAR",nil,10000],
						["hlc_rifle_c1A1",nil,10000],
						["hlc_rifle_FAL5061",nil,10000],
						["hlc_rifle_STG58F",nil,10000],
						["hlc_rifle_SLR",nil,10000],
						["hlc_rifle_L1A1slr",nil,10000],
						["hlc_rifle_osw_GL",nil,10000],
						["hlc_rifle_falosw",nil,10000],
						["hlc_20Rnd_762x51_t_fal",nil,1000],
						["hlc_muzzle_snds_fal",nil,5000],
						["hlc_optic_suit",nil,5000],
						["hlc_optic_PVS4FAL",nil,5000],
						["hlc_rifle_psg1",nil,10000],
						["hlc_rifle_g3sg1",nil,10000],
						["hlc_rifle_g3ka4",nil,10000],
						["hlc_rifle_hk51",nil,10000],
						["HLC_Rifle_g3ka4_GL",nil,10000],
						["hlc_rifle_g3a3",nil,10000],
						["hlc_20rnd_762x51_t_G3",nil,1000],
						["hlc_rifle_hk53",nil,10000],
						["hlc_30rnd_556x45_t_HK33",nil,1000],
						["HLC_Optic_ZFSG1",nil,5000],
						["hlc_optic_accupoint_g3",nil,5000],
						["launch_RPG32_F",nil,10000],
						["RPG32_HE_F",nil,1000],
						["launch_NLAW_F",nil,10000],
						["NLAW_F",nil,10000],
						["hlc_rifle_M14",nil,10000],
						["hlc_rifle_M21",nil,10000],
						["hlc_rifle_m14dmr",nil,10000],
						["hlc_rifle_m14sopmod",nil,10000],
						["hlc_20Rnd_762x51_T_M14",nil,5000],
						["hlc_muzzle_snds_M14",nil,5000],
						["hlc_optic_artel_m14",nil,5000],
						["hlc_optic_LRT_m14",nil,5000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский"};
			case (!license_civ_rebel): {"У вас нету лицензии повстанца!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275],
						["hlc_rifle_ak74",nil,40000],
						["hlc_rifle_aks74",nil,40000],
						["hlc_rifle_ak12",nil,40000],
						["hlc_rifle_aks74u",nil,40000],
						["hlc_rifle_aks74_GL",nil,40000],
						["hlc_rifle_aek971",nil,40000],
						["hlc_optic_kobra",nil,10000],
						["hlc_30Rnd_545x39_t_ak",nil,5000],
						["hlc_45Rnd_545x39_t_rpk",nil,6000],
						["hlc_muzzle_545SUP_AK",nil,7000],
						["hlc_rifle_ak47",nil,40000],
						["hlc_rifle_akm",nil,40000],
						["hlc_rifle_akmgl",nil,40000],
						["hlc_VOG25_AK",nil,10000],
						["hlc_GRD_White",nil,1000],
						["hlc_GRD_red",nil,1000],
						["hlc_GRD_green",nil,1000],
						["hlc_GRD_blue",nil,1000],
						["hlc_GRD_orange",nil,1000],
						["hlc_GRD_purple",nil,1000],
						["hlc_rifle_rpk",nil,60000],
						["hlc_30Rnd_762x39_t_ak",nil,5000],
						["hlc_75Rnd_762x39_m_rpk",nil,5000],
						["hlc_muzzle_762SUP_AK",nil,5000],
						["HLC_Optic_PSO1",nil,5000],
						["HLC_Optic_1p29",nil,5000],
						["RPG7V",nil,120000],
						["PG7V",nil,120000],			
						["hlc_rifle_LAR",nil,60000],	
						["hlc_rifle_falosw",nil,60000],
						["hlc_optic_suit",nil,5000],
						["hlc_20Rnd_762x51_t_fal",nil,1000],
						["Trixie_M110_NG",nil,70000],
						["Trixie_M110_NG_Black",nil,70000],
						["Trixie_M40A3",nil,70000],
						["Trixie_M40A3_NG",nil,70000],
						["Trixie_M40A3_Clean",nil,70000],
						["Trixie_CZ750",nil,70000],
						["Trixie_CZ750_Black",nil,70000],
						["Trixie_CZ750_Ghillie",nil,70000],
						["Trixie_M14DMR",nil,70000],
						["Trixie_M14DMR_NG",nil,70000],
						["Trixie_M14DMR_Clean",nil,70000],
						["Trixie_M14DMR_NG_Black",nil,70000],
						["Trixie_M14DMR_Clean_Black",nil,70000],
						["Trixie_M14DMR_NG_Black_Short",nil,70000],
						["Trixie_M14DMR_NG_Short",nil,70000],
						["Trixie_M14DMR_Clean_Pink",nil,70000],
						["Trixie_M14",nil,70000],
						["Trixie_M14_Black",nil,70000],
						["Trixie_M14_Green",nil,70000],
						["Trixie_AWM338",nil,70000],
						["Trixie_AWM338_Black",nil,70000],
						["Trixie_AWM338_Ghillie",nil,70000],
						["Trixie_M107",nil,70000],
						["Trixie_M107_Black",nil,70000],
						["Trixie_M107_Green",nil,70000],
						["Trixie_AS50",nil,70000],
						["Trixie_M24",nil,70000],
						["Trixie_M24_Clean",nil,70000],
						["Trixie_M24_Black",nil,70000],
						["Trixie_M24_Black_Clean",nil,70000],
						["Trixie_M24_Ghillie",nil,70000],
						["Trixie_LM308MWS",nil,70000],
						["Trixie_LSMARK4",nil,15000],
						["Trixie_LSMARK4_Delta",nil,15000],
						["Trixie_SB31250",nil,15000],
						["Trixie_SB31250_Net",nil,15000],
						["Trixie_M68CCO",nil,10000],
						["Trixie_M68CCO_Net",nil,10000],
						["Trixie_Cyclone",nil,15000],
						["Trixie_Cyclone_Camo",nil,15000],
						["Trixie_Cyclone_Net",nil,15000],
						["Trixie_Ranger3",nil,15000],
						["Trixie_Ranger3_Camo",nil,15000],
						["Trixie_Ranger3_Net",nil,15000],
						["Trixie_Rangefinder",nil,15000],
						["B_762x51_Ball",nil,5000],
						["B_408_Ball",nil,5000],
						["B_127x108_Ball",nil,15000],
						["B_556x45_Ball",nil,5000],
						["Trixie_556_Mk262_Ball",nil,5000],
						["Trixie_762_Ball",nil,10000],
						["Trixie_338_Ball",nil,10000],
						["Trixie_127_Ball",nil,15000],
						["B_556x45_Ball",nil,10000]							
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			case (!license_civ_gun): {"У вас нету лицензии на оружие!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["RH_deagle",nil,10000],
						["RH_7Rnd_50_AE",nil,10000],
						["RH_sw659",nil,10000],
						["RH_14Rnd_9x19_sw",nil,10000],
						["RH_usp",nil,10000],
						["RH_uspm",nil,10000],
						["RH_12Rnd_45cal_usp",nil,500],
						["RH_mak",nil,10000],
						["RH_8Rnd_9x18_Mak",nil,500],
						["RH_m1911",nil,10000],
						["RH_kimber",nil,10000],
						["RH_kimber_nw",nil,10000],
						["RH_7Rnd_45cal_m1911",nil,500],
						["RH_m9",nil,10000],
						["RH_m9c",nil,10000],
						["RH_15Rnd_9x19_M9",nil,500],
						["RH_g17",nil,10000],
						["RH_g18",nil,10000],
						["RH_g19t",nil,10000],
						["RH_17Rnd_9x19_g17",nil,500],
						["RH_19Rnd_9x19_g18",nil,500],
						["RH_tt33",nil,10000],
						["RH_8Rnd_762_tt33",nil,500],
						["RH_p226",nil,10000],
						["RH_p226s",nil,10000],
						["RH_15Rnd_9x19_SIG",nil,500],
						["RH_mk2",nil,10000],
						["RH_10Rnd_22LR_mk2",nil,500],
						["RH_cz75",nil,10000],
						["RH_16Rnd_9x19_CZ",nil,500],
						["RH_vp70",nil,10000],
						["RH_18Rnd_9x19_VP",nil,500],
						["RH_mateba",nil,10000],
						["RH_6Rnd_44_Mag",nil,500],
						["RH_mp412",nil,10000],
						["RH_python",nil,10000],
						["RH_6Rnd_357_Mag",nil,500],
						["RH_fnp45",nil,10000],
						["RH_15Rnd_45cal_fnp",nil,500],
						["RH_muzi",nil,10000],
						["RH_30Rnd_9x19_UZI",nil,500],
						["RH_tec9",nil,10000],
						["RH_32Rnd_9x19_tec",nil,500]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Вы не гражданский!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
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
		["Altis General Store",
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
