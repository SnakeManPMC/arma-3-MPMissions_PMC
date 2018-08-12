
PMC_opfor_detected = PMC_opfor_detected + 1;
"opfor_detected" setMarkerPos getPosASL (_this select 0);
publicVariable "PMC_opfor_detected";

player groupChat format["OPFOR Detected by BLUFOR, for the %1 time.", PMC_opfor_detected];
