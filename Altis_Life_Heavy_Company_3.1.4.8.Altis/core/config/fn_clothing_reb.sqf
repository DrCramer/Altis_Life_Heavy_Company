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
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,10000],
			["U_IG_Guerilla2_1",nil,10000],
			["U_IG_Guerilla2_2",nil,10000],
			["U_IG_Guerilla2_3",nil,10000],
			["U_IG_Guerilla3_1",nil,10000],
			["U_OG_Guerilla3_1",nil,10000],
			["U_OG_Guerilla2_1",nil,10000],	
			["U_BG_Guerrilla6_1",nil,10000],
			["EMU_Standard_Soldier",nil,10000],
			["EMU_Standard_Soldier6",nil,10000],
			["EMU_Standard_Soldier20",nil,10000],
			["EMU_Standard_Soldier22",nil,10000],
			["EMU_Standard_Soldier28",nil,10000],
			["EMU_Standard_Soldier29",nil,10000],
			["EMU_Standard_Soldier30",nil,10000],
			["EMU_Standard_Soldier31",nil,10000],
			["EMU_Standard_Soldier32",nil,10000],
			["EMU_Standard_Soldier33",nil,10000],
			["EMU_Standard_Soldier34",nil,10000],
			["EMU_Standard_Soldier35",nil,10000],
			["EMU_Standard_Soldier36",nil,10000],
			["EMU_Standard_Soldier37",nil,10000],
			["EMU_Standard_Soldier39",nil,10000],
			["EMU_Standard_Soldier40",nil,10000],
			["EMU_Standard_Soldier41",nil,10000],
			["EMU_Standard_Soldier42",nil,10000],
			["EMU_Standard_Soldier43",nil,10000],
			["EMU_Standard_Soldier44",nil,10000],
			["EMU_Standard_Soldier45",nil,10000],
			["EMU_Standard_Soldier51",nil,10000],
			["EMU_Standard_Soldier52",nil,10000],
			["EMU_Standard_Soldier53",nil,10000],
			["EMU_Standard_Soldier54",nil,10000],
			["EMU_Standard_Soldier55",nil,10000],
			["EMU_Standard_Soldier56",nil,10000],
			["EMU_Standard_Soldier101",nil,10000],
			["EMU_Standard_Soldier102",nil,10000],
			["EMU_Standard_Soldier103",nil,10000],
			["EMU_Standard_Soldier104",nil,10000],
			["EMU_Standard_Soldier105",nil,10000],
			["EMU_Standard_Soldier106",nil,10000],
			["EMU_Standard_Soldier107",nil,10000],
			["EMU_Standard_Soldier108",nil,10000],
			["EMU_Standard_Soldier109",nil,10000],
			["EMU_Standard_Soldier110",nil,10000],
			["EMU_Standard_Soldier111",nil,10000],
			["EMU_Standard_Soldier112",nil,10000],
			["EMU_Standard_Soldier122",nil,10000],
			["EMU_Standard_Soldier123",nil,10000],
			["EMU_Standard_Soldier127",nil,10000],
			["EMU_Standard_Soldier129",nil,10000],
			["EMU_Standard_Soldier130",nil,10000],
			["EMU_Standard_Soldier131",nil,10000],
			["EMU_Standard_Soldier132",nil,10000],
			["EMU_Standard_Soldier133",nil,10000],
			["U_PMC_CombatUniformLS_BSGPBB",nil,10000],
			["U_PMC_CombatUniformLS_BSGPSB",nil,10000],
			["U_PMC_CombatUniformLS_BSSPBB",nil,10000],
			["U_PMC_CombatUniformLS_BSSPSB",nil,10000],
			["U_PMC_CombatUniformLS_GSBPBB",nil,10000],
			["U_PMC_CombatUniformLS_GSSPBB",nil,10000],
			["U_PMC_CombatUniformLS_IndPBSBB",nil,10000],
			["U_PMC_CombatUniformLS_SSBPBB",nil,10000],
			["U_PMC_CombatUniformLS_SSGPBB",nil,10000],
			["U_PMC_CombatUniformLS_SSGPSB",nil,10000],
			["U_PMC_CombatUniformLS_ChckDBS_GPSB",nil,10000],
			["U_PMC_CombatUniformLS_ChckLB_GPBB",nil,10000],
			["U_PMC_CombatUniformLS_ChckLR_SPBB",nil,10000],
			["U_PMC_CombatUniformLS_ChckP_BPBB",nil,10000],
			["U_PMC_CombatUniformRS_BSGPBB",nil,10000],
			["U_PMC_CombatUniformRS_BSGPSB",nil,10000],
			["U_PMC_CombatUniformRS_BSSPBB",nil,10000],
			["U_PMC_CombatUniformRS_BSSPSB",nil,10000],
			["U_PMC_CombatUniformRS_GSBPBB",nil,10000],
			["U_PMC_CombatUniformRS_GSSPBB",nil,10000],
			["U_PMC_CombatUniformRS_IndPBSBB",nil,10000],
			["U_PMC_CombatUniformRS_SSBPBB",nil,10000],
			["U_PMC_CombatUniformRS_SSGPBB",nil,10000],
			["U_PMC_CombatUniformRS_SSGPSB",nil,10000],
			["U_PMC_CombatUniformRS_ChckDBS_GPSB",nil,10000],
			["U_PMC_CombatUniformRS_ChckLB_GPBB",nil,10000],
			["U_PMC_CombatUniformRS_ChckLR_SPBB",nil,10000],
			["U_PMC_CombatUniformRS_ChckP_BPBB",nil,10000],
			["U_I_G_Story_Protagonist_F",nil,15500],
			["U_I_G_resistanceLeader_F",nil,17500],
			["U_O_SpecopsUniform_ocamo",nil,20000],
			["U_O_CombatUniform_oucamo",nil,20000],
			["U_O_PilotCoveralls",nil,20000],
			["U_IG_leader","Guerilla Leader",20000],
			["U_O_OfficerUniform_ocamo",nil,55000],
			["U_O_GhillieSuit",nil,75000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["h_type1_desert",nil,650],
			["h_type2_desert",nil,650],
			["h_type3_desert",nil,650],
			["h_type1_black",nil,800],
			["h_type2_black",nil,800],
			["h_type3_black",nil,800],
			["h_type1_marpat",nil,900],
			["h_type2_marpat",nil,900],
			["H_ShemagOpen_tan",nil,900],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_HelmetLeaderO_oucamo",nil,2500],
			["H_HelmetO_oucamo",nil,2500],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo","Camo Bandanna",120],
			["H_Bandanna_surfer","Surfer Bandanna",130],
			["H_Bandanna_gry","Grey Bandanna",150],
			["H_Bandanna_cbr",nil,165],
			["H_Bandanna_surfer",nil,135],
			["H_Bandanna_khk","Khaki Bandanna",145],
			["H_Bandanna_sgg","Sage Bandanna",160],
			["H_StrawHat","Straw Fedora",225],
			["H_BandMask_blk","Hat & Bandanna",300],
			["H_Booniehat_tan",nil,425],
			["H_Hat_blue",nil,310],
			["H_Hat_brown",nil,276],
			["H_Hat_checker",nil,340],
			["H_Hat_grey",nil,280],
			["H_Hat_tan",nil,265],
			["H_Cap_blu",nil,150],
			["H_Cap_grn",nil,150],
			["H_Cap_grn_BI",nil,150],
			["H_Cap_oli",nil,150],
			["H_Cap_red",nil,150],
			["H_Cap_tan",nil,150]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,250],
			["G_Shades_Blue",nil,200],
			["G_Sport_Blackred",nil,200],
			["G_Balaclava_blk",nil,300],
			["G_Balaclava_combat",nil,800],
			["G_Balaclava_lowprofile",nil,300],
			["G_Bandanna_blk",nil,150],
			["G_Bandanna_shades",nil,150],
			["G_Bandanna_sport",nil,150],
			["G_Bandanna_aviator",nil,150],
			["G_Sport_Checkered",nil,200],
			["G_Sport_Blackyellow",nil,200],
			["G_Sport_BlackWhite",nil,200],
			["G_Squares",nil,100],
			["G_Lowprofile",nil,300],
			["G_Combat",nil,550]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_BandollierB_cbr",nil,5500],
			["V_BandollierB_rgr",nil,5500],
			["V_BandollierB_oli",nil,5500],
			["V_HarnessO_brn",nil,8500],
			["V_HarnessOGL_brn",nil,8500],
			["V_TacVest_blk",nil,12500],
			["V_TacVest_khk",nil,12500],
			["V_TacVest_brn",nil,12500],
			["EMU_V_PlateCarrier1_cbr",nil,7500],
			["EMU_V_PlateCarrier1_urb",nil,7500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["EMU_plecak_tor_met",nil,5000],
			["EMU_plecak_tor_oli",nil,5000],
			["EMU_plecak_tor_cbr",nil,5000],
			["EMU_plecak_tor_kh",nil,5000],
			["EMU_plecak_comp_cbr",nil,5000],
			["EMU_plecak_comp_kh",nil,5000],
			["EMU_plecak_comp_rgr",nil,5000],
			["EMU_plecak_fast_rgr",nil,5000],
			["EMU_plecak_fast_cbr",nil,5000],
			["EMU_plecak_kr_high",nil,5000],
			["EMU_plecak_kr_mand",nil,5000],
			["EMU_plecak_kr_nom",nil,5000],
			["EMU_plecak_kr_typh",nil,5000],
			["EMU_plecak_kr_urb",nil,5000],
			["EMU_plecak_kr_yet",nil,5000],
			["Urban_packACU",nil,6000],
			["Urban_packWood",nil,4000],
			["Urban_packDesert",nil,4000],
			["Urban_packDenmark",nil,4000],
			["B_AssaultPack_Base",nil,6000],
			["B_FieldPack_Base",nil,6000],
			["B_TacticalPack_Base",nil,6000],
			["B_Carryall_Base",nil,6000],
			["B_Bergen_Base",nil,6000],
			["Trixie_Backpack_ACR",nil,6000],
			["Trixie_Backpack_ACR_Small",nil,6000],
			["Trixie_Backpack_Civil_Assault",nil,6000],
			["Trixie_Backpack_TK_Alice",nil,6000],
			["Trixie_Backpack_RPG",nil,6000],
			["Trixie_Backpack_US",nil,6000],
			["Trixie_Backpack_US_assault",nil,6000],
			["Trixie_Backpack_US_assault_Coyote",nil,6000],
			["Trixie_Backpack_US_AUV",nil,6000],
			["Trixie_Coyote_UCP",nil,6000],
			["Trixie_Coyote_UCP_Antenna",nil,6000],
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};