// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// from sign turn up
_camera camSetTarget [95354.47,50335.87,109.54];
_camera camSetPos [6653.69,4160.42,2.08];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";
titletext["USA has kicked some commie ass!","plain",2];
sleep 3;

//=== 1:54:49
_camera camSetTarget [-7648.02,103132.43,109.56];
_camera camSetPos [6653.69,4160.42,2.08];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 1:54:53
_camera camSetTarget [-92190.59,8055.56,-14535.39];
_camera camSetPos [6653.69,4160.42,6.52];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 1:54:56
_camera camSetTarget [-89466.42,-8953.58,-24141.36];
_camera camSetPos [6653.16,4168.90,17.13];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 1:54:59
_camera camSetTarget [-89466.42,-8953.58,-24141.67];
_camera camSetPos [6625.41,4165.88,20.68];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 1:55:03
_camera camSetTarget [-87496.36,-19468.63,-24156.31];
_camera camSetPos [6584.56,4158.13,20.68];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 1;

// pan in S side
_camera camSetTarget [-71076.34,66219.02,-10278.29];
_camera camSetPos [6572.58,4069.13,6.90];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 1:57:09
_camera camSetTarget [10767.09,103438.98,-10278.50];
_camera camSetPos [6572.58,4069.13,6.90];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 1:57:14
_camera camSetTarget [66302.07,83594.91,-10278.08];
_camera camSetPos [6576.70,4074.61,8.05];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 1;

// pan and move into downtown
_camera camSetTarget [71342.20,78275.20,-17112.70];
_camera camSetPos [6459.79,4158.56,11.89];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 1:57:54
_camera camSetTarget [105920.71,-1149.15,-8787.67];
_camera camSetPos [6459.79,4158.56,11.89];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 1:57:59
_camera camSetTarget [105920.71,-1149.15,-8787.17];
_camera camSetPos [6508.46,4155.96,3.83];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 1:58:04
_camera camSetTarget [106400.89,-1174.78,-56.90];
_camera camSetPos [6545.86,4153.96,1.85];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 1;

// flag shots
_camera camSetTarget [60456.91,88269.51,4308.86];
_camera camSetPos [6557.13,4143.52,0.87];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 2:10:28
_camera camSetTarget [60456.91,88269.51,4309.05];
_camera camSetPos [6559.06,4145.51,5.98];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 1;
pole1 setFlagTexture "\ca\misc\data\usa_vlajka.pac";
sleep 3;

// leader assault1
_camera camSetTarget leader assault1;
_camera camSetRelPos [20,100,15];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget leader assault1;
_camera camSetRelPos [0,1,1];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };
titletext["Rock'n'Roll! baby, Ouuuh!","plain",2];
sleep 3;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

["t1", "FAILED", true] spawn BIS_fnc_taskSetState;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
