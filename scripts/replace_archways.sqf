//["Building to replace","replaced Building"]
myBuildings = [["Land_bigwall1_arch","",0],
               ["Land_loam_wall1_arch2","",0]                    
               ];		

for "_i" from 0 to(count myBuildings-1) do {

    _CurrentBuilding 	 = (myBuildings select _i) select 0;
    _ReplacementBuilding = (myBuildings select _i) select 1;	
    _DirectionOffset 	 = (myBuildings select _i) select 2;	
    

    {
        hideObjectGlobal  _x;
    
        _myReplacement = createVehicle [_ReplacementBuilding, getPosATL _x, [], 0, "CAN_COLLIDE"];
        _myReplacement setDir (getdir _x) + _DirectionOffset;
        _myReplacement setPosATL (getPosATL _x) ;
        _myReplacement enableSimulationGlobal false;
    } forEach nearestObjects [markerpos "center", [_CurrentBuilding], worldsize];
};