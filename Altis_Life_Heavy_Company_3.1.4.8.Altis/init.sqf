enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "scripts\hackerSpanker.sqf";
[] execVM "scripts\hackerspanker2.sqf";
[] execVM "scripts\zlt_fastrope.sqf";
[] execVM "IgiLoad\IgiLoadInit.sqf";
[] execVM "scripts\Anticheat.sqf";
[] execVM "scripts\statusBar.sqf";
[] execVM "scripts\D41_Wetter.sqf";
[] execVM "scripts\teargas.sqf";

[] spawn
{
	waitUntil {!isNil "mod_cruiseControl"};
	call mod_cruiseControl;
};

StartProgress = true;

onPlayerDisconnected { [_id, _name, _uid] call compile preProcessFileLineNumbers "core\functions\fn_onPlayerDisconnect.sqf" };

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};