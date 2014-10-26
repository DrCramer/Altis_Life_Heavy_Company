_gasmask = ["Mask_M40", "Mask_M40_OD", "Mask_M50"];
_myvariable = -1;

While{true} do 
{
    "dynamicBlur" ppEffectEnable true; // enables ppeffect
    "dynamicBlur" ppEffectAdjust [0]; // enables normal vision
    "dynamicBlur" ppEffectCommit 15; // time it takes to normal
    resetCamShake; // resets the shake
    20 fadeSound 1;     //fades the sound back to normal

	
    waituntil{
    ((nearestObject [getpos player, "SmokeShellBlue"]) distance player < 12)
    and
    (getpos (nearestObject [getpos player, "SmokeShellBlue"]) select 2 < 0.5)
    };
	
	_headgear = goggles player;
	
	if (_headgear in _gasmask) then
	{
		if (_myvariable < 0) then {};
	}
	else
	{
		"dynamicBlur" ppEffectEnable true; // enables ppeffect
		"dynamicBlur" ppEffectAdjust [10]; // intensity of blur
		"dynamicBlur" ppEffectCommit 3; // time till vision is fully blurred
		enableCamShake true;	 // enables camera shake
		addCamShake [10, 45, 10];	// sets shakevalues
		player setFatigue 1; // sets the fatigue to 100%
		5 fadeSound 0.1;	 // fades the sound to 10% in 5 seconds
		sleep 5;
		"dynamicBlur" ppEffectAdjust [20]; // intensity of blur
		"dynamicBlur" ppEffectCommit 3; // time till vision is fully blurred
		sleep 5;
	};
};