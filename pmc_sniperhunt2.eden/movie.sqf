// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 8:04:34
_camera camSetTarget [89841.86,59530.87,-14325.57];
_camera camSetPos [9719.49,1443.92,30.47];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

//=== 8:04:35
_camera camSetTarget [4475.26,97539.64,-27130.35];
_camera camSetPos [9719.49,1443.92,30.47];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 8:04:36
_camera camSetTarget [-64658.53,62516.02,-27130.31];
_camera camSetPos [9719.49,1443.92,30.47];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 8:04:43
_camera camSetTarget [-66496.50,65499.79,-10063.19];
_camera camSetPos [9646.24,1507.28,28.55];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };

//=== 8:06:04
_camera camSetTarget [97145.86,-39351.26,-24761.04];
_camera camSetPos [9376.73,1650.65,14.65];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 8:06:22
_camera camSetTarget [97145.86,-39351.26,-24761.18];
_camera camSetPos [9491.82,1674.23,22.75];

_camera camCommit 6
waitUntil { (camCommitted _camera); };

// snipa shot
_camera camSetTarget leader snipas1;
_camera camSetRelPos [2,2,2];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2;

_camera camSetRelPos [-2,-2,5];

_camera camCommit 2;
waitUntil { (camCommitted _camera); };
sleep 1;

// assault1 shot
_camera camSetTarget leader assault1;
_camera camSetRelPos [4,4,2];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// colonel shot
_camera camSetTarget leader colteam;
_camera camSetRelPos [2,2,2];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
