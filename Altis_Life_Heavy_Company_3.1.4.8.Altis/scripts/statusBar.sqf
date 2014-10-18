waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];

[] spawn {
	sleep 5;
	_statusText = "";
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		_statusText = "Heavy Company";
		((uiNamespace getVariable "statusBar")displayCtrl 1000)ctrlSetText format["%7 | FPS: %1 | Копы: %2 | Гражд: %3 | Медики: %4 | НАЛ: %5 | БАНК: %6 | TS3:95.188.111.207 ", round diag_fps, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits, [life_cash] call life_fnc_numberText,[life_atmcash] call life_fnc_numberText, _statusText, _counter];
	};
};
