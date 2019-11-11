
if(isServer) then {
 
    // -------------------------------------------------------------------------------------------------------------
    // override default data 
    // see scripts/staticData.sqf
    ["MISSION INIT - Waiting"] call ALIVE_fnc_dump;
 
    waitUntil {!isNil "ALiVE_STATIC_DATA_LOADED"};
 
    ["MISSION INIT - Continue"] call ALIVE_fnc_dump;
 
    // override static data settings
    call compile (preprocessFileLineNumbers "scripts\staticData.sqf");
 
    ["MISSION INIT - Static data override loaded"] call ALIVE_fnc_dump;
 
 
 
    // -------------------------------------------------------------------------------------------------------------
 
};

// Define Mission root to call sound files
MISSION_ROOT = call {
    private "_arr";
    _arr = toArray __FILE__;
    _arr resize (count _arr - 8);
    toString _arr
};

//CQB Blacklist Buildings array
ALIVE_Building_Blacklist = ["Land_bigwall1_arch","Land_loam_wall1_arch2"];

// Array of speakers
speakers = [speaker1, speaker2, speaker3, speaker4, speaker5, speaker6];

// Create action and add to TOC Phone
_action = ["ScramblePJ","Scramble Pararescue","",{{playSound3D [MISSION_ROOT + "audio\leeroy-jenkins.ogg", _x];} forEach speakers;},{true}] call ace_interact_menu_fnc_createAction;
[tocphone, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
[tocphone_1, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

// Add ACE Actions for Insignia
[] execVM "scripts\add_insignia.sqf";

// Setup ALiVE Auto Save every 4 hours 
14400 call ALiVE_fnc_AutoSave_PNS;
[west, "HQ"] sideChat "ALiVE Auto Save Complete..";


if (isServer) then {
    ["ace_captiveStatusChanged", {
        params ["_unit", "_state", "_reason"];
 
        if ((getPos _unit) inArea CIVH) then {
            _unit setVariable ["detained", true, true];
        };
    }] call CBA_fnc_addEventHandler;
 
    [{
        [getPos CIVH, [side player], -10] call ALIVE_fnc_updateSectorHostility;
    }, 3600, []] call CBA_fnc_addPerFrameHandler;
};

if (!hasInterface && !isDedicated) then {
headlessClients = [];
headlessClients set [(count headlessClients), player];
publicVariable "headlessClients";
isHC = true;
};

["someId", "onPlayerConnected", {
    if (({isPlayer _x} count playableUnits) > 0 || OPCOM_TOGGLE) then { ["ALIVE_MIL_OPCOM"] call ALiVE_fnc_unPauseModule; OPCOM_TOGGLE = false; };
}] call BIS_fnc_addStackedEventHandler;
 
["someId", "onPlayerDisconnected", {
    if ( ({isPlayer _x} count playableUnits) == 0 ) then { ["ALIVE_MIL_OPCOM"] call ALiVE_fnc_pauseModule; OPCOM_TOGGLE = true; };
}] call BIS_fnc_addStackedEventHandler;