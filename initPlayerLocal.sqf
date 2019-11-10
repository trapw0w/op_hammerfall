player addEventHandler ["KILLED",{
	PLAYERGEAR = [objNull, [_this select 0]] call ALiVE_fnc_setGear;
}];


// Event Handler to set gear on respawn
player addEventHandler ["RESPAWN", {
	[] spawn {waituntil {!isnull player};

		_hdl = [objNull, [player,PLAYERGEAR]] spawn ALiVE_fnc_getGear;

		sleep 3;
		titleText ["", "PLAIN"];
	};
}];