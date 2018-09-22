// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 13:04:37
_camera camSetTarget [-82561.54,52399.45,23.22];
_camera camSetPos [4532.37,3271.06,10.00];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };


[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 5;

//=== 13:04:53
_camera camSetTarget [-67135.31,-60999.58,-27195.16];
_camera camSetPos [4410.66,3343.15,12.36];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:05:05
_camera camSetTarget [85695.58,-52653.64,15719.74];
_camera camSetPos [4340.04,3335.72,2.61];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:05:12
_camera camSetTarget [-95242.42,6431.80,-9084.85];
_camera camSetPos [4293.61,3342.62,16.80];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:05:15
_camera camSetTarget [-58273.09,80822.70,-9085.23];
_camera camSetPos [4282.86,3355.05,19.33];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:05:22
_camera camSetTarget [-81996.59,41397.77,-33466.60];
_camera camSetPos [4221.77,3392.80,24.23];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:05:42
_camera camSetTarget [97394.40,12738.57,-34658.27];
_camera camSetPos [4069.08,3380.08,26.33];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:05:45
_camera camSetTarget [36061.91,92144.20,-33096.65];
_camera camSetPos [4069.08,3380.08,26.33];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:05:57
_camera camSetTarget [90334.25,53496.77,-7624.43];
_camera camSetPos [4109.31,3427.31,5.43];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:06:08
_camera camSetTarget [32576.23,-89562.45,-23102.88];
_camera camSetPos [4166.79,3489.26,7.17];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:06:20
_camera camSetTarget [-4013.80,103196.91,-730.83];
_camera camSetPos [4188.31,3530.25,12.18];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:06:31
_camera camSetTarget [-77417.29,58674.09,-16964.02];
_camera camSetPos [4271.70,3554.54,7.79];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:06:36
_camera camSetTarget [-63357.50,67647.10,-36382.05];
_camera camSetPos [4236.61,3576.75,12.16];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:06:49
_camera camSetTarget [67372.08,-66638.42,-32539.56];
_camera camSetPos [4141.80,3653.92,12.92];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 13:07:23
_camera camSetTarget [35978.03,-84517.53,-34448.24];
_camera camSetPos [4112.37,3742.82,60.93];

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
