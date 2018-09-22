// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal","back"];

//=== 14:35:25
_camera camSetTarget [17707.95,105281.09,-28363.86];
_camera camSetPos [8066.46,9885.68,11.67];
_camera camSetFOV 0.700;
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

// pretty cool emotional
//rtrack1a
//rtrack6
//rtrack9
//rtrack10
[] execVM "PMC\PMC_Music_Jukebox_ArmA3_Default_Tracks.sqf";

titlecut ["","BLACK IN",2];
sleep 3;

//=== 14:35:37
_camera camSetTarget [-63742.88,75594.32,-22888.33];
_camera camSetPos [8109.66,9932.20,12.79];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 14:35:50
_camera camSetTarget [-40431.58,-74003.89,-24178.22];
_camera camSetPos [8101.13,10008.74,13.01];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 14:36:04
_camera camSetTarget [43566.87,-80225.08,-24191.97];
_camera camSetPos [8018.16,10047.16,12.60];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 14:36:13
_camera camSetTarget [36907.18,-82639.52,-24205.73];
_camera camSetPos [8035.84,9979.83,17.19];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 14:36:28
_camera camSetTarget [17885.58,-89397.58,-5923.89];
_camera camSetPos [8056.61,9939.79,4.24];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 14:36:43
_camera camSetTarget [-37123.19,-78261.53,-13410.29];
_camera camSetPos [8102.74,9908.48,2.64];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 14:37:14
_camera camSetTarget [-2507.86,-88839.41,-12626.98];
_camera camSetPos [7894.58,9804.77,38.45];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 14:37:16
_camera camSetTarget [98582.91,-19464.55,-30247.32];
_camera camSetPos [7894.58,9804.77,38.45];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 14:37:18
_camera camSetTarget [83795.84,67424.78,-30247.07];
_camera camSetPos [7894.58,9804.77,38.45];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 14:37:20
_camera camSetTarget [33101.16,104731.16,-18737.91];
_camera camSetPos [7894.58,9804.77,38.45];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

//=== 14:37:27
_camera camSetTarget [80127.38,56431.43,-51118.02];
_camera camSetPos [7956.70,9852.55,57.15];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
~2.5

titlecut ["","BLACK OUT",3];
4 fademusic 0;
sleep 3;

_camera cameraEffect["terminate","BACK"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
