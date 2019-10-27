//BY: [AWC] Chief Wiggum

private ["_addGPS", "_terminalclass", "_marker", "_object", "_marker_distance", "_has_terminal"];

_addGPS = false;
_terminalclass = "";
_object = _this select 0;
_marker = createMarkerLocal ["uav_control",position _object]; 
_marker setMarkerShapeLocal "ICON"; 
_marker setMarkerTypeLocal "EMPTY";
_marker_distance = player distance (getMarkerPos _marker);
_has_terminal = false;



switch (side player) do {
case WEST: {_terminalclass = "B_UavTerminal";};
case EAST: {_terminalclass = "O_UavTerminal";};
case INDEPENDENT: {_terminalclass = "I_UavTerminal";};
};

If("ItemGPS" in assignedItems player OR "ItemGPS" in items player) then 
{
_addGPS = true;
};

If(_terminalclass in assignedItems player) then 
{
_has_terminal = true;
};



player addItem _terminalclass;
player assignItem _terminalclass;
player action ["UAVTerminalOpen", player];

If ((_addGPS) && !("ItemGPS" in items player)) then 
{
player addItem "ItemGPS";
};

WaitUntil {player distance getMarkerPos _marker != _marker_distance};
If !(_has_terminal) then 
{
player unassignitem _terminalclass;
player removeItem _terminalclass;
};
