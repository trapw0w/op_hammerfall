_praeCrates = [prae_ammo_1, prae_ammo_2, prae_ammo_3];
_det7Crates = [det7_ammo_1, det7_ammo_2];
_meuCrates = [meu_ammo_1, meu_ammo_2];
_rangerCrates = [pub_ammo_1, pub_ammo_2, pub_ammo_3];
_falconCrates = [falcon_ammo_1, falcon_ammo_2];
_pilotCrates = [sad_ammo_1];
_hqCrates = [hq_ammo_1];


/*
 Object texture locations:
 6 - Flag slot
 7 - Flag slot other arm 
 4 - Insignia
*/

// Define PRAE Insignia
_praeInsignia = ["2CDO_Insignia","Add 2CDO Insignia","",{ 
	_player setObjectTexture [6,"\PRAE_Insignia\data\AUS\AUS5.paa"]; 
	_player setObjectTexture [7,"\PRAE_Insignia\data\AUS\AUS_IR.paa"];
	_player setObjectTexture [4,"\PRAE_Insignia\data\AUS\2cdo_rgt_ca.paa"];
 },{true}] call ace_interact_menu_fnc_createAction;

// Define Det-7 Insignia
_det7Insignia = ["DET7_Insignia","Add 1st SFOD-D Insignia","",{
	_player setObjectTexture [4,"\PRAE_Insignia\data\MISC\Sparta_Patch01_ca.paa"];
 },{true}] call ace_interact_menu_fnc_createAction;

// Define MEU Insignia
_marsocInsignia = ["MARSOC_Insignia","Add MARSOC Insignia","",{
	_player setObjectTexture [6,"\PRAE_Insignia\data\USA\US_Flag_mc_L_ca.paa"];
	_player setObjectTexture [4,"\PRAE_Insignia\data\USA\marine_raiders_grn_alt_ca.paa"];
 },{true}] call ace_interact_menu_fnc_createAction;

_pjInsignia = ["PJ_Insignia","Add Pararescue Insignia","",{
	_player setObjectTexture [6,"\PRAE_Insignia\data\USA\US_Flag_mc_L_ca.paa"];
	_player setObjectTexture [4,"\PRAE_Insignia\data\USA\pararescue_ca.paa"];
 },{true}] call ace_interact_menu_fnc_createAction;

// Define Ranger Insignia
_rangerInsignia = ["RANGER_Insignia","Add Ranger Insignia","",{
	_player setObjectTexture [4,"\PRAE_Insignia\data\USA\75ranger_1btn_ocp_ca.paa"];
 },{true}] call ace_interact_menu_fnc_createAction;

// Define Falcon Insignia
_falconInsignia = ["RANGERBTN2_Insignia","Add Ranger Insignia","",{
	_player setObjectTexture [4,"\PRAE_Insignia\data\USA\75ranger_2btn_ocp_ca.paa"];
 },{true}] call ace_interact_menu_fnc_createAction;

// Define Pilot Insignia 
_pilotInsignia = ["PILOT_Insignia","Add 160th SOAR Insignia","",{
	_player setObjectTexture [4,"\PRAE_Insignia\data\USA\160soar_ocp_ca.paa"];
 },{true}] call ace_interact_menu_fnc_createAction;

// Define HQ Insignia
_hqInsignia = ["HQ_Insignia","Add JSOC Insignia","",{
	_player setObjectTexture [4,"\PRAE_Insignia\data\USA\JSOC_Patch_ca.paa"];
 },{true}] call ace_interact_menu_fnc_createAction;

 _cctInsignia = ["CCT_Insignia","Add 23 STS Insignia","",{
	_player setObjectTexture [4,"\PRAE_Insignia\data\USA\23sts_ca.paa"];
 },{true}] call ace_interact_menu_fnc_createAction;

// Apply PRAE Interactions
{
	[_x, 0, ["ACE_MainActions"], _praeInsignia] call ace_interact_menu_fnc_addActionToObject;
} forEach _praeCrates;

// Apply Det 7 Interactions
{
	[_x, 0, ["ACE_MainActions"], _det7Insignia] call ace_interact_menu_fnc_addActionToObject;
} forEach _det7Crates;

// Apply MEU Interactions
{
	[_x, 0, ["ACE_MainActions"], _marsocInsignia] call ace_interact_menu_fnc_addActionToObject;
} forEach _meuCrates;

{
	[_x, 0, ["ACE_MainActions"], _pjInsignia] call ace_interact_menu_fnc_addActionToObject;
} forEach _meuCrates;

// Apply Ranger Interactions
{
	[_x, 0, ["ACE_MainActions"], _rangerInsignia] call ace_interact_menu_fnc_addActionToObject;
} forEach _rangerCrates;

// Apply Falcon Interactions
{
	[_x, 0, ["ACE_MainActions"], _falconInsignia] call ace_interact_menu_fnc_addActionToObject;
} forEach _falconCrates;

// Apply Pilot Interactions
{
	[_x, 0, ["ACE_MainActions"], _pilotInsignia] call ace_interact_menu_fnc_addActionToObject;
} forEach _pilotCrates;

// Apply HQ Interactions
{
	[_x, 0, ["ACE_MainActions"], _hqInsignia] call ace_interact_menu_fnc_addActionToObject;
} forEach _hqCrates;

{
	[_x, 0, ["ACE_MainActions"], _cctInsignia] call ace_interact_menu_fnc_addActionToObject;
} forEach _hqCrates;