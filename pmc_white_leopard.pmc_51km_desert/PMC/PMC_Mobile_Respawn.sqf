
// markers
"respawn_guerrilla" setMarkerPos PMC_mobile_respawn_spot;
"pmc_marker_base" setMarkerPos PMC_mobile_respawn_spot;

// objects
pmc_guerrilla_cache setPosATL PMC_mobile_respawn_spot;
pmc_flagpole setPosATL [(PMC_mobile_respawn_spot select 0) + 10, (PMC_mobile_respawn_spot select 1), 0];

{
	private _pos = [PMC_mobile_respawn_spot, 0, 50, 10, 0, 20, 0] call BIS_fnc_findSafePos;
	_x setPos _pos;
} forEach [pmc_car1, pmc_car2, pmc_car3, pmc_car4, pmc_car5, pmc_car6];
