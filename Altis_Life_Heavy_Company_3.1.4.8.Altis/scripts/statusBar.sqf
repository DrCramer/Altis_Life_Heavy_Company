waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];

[] spawn {
	sleep 5;
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		((uiNamespace getVariable "statusBar")displayCtrl 1000)ctrlSetText format["Heavy Company | Копы: %1 | Гражд: %2 | Медики: %3 | TS3:HEAVY-COMPANY.NO-IP.ORG", west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits, _counter];
	};
};
