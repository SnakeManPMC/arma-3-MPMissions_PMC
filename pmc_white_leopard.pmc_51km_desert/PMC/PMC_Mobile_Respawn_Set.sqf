
PMC_mobile_respawn_spot = getPosATL player;
publicVariable "PMC_mobile_respawn_spot";
"respawn_guerrilla" setMarkerPos PMC_mobile_respawn_spot;
"pmc_marker_base" setMarkerPos PMC_mobile_respawn_spot;
pmc_guerrilla_cache setPosATL PMC_mobile_respawn_spot;
hint "Mobile Respawn set here.";
