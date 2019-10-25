
// Event Handler to set gear on respawn
player addEventHandler ["RESPAWN", {
	[] spawn {waituntil {!isnull player};

		_hdl = [objNull, [player,PLAYERGEAR]] spawn ALiVE_fnc_getGear;

		sleep 3;
		titleText ["", "PLAIN"];
	};
}];

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

