// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 10:24:43
_camera camSetTarget [42875.74,93895.65,-16374.61];
_camera camSetPos [7087.96,1994.03,21.66];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };


playmusic ["track7",0];

titlecut ["","BLACK IN",2];
sleep 5;

//=== 10:24:52
_camera camSetTarget [27267.17,96166.98,-27031.10];
_camera camSetPos [7149.49,2063.45,38.74];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2.5;

//=== 10:25:06
_camera camSetTarget leader hinds1;
_camera camSetRelPos [10,10,5];
_camera camSetTarget leader hinds1;
_camera cameraEffect ["external","back"];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 10:25:06
_camera camSetTarget [11110.10,98611.76,-26164.48];
_camera camSetPos [7181.47,2216.45,25.83];
_camera cameraEffect ["internal","back"];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2.5;

//=== 10:25:06
_camera camSetTarget leader aateam1;
_camera camSetRelPos [10,10,5];
_camera camSetTarget leader aateam1;
_camera cameraEffect ["external","back"];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 10:25:16
_camera camSetTarget [15695.56,101018.05,-13395.56];
_camera camSetPos [7177.86,2303.32,3.68];
_camera cameraEffect ["internal","back"];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2.5;

//=== 10:25:29
_camera camSetTarget [17513.38,-96117.46,-13409.52];
_camera camSetPos [7177.62,2421.57,3.14];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2.5;

//=== 10:25:06
_camera camSetTarget leader bmps1;
_camera camSetRelPos [10,10,5];
_camera camSetTarget leader bmps1;
_camera cameraEffect ["external","back"];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 10:25:35
_camera camSetTarget [616.81,-96457.92,-13412.10];
_camera camSetPos [7185.59,2403.30,4.11];
_camera cameraEffect ["internal","back"];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2.5;

//=== 10:25:50
_camera camSetTarget [-44743.27,-82557.93,-7919.38];
_camera camSetPos [7258.11,2477.45,6.96];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2.5;

//=== 10:25:06
_camera camSetTarget leader rustanks1;
_camera camSetRelPos [10,10,5];
_camera camSetTarget leader rustanks1;
_camera cameraEffect ["external","back"];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 10:26:02
_camera camSetTarget [-37572.80,-70832.45,-51058.83];
_camera camSetPos [7233.43,2437.10,46.10];
_camera cameraEffect ["internal","back"];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2.5;

//=== 10:25:06
_camera camSetTarget leader guards1;
_camera camSetRelPos [10,10,5];
_camera camSetTarget leader guards1;
_camera cameraEffect ["external","back"];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

//=== 10:26:27
_camera camSetTarget [-63087.74,49450.66,-52999.88];
_camera camSetPos [7259.28,2286.20,43.16];
_camera cameraEffect ["internal","back"];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2.5;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
