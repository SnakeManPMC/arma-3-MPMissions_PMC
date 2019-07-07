// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// USA start shots
_camera camSetTarget [-74052.71,60751.20,-10955.41];
_camera camSetPos [7807.52,4411.00,6.09];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

//=== 2:05:35
_camera camSetTarget [-88281.32,-22991.48,-3978.98];
_camera camSetPos [7807.52,4411.00,6.09];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 1;

// more shots
_camera camSetTarget [-90404.13,12937.73,-17035.16];
_camera camSetPos [7762.14,4433.78,4.31];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 2:06:12
_camera camSetTarget [-19165.92,-90349.18,-17034.76];
_camera camSetPos [7762.14,4433.78,4.31];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 1;

// neveklov shots
_camera camSetTarget [-91157.51,-13795.07,-9297.21];
_camera camSetPos [6760.02,4190.01,11.44];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 2:06:46
_camera camSetTarget [-91457.01,-6996.18,-15238.04];
_camera camSetPos [6706.11,4183.59,24.62];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 2:06:50
_camera camSetTarget [-91457.01,-6996.18,-15237.91];
_camera camSetPos [6647.76,4176.95,26.98];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 2:06:55
_camera camSetTarget [-86035.18,-18325.81,-30004.67];
_camera camSetPos [6596.32,4166.13,29.91];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 1;

// move to russian flag!
_camera camSetTarget [104930.34,12453.85,-15468.34];
_camera camSetPos [6501.37,4151.80,5.00];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 1;
//=== 2:07:33
_camera camSetTarget [105280.39,3475.04,-15468.98];
_camera camSetPos [6539.36,4151.78,5.00];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
//=== 2:07:38
_camera camSetTarget [102697.43,-22331.49,-7366.33];
_camera camSetPos [6557.82,4148.69,6.24];

_camera camCommit 7;
waitUntil { (camCommitted _camera); };
sleep 1;

// rusinf
_camera camSetTarget leader rusinf1
_camera camSetRelPos [-20,100,20];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
_camera camSetTarget leader rusinf1
_camera camSetRelPos [0,1,1];

_camera camCommit 10;
waitUntil { (camCommitted _camera); };
titletext["Mother Russia has been victorious.\n\nVODKA FOR EVERY COMRADE!","plain",2];
sleep 3;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

"1" objstatus "DONE";

// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
