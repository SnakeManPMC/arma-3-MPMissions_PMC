// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 6:50:36
_camera camSetTarget [-73608.90,70745.64,-8043.94];
_camera camSetPos [1667.50,5413.09,3.13];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 5;

//=== 6:50:49
_camera camSetTarget [91857.19,-31146.48,-22735.79];
_camera camSetPos [1623.23,5455.31,4.69];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

//=== 6:50:58
_camera camSetTarget [85935.61,54081.30,-22737.82];
_camera camSetPos [1598.83,5411.79,14.01];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

//=== 6:51:18
_camera camSetTarget [-91426.59,-27378.40,-15846.15];
_camera camSetPos [1690.31,5442.39,6.87];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

//=== 6:51:31
_camera camSetTarget [-88588.58,-35832.62,12328.71];
_camera camSetPos [1666.43,5437.40,0.73];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 4;

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
