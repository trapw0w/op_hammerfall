
// Set player respawns
if (player getUnitTrait "PRAE") then {
	player setPosATL (markerPos "respawn_prae");
};

if (player getUnitTrait "DET7" || player getUnitTrait "WOLF") then {
	player setPosATL (markerPos "respawn_delta");
};

if (player getUnitTrait "MEU") then {
	player setPosATL (markerPos "respawn_meu");
};

if (player getUnitTrait "SHG_RESPAWN") then {
	player setPosATL (markerPos "respawn_hq");
};

if (player getUnitTrait "SAD") then {
	player setPosATL (markerPos "respawn_aircrew");
};

if (player getUnitTrait "PUBLIC" || player getUnitTrait "RENEGADE") then {
	player setPosATL (markerPos "respawn_ranger");
};

