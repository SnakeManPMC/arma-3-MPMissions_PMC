// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

//=== 7:20:00
_camera camSetTarget [-90077.29,39102.11,198.53];
_camera camSetPos [3912.62,4957.25,21.02];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };

playmusic ["rtrack5",0];

titlecut ["","BLACK IN",2];
sleep 2;

//=== 7:20:02
_camera camSetTarget [-47541.01,89303.71,-15391.80];
_camera camSetPos [3912.62,4957.25,21.02];

_camera camCommit 2;
waitUntil { (camCommitted _camera); };
//=== 7:20:05
_camera camSetTarget [51023.71,87526.66,-30987.63];
_camera camSetPos [3912.62,4957.25,21.02];

_camera camCommit 2;
waitUntil { (camCommitted _camera); };
//=== 7:20:07
_camera camSetTarget [98918.44,28484.23,-20460.79];
_camera camSetPos [3912.62,4957.25,21.02];

_camera camCommit 2;
waitUntil { (camCommitted _camera); };
//=== 7:20:11
_camera camSetTarget [98918.44,28484.23,-20461.26];
_camera camSetPos [3969.37,4971.30,21.02];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
//=== 7:20:22
_camera camSetTarget [79966.76,59703.30,-35229.47];
_camera camSetPos [4070.12,4977.77,31.55];

_camera camCommit 5;
waitUntil { (camCommitted _camera); };
// that ends for the beginning zooms

//two sniper shots 22 story
//=== 7:22:02
_camera camSetTarget [99726.62,-15670.86,-20764.89];
_camera camSetPos [4117.15,4961.71,25.50];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2.5;

//=== 7:22:09
_camera camSetTarget [-76286.52,-52609.46,-14706.47];
_camera camSetPos [4136.06,4963.03,24.31];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 2.5;

// sniper shot three moves
//=== 7:23:17
_camera camSetTarget [45812.94,-85359.77,-8994.44];
_camera camSetPos [4085.30,5068.81,11.30];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 7:23:20
_camera camSetTarget [103655.09,7162.12,-8994.20];
_camera camSetPos [4085.30,5068.81,11.30];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 7:23:26
_camera camSetTarget [101448.31,7115.73,-22686.54];
_camera camSetPos [4085.30,5068.81,13.82];

_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 2;

// across the park sniper move
//=== 7:24:43
_camera camSetTarget [-92551.43,29929.41,-7091.18];
_camera camSetPos [4067.35,5055.10,14.56];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 7:24:58
_camera camSetTarget [-92543.75,30132.08,-7093.85];
_camera camSetPos [3940.15,5089.62,13.84];

_camera camCommit 6
waitUntil { (camCommitted _camera); };
sleep 2;

// truck shot
//=== 7:25:41
_camera camSetTarget [86297.91,-46787.48,-22716.45];
_camera camSetPos [3889.52,5092.71,19.44];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 7:25:54
_camera camSetTarget [95531.09,-27914.40,-22733.78];
_camera camSetPos [3888.53,4992.34,19.07];

_camera camCommit 6
waitUntil { (camCommitted _camera); };

// backroom move three shots
//=== 7:26:58
_camera camSetTarget [90518.59,-36404.30,-28381.08];
_camera camSetPos [4109.01,5131.24,26.17];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
//=== 7:26:59
_camera camSetTarget [43554.55,-82252.23,-28381.06];
_camera camSetPos [4109.01,5131.24,26.17];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };
//=== 7:27:02
_camera camSetTarget [-2525.74,-90512.90,-28381.42];
_camera camSetPos [4109.01,5131.24,26.17];

_camera camCommit 3;
waitUntil { (camCommitted _camera); };

// truck shot
_camera camSetTarget trk;
_camera camSetRelPos [20,20,10];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// bmp1 shot
_camera camSetTarget bmp1;
_camera camSetRelPos [10,10,5];

_camera camCommit 0;
waitUntil { (camCommitted _camera); };
sleep 3;

// assault1 leader
_camera camSetTarget leader assault1;
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
