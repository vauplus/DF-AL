/*
	Description:
	Create a postProcessing effect for drug use.
*/
private["_drug"];
_drug = [_this,0,"",[""]] call BIS_fnc_param;
if(_drug == "") exitWith {}; //Error checking.

switch (_drug) do {
	case "cocainep": {
		player enableFatigue false;
		"colorCorrections" ppEffectAdjust [3, 3, 0, [0.0, 0.0, 3.0, 0.0], [0.8*5, 0.8*6, 0.0, 1.9], [0.9, 0.9, 1.9, 0.2]];
		"colorCorrections" ppEffectCommit 0;
		10 setFog [0.6, 0.022, 66];
		"colorCorrections" ppEffectAdjust [1, 0.6, -0.022, [0.0, 0.0, 0.0, 0.0], [0.2*2, 0.2*2, 0.0, 0.7], [0.5, 0.9, 1.9, 0.0]];  
		"colorCorrections" ppEffectCommit 1;
		"colorCorrections" ppEffectEnable true;
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.09, 1, 2, 0.1, 1, false];
		"filmGrain" ppEffectCommit 0;
		
		_time = time + (5 * 60);
		waitUntil {(round(_time - time) < 1) OR !alive player};
		0.1 setFog [0.0, 0.00, 0];
		player enableFatigue true;
		"filmGrain" ppEffectEnable false;
		"chromAberration" ppEffectEnable false;
		"radialBlur" ppEffectEnable false;
		"colorCorrections" ppEffectEnable false;
		"colorCorrections" ppEffectEnable false;
	};
	
	case "marijuana": {
		"chromAberration" ppEffectEnable true;
		"radialBlur" ppEffectEnable true;
		enableCamShake true;

		for "_i" from 0 to 100 do
		{
			"chromAberration" ppEffectAdjust [random 0.25,random 0.25,true];
			"chromAberration" ppEffectCommit 1;   
			"radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
			"radialBlur" ppEffectCommit 1;
			addcamShake[random 3, 1, random 3];
			sleep 1;
		};

		"chromAberration" ppEffectAdjust [0,0,true];
		"chromAberration" ppEffectCommit 5;
		"radialBlur" ppEffectAdjust  [0,0,0,0];
		"radialBlur" ppEffectCommit 5;
		sleep 6;

		"chromAberration" ppEffectEnable false;
		"radialBlur" ppEffectEnable false;
		resetCamShake;
	};
	
	case "heroinp": {
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [1, 1, 0, [0,0,0,0.5], [random 5 - random 5,random 5 - random 5,random 5 - random 5,random 1], [random 5 - random 5,random 5 - random 5,random 5 - random 5, random 1]];
		"colorCorrections" ppEffectCommit 1;
		"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.01,0.01,true];
		"chromAberration" ppEffectCommit 1;
		sleep 25;	

		for "_i" from 0 to 100 do
		{
			"colorCorrections" ppEffectEnable true;
			"colorCorrections" ppEffectAdjust [1, 1, 0, [0,0,0,0.5], [random 5 - random 5,random 5 - random 5,random 5 - random 5,random 1], [random 5 - random 5,random 5 - random 5,random 5 - random 5, random 1]];
			"colorCorrections" ppEffectCommit 1;
			if(!alive player) exitWith {};
			sleep 0.02;
		};
		"chromAberration" ppEffectEnable false;
		"colorCorrections" ppEffectEnable false;
	};
	
	case "frogp": {
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [1, 1, 0, [0,0,0,0.5], [random 5 - random 5,random 5 - random 5,random 5 - random 5,random 1], [random 5 - random 5,random 5 - random 5,random 5 - random 5, random 1]];
		"colorCorrections" ppEffectCommit 1;
		"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.01,0.01,true];
		"chromAberration" ppEffectCommit 1;
		sleep 30;	

		private["_force"];
		for "_i" from 0 to 20 do
		{
			"colorCorrections" ppEffectEnable true;
			"colorCorrections" ppEffectAdjust [1, 1, 0, [0,0,0,0.5], [random 5 - random 5,random 5 - random 5,random 5 - random 5,random 1], [random 5 - random 5,random 5 - random 5,random 5 - random 5, random 1]];
			"colorCorrections" ppEffectCommit 1;	
			sleep 25;
		};
		"chromAberration" ppEffectEnable false;
		"colorCorrections" ppEffectEnable false;
	};
	
	case "bier": {
		"radialBlur" ppEffectEnable true;
		"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.01,0.01,true];
		"chromAberration" ppEffectCommit 1;
		enableCamShake true;
		sleep 30;	

		private["_force"];
		for "_i" from 0 to 20 do
		{
			"radialBlur" ppEffectAdjust  [random 1,random 1,0.1,0.1];
			"radialBlur" ppEffectCommit 1;
			"chromAberration" ppEffectEnable true;
		    "chromAberration" ppEffectAdjust [random 0.6,random 0.4,true];
		    "chromAberration" ppEffectCommit 1;
			addcamShake[random 20,random 5, random 50];
			sleep 12;
		};
		"chromAberration" ppEffectEnable false;
		"radialBlur" ppEffectEnable false;
		resetCamShake;
	};
};