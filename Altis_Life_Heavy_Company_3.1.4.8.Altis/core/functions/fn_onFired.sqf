/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles various different ammo types being fired.
*/
private["_ammoType","_damage","_projectile"];
_damage = _this select 2;
_ammoType = _this select 4; 
_projectile = _this select 6;

if(_ammoType == "SUPER_flash") then {
	_projectile spawn {
		private["_position"];
		while {!isNull _this} do {
			_position = getPosATL _this;
			_damage = 0;
			sleep 0.1;
		};
		[[_position],"life_fnc_flashbang",true,false] spawn life_fnc_MP;
	};
};