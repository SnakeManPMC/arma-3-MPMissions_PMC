
PMC_blufor_detected = PMC_blufor_detected + 1;
"blufor_detected" setMarkerPos getPosASL (_this select 0);
publicVariable "PMC_blufor_detected";

player groupChat format["BLUFOR Detected by OPFOR for the %1 time.", PMC_blufor_detected];
