/*
 * Mil placement random supply boxes per faction
 */

If !(isServer) exitWith {};

waitUntil {!isNil "ALiVE_STATIC_DATA_LOADED"};

ALIVE_factionDefaultSupplies = [] call ALIVE_fnc_hashCreate;
[ALIVE_factionDefaultSupplies, "OPF_F", ["Box_East_Ammo_F","Box_East_AmmoOrd_F","Box_East_Grenades_F","Box_East_Support_F","Box_East_Wps_F","Box_East_WpsLaunch_F","Box_East_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "OPF_G_F", ["Box_East_Ammo_F","Box_East_AmmoOrd_F","Box_East_Grenades_F","Box_East_Support_F","Box_East_Wps_F","Box_East_WpsLaunch_F","Box_East_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "IND_F", ["Box_IND_Ammo_F","Box_IND_AmmoOrd_F","Box_IND_Grenades_F","Box_IND_Support_F","Box_IND_Wps_F","Box_IND_WpsLaunch_F","Box_IND_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "BLU_F", ["Box_NATO_Ammo_F","Box_NATO_AmmoOrd_F","Box_NATO_Grenades_F","Box_NATO_Support_F","Box_NATO_Wps_F","Box_NATO_WpsLaunch_F","Box_NATO_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "BLU_G_F", ["Box_IND_Ammo_F","Box_IND_AmmoOrd_F","Box_IND_Grenades_F","Box_IND_Support_F","Box_IND_Wps_F","Box_IND_WpsLaunch_F","Box_IND_WpsSpecial_F"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultSupplies, "UK3CB_TKM_O", ["rhs_mags_crate","Box_IND_AmmoOrd_F","rhs_gear_crate","rhs_launcher_crate","rhs_spec_weapons_crate","ACE_medicalSupplyCrate_advanced"]] call ALIVE_fnc_hashSet;

/*
 * Compositions
 */

ALIVE_compositions = [] call ALIVE_fnc_hashCreate;
[ALIVE_compositions, "HQ", ["HQUnfoldedBMP_CUP_O_TK","HQUnfoldedBRDM_CUP_O_TK"]] call ALIVE_fnc_hashSet;
[ALIVE_compositions, "FieldHQ", ["HQUnfoldedBMP_CUP_O_TK","HQUnfoldedBRDM_CUP_O_TK"]] call ALIVE_fnc_hashSet;
[ALIVE_compositions, "camps", ["Camp_CUP_O_TK","UAVTerminal_CUP_O_TK","FortifiedFieldHQ1_CUP_O_TK","FortifiedFieldHQ2_CUP_O_TK","FortifiedFieldHQ8_CUP_O_TK","HQField_CUP_O_TK"]] call ALIVE_fnc_hashSet;
[ALIVE_compositions, "communications", ["RadioTower_CUP_O_TK"]] call ALIVE_fnc_hashSet;
[ALIVE_compositions, "fuel", ["FuelDump_CUP_O_TK","OilT_CUP_O_TK"]] call ALIVE_fnc_hashSet;
[ALIVE_compositions, "crashsites", ["smallOspreyCrashsite1"]] call ALIVE_fnc_hashSet;
[ALIVE_compositions, "objectives", ["FieldBarracks1_CUP_O_TK","FieldBarracks2_CUP_O_TK","FieldDepot_CUP_O_TK","FieldHQ_CUP_O_TK","FieldRadar_CUP_O_TK"]] call ALIVE_fnc_hashSet;
[ALIVE_compositions, "other", ["LivingQuarters_CUP_O_TK","Cache_CUP_O_TK","Generator_CUP_O_TK","Hospital_CUP_O_TK","BunkerTower8_CUP_O_TK","NestHBarrier_CUP_O_TK"]] call ALIVE_fnc_hashSet;
[ALIVE_compositions, "roadblocks", ["BunkerLarge_CUP_O_TK","TowerBunker_CUP_O_TK","VehicleHBarrier_CUP_O_TK","BunkerSmall_CUP_O_TK","Concrete_CUP_O_TK","Sandbag_CUP_O_TK","SandbagNet_CUP_O_TK"]] call ALIVE_fnc_hashSet;

/*
 * Civ Pop Defaults
 */

ALIVE_civilianWeapons = [] call ALIVE_fnc_hashCreate;
[ALIVE_civilianWeapons, "CIV", [["rhs_weap_6p53","rhs_18rnd_9x21mm_7N28"],["rhs_weap_tt33","rhs_mag_762x25_8"],["rhs_weap_savz61","rhsgref_20rnd_765x17_vz61"],["rhs_weap_akm","rhs_30Rnd_762x39mm"]]] call ALIVE_fnc_hashSet;
[ALIVE_civilianWeapons, "UK3CB_TKC_C", [["rhs_weap_6p53","rhs_18rnd_9x21mm_7N28"],["rhs_weap_tt33","rhs_mag_762x25_8"],["rhs_weap_savz61","rhsgref_20rnd_765x17_vz61"],["rhs_weap_akm","rhs_30Rnd_762x39mm"]]] call ALIVE_fnc_hashSet;