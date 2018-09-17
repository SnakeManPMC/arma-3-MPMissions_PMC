// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

// assault1 face
_camera camSetTarget leader gunships1;
_camera camSetRelPos [5,10,3];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["Track07_Last_Men_Standing",0];

titlecut ["","BLACK IN",2];
sleep 5;

_camera camSetTarget leader gunships1;
_camera camSetRelPos [0,.5,1.5];

_camera camCommit 15;
waitUntil { (camCommitted _camera); };
sleep 3;


titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true;
