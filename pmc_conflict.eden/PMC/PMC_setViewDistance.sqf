
private _viewDistance = ["PMC_viewdistance"] call BIS_fnc_getParamValue;

setViewdistance _viewDistance;
setObjectViewdistance (_viewDistance / 2);
