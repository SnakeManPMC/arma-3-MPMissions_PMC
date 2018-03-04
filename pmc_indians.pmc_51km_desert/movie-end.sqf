/*

	mission ending cutscene for PMC Indians campaign

*/

private [ "_camera", "_StartShotWait", "_FinalPanWait", "_PanSmoothness" ];

_StartShotWait = 2;
_FinalPanWait = 1;
_PanSmoothness = 15;

// turn some music on
playMusic ["ATrack2", 0];

// create camera
_camera = "camera" camCreate [-89231.67,7362.03,-14099.98];
_camera cameraEffect ["internal","back"];

// opening shot capture 1
_camera camPrepareTarget [-89231.67,7362.03,-14099.98];
_camera camPreparePos [9689.62,3503.22,27.17];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};
sleep _StartShotWait;
// first pan
_camera camPrepareTarget [-23674.14,96863.26,-13036.71];
_camera camPreparePos [9689.62,3503.22,27.17];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [67166.41,85180.15,-4998.65];
_camera camPreparePos [9689.62,3503.22,27.17];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [96487.58,-45901.39,-4998.87];
_camera camPreparePos [9689.62,3503.22,27.17];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [-47220.84,-78569.33,-4998.71];
_camera camPreparePos [9689.62,3503.22,27.17];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
// final pan
_camera camPrepareTarget [-89874.44,11358.24,-4998.65];
_camera camPreparePos [9689.62,3503.22,27.17];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
sleep _FinalPanWait;

// opening shot capture 2
_camera camPrepareTarget [-25148.51,101485.55,-7999.43];
_camera camPreparePos [8905.14,7808.70,4.20];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};
sleep _StartShotWait;
// first pan
_camera camPrepareTarget [-25148.51,101485.55,-7999.50];
_camera camPreparePos [8905.15,7808.70,22.36];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [-84381.40,42920.08,-7996.73];
_camera camPreparePos [8905.15,7808.70,36.25];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [-60884.48,-63356.11,-7996.86];
_camera camPreparePos [8905.18,7808.66,36.25];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [48868.09,-83503.93,-7996.86];
_camera camPreparePos [8905.18,7808.66,36.25];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [105036.77,34147.66,-7996.82];
_camera camPreparePos [8905.18,7808.66,36.25];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
// final pan
_camera camPrepareTarget [-44306.38,92091.25,-7997.05];
_camera camPreparePos [8905.18,7808.66,36.25];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
sleep _FinalPanWait;

// opening shot capture 3
_camera camPrepareTarget [10107.15,104279.69,-5914.76];
_camera camPreparePos [16986.17,4696.80,45.51];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};
sleep _StartShotWait;
// first pan
_camera camPrepareTarget [-82564.27,12030.55,-5914.75];
_camera camPreparePos [16986.17,4696.80,45.51];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [-33078.56,-81660.59,-5914.60];
_camera camPreparePos [16986.17,4696.80,45.51];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [103840.27,-44501.14,-5914.98];
_camera camPreparePos [16986.16,4696.81,45.51];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [69905.73,89334.81,-5914.77];
_camera camPreparePos [16986.16,4696.81,45.51];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
// final pan
_camera camPrepareTarget [-33450.01,90837.78,-5914.71];
_camera camPreparePos [16986.16,4696.81,45.51];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
sleep _FinalPanWait;

// opening shot capture 4
_camera camPrepareTarget [19629.15,109109.99,-10390.81];
_camera camPreparePos [3762.46,10931.67,38.39];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};
sleep _StartShotWait;
// first pan
_camera camPrepareTarget [-46575.79,96703.43,-10390.79];
_camera camPreparePos [3762.46,10931.67,38.39];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [-92126.92,37312.71,-10390.75];
_camera camPreparePos [3762.46,10931.67,38.39];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
// final pan
_camera camPrepareTarget [-75750.23,-48804.96,-10390.79];
_camera camPreparePos [3762.46,10931.67,38.39];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
sleep _FinalPanWait;

// HQ opening shot
_camera camPrepareTarget [1574.42,101512.81,-16249.08];
_camera camPreparePos [1574.42,2847.47,43.72];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};
sleep _StartShotWait;
// first pan
_camera camPrepareTarget [-84105.47,51769.13,-16248.40];
_camera camPreparePos [1574.42,2847.47,43.72];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [-84518.66,-45343.34,-16248.31];
_camera camPreparePos [1574.42,2847.47,43.72];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [-3650.13,-95677.03,-16248.55];
_camera camPreparePos [1574.42,2847.47,43.72];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
// final pan
_camera camPrepareTarget [74749.65,-63332.28,-16248.31];
_camera camPreparePos [1574.42,2847.47,43.72];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
sleep _FinalPanWait;

// HQ second shots
_camera camPrepareTarget [-41524.32,-87343.58,-6771.59];
_camera camPreparePos [1241.77,2795.51,5.60];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil {camCommitted _camera};
sleep _StartShotWait;
// first pan
_camera camPrepareTarget [20386.89,-95120.05,-6771.61];
_camera camPreparePos [1241.77,2795.51,5.60];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
_camera camPrepareTarget [75434.00,-63909.09,-6771.39];
_camera camPreparePos [1241.76,2795.51,5.60];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
// final pan
_camera camPrepareTarget [97135.05,-24744.36,-6769.87];
_camera camPreparePos [1241.76,2795.51,14.10];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared _PanSmoothness;
waitUntil {camCommitted _camera};
sleep _FinalPanWait;
sleep _FinalPanWait;

titlecut ["", "BLACK OUT", 3];
3 fadeMusic 0;
sleep 3;

// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate", "back"];
camDestroy _camera;

// end cutscene
PMC_endCut = true;
