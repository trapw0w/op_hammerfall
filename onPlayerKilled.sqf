player addEventHandler ["KILLED",{
	PLAYERGEAR = [objNull, [_this select 0]] call ALiVE_fnc_setGear;
}];