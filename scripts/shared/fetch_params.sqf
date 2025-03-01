if ( isMultiplayer ) then {
	GRLIB_difficulty_modifier = ["Difficulty",1] call bis_fnc_getParamValue;
	GRLIB_time_factor = ["DayDuration",12] call bis_fnc_getParamValue;
	GRLIB_resources_multiplier = ["ResourcesMultiplier",1] call bis_fnc_getParamValue;
	GRLIB_fatigue = ["Fatigue",1] call bis_fnc_getParamValue;
	GRLIB_revive = ["Revive",0] call bis_fnc_getParamValue;
	GRLIB_introduction = ["Introduction",1] call bis_fnc_getParamValue;
	GRLIB_deployment_cinematic = ["DeploymentCinematic",1] call bis_fnc_getParamValue;
	GRLIB_unitcap = ["Unitcap",1] call bis_fnc_getParamValue;
	GRLIB_adaptive_opfor = ["AdaptToPlayercount",1] call bis_fnc_getParamValue;
	GRLIB_civilian_activity = ["Civilians",1] call bis_fnc_getParamValue;
	GRLIB_teamkill_penalty = ["TeamkillPenalty",0] call bis_fnc_getParamValue;
	GRLIB_build_first_fob = ["FirstFob",0] call bis_fnc_getParamValue;
	GRLIB_param_wipe_savegame_1 = ["WipeSave1",0] call bis_fnc_getParamValue;
	GRLIB_param_wipe_savegame_2 = ["WipeSave2",0] call bis_fnc_getParamValue;
	GRLIB_passive_income = ["PassiveIncome",0] call bis_fnc_getParamValue;
	GRLIB_permissions_param = ["Permissions",1] call bis_fnc_getParamValue;
	GRLIB_halo_param = ["HaloJump",1] call bis_fnc_getParamValue;
	GRLIB_use_whitelist = ["Whitelist",0] call bis_fnc_getParamValue;
	GRLIB_cleanup_vehicles = ["CleanupVehicles",2] call bis_fnc_getParamValue;
	GRLIB_csat_aggressivity = ["Aggressivity",1] call bis_fnc_getParamValue;
	GRLIB_weather_param = ["Weather",3] call bis_fnc_getParamValue;
	GRLIB_shorter_nights = ["ShorterNights",0] call bis_fnc_getParamValue;
	GRLIB_ammo_bounties = [ "AmmoBounties",0] call bis_fnc_getParamValue;
	GRLIB_remote_sensors = [ "DisableRemoteSensors",0] call bis_fnc_getParamValue;
} else {
	GRLIB_difficulty_modifier = 1;
	GRLIB_time_factor = 12;
	GRLIB_resources_multiplier = 1;
	GRLIB_fatigue = 1;
	GRLIB_revive = 0;
	GRLIB_introduction = 0;
	GRLIB_deployment_cinematic = 0;
	GRLIB_adaptive_opfor = 1;
	GRLIB_unitcap = 1;
	GRLIB_civilian_activity = 1;
	GRLIB_teamkill_penalty = 0;
	GRLIB_build_first_fob = 0;
	GRLIB_param_wipe_savegame_1 = 0;
	GRLIB_param_wipe_savegame_2 = 0;
	GRLIB_passive_income = 0;
	GRLIB_permissions_param = 1;
	GRLIB_halo_param = 1;
	GRLIB_use_whitelist = 0;
	GRLIB_cleanup_vehicles = 2;
	GRLIB_csat_aggressivity = 1;
	GRLIB_weather_param = 3;
	GRLIB_shorter_nights = 0;
	GRLIB_ammo_bounties = 1;
	GRLIB_remote_sensors = 0;

	{
		if ( (_x != player) && (_x distance (getmarkerpos "respawn_west") < 200 ) ) then {
			deleteVehicle _x;
		};
	} foreach allUnits;
};

if ( GRLIB_fatigue < 0.1 ) then { GRLIB_fatigue = false } else { GRLIB_fatigue = true };
if ( GRLIB_introduction == 1 ) then { GRLIB_introduction = true } else { GRLIB_introduction = false };
if ( GRLIB_deployment_cinematic == 1 ) then { GRLIB_deployment_cinematic = true } else { GRLIB_deployment_cinematic = false };
if ( GRLIB_build_first_fob == 1 ) then { GRLIB_build_first_fob = true } else { GRLIB_build_first_fob = false };
if ( GRLIB_teamkill_penalty == 1 ) then { GRLIB_teamkill_penalty = true } else { GRLIB_teamkill_penalty = false };
if ( GRLIB_adaptive_opfor == 1 ) then { GRLIB_adaptive_opfor = true } else { GRLIB_adaptive_opfor = false };
if ( GRLIB_passive_income == 1 ) then { GRLIB_passive_income = true } else { GRLIB_passive_income = false };
if ( GRLIB_permissions_param == 1 ) then { GRLIB_permissions_param = true } else { GRLIB_permissions_param = false };
if ( GRLIB_use_whitelist == 1 ) then { GRLIB_use_whitelist = true } else { GRLIB_use_whitelist = false };
if ( GRLIB_shorter_nights == 1 ) then { GRLIB_shorter_nights = true } else { GRLIB_shorter_nights = false };
if ( GRLIB_ammo_bounties == 1 ) then { GRLIB_ammo_bounties = true } else { GRLIB_ammo_bounties = false };
