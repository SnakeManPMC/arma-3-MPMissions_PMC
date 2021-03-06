// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// pan in the field S to the city
_camera camSetTarget [64268.79,-70842.94,15.86];
_camera camSetPos [4571.71,9383.37,2.00];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["LeadTrack01_F", 0];
sleep 3;

//=== 20:51:37
_camera camSetTarget [101735.17,-14100.14,2805.80];
_camera camSetPos [4571.71,9383.37,2.00];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 20:51:38
_camera camSetTarget [93381.31,55264.40,2805.61];
_camera camSetPos [4571.71,9383.37,2.00];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 20:51:40
_camera camSetTarget [38767.30,103313.54,2805.64];
_camera camSetPos [4571.71,9383.37,2.00];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 20:51:41
_camera camSetTarget [-26004.21,104553.36,2805.85];
_camera camSetPos [4571.71,9383.37,2.00];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 20:51:46
_camera camSetTarget [-73830.56,71447.16,-1065.85];
_camera camSetPos [4571.71,9383.37,2.00];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// meaux sign
_camera camSetTarget [99417.95,40867.71,-988.65];
_camera camSetPos [4508.01,9386.05,2.30];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 20:52:39
_camera camSetTarget [33141.41,104897.78,7607.32];
_camera camSetPos [4508.01,9386.05,2.30];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 20:52:42
_camera camSetTarget [-39871.71,98994.91,-816.34];
_camera camSetPos [4508.01,9386.05,2.30];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// across the main combat area
_camera camSetTarget [91148.05,59275.77,-816.60];
_camera camSetPos [4475.10,9404.87,2.35];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 20:53:43
_camera camSetTarget [91148.05,59275.77,-816.96];
_camera camSetPos [4525.38,9433.80,2.35];

_camera camCommit 15;
waitUntil { (camCommitted _camera); };
sleep 3;

// pan at E side of city
_camera camSetTarget [-58410.99,-65165.53,-21274.84];
_camera camSetPos [4636.84,9475.98,5.43];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 20:54:25
_camera camSetTarget [-90444.45,-16311.41,-17154.00];
_camera camSetPos [4631.35,9486.67,5.15];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 20:54:29
_camera camSetTarget [-92178.41,27796.26,-17155.10];
_camera camSetPos [4620.97,9499.29,4.96];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// pan the ammobox yard
_camera camSetTarget [-73784.18,-52541.12,-3597.90];
_camera camSetPos [4563.98,9495.05,4.64];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 20:55:06
_camera camSetTarget [-92008.09,31633.86,-13534.98];
_camera camSetPos [4563.98,9495.05,4.64];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 20:55:08
_camera camSetTarget [-54379.24,89131.64,-13535.03];
_camera camSetPos [4563.98,9495.05,4.64];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 20:55:13
_camera camSetTarget [-69733.89,72960.08,-21393.12];
_camera camSetPos [4541.87,9520.16,5.65];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 3;

// medic tent pan
_camera camSetTarget [23719.04,-88430.20,-5121.42];
_camera camSetPos [4478.51,9567.97,3.66];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 20:55:56
_camera camSetTarget [3224.99,-90291.16,-5121.78];
_camera camSetPos [4492.56,9568.67,3.33];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;

// final uprising shots
_camera camSetTarget [33176.47,-85825.20,-8485.88];
_camera camSetPos [4514.67,9600.66,6.23];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 20:56:42
_camera camSetTarget [32319.38,-82971.62,-25604.99];
_camera camSetPos [4514.67,9600.66,20.06];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };
//=== 20:56:49
_camera camSetTarget [30687.21,-78495.95,-39362.58];
_camera camSetPos [4514.67,9600.66,40.96];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };
sleep 3;
titletext ["War is hell...","plain",2];
sleep 4;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
