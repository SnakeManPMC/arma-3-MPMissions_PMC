// camera basic initialization
private _camera = "camera" camCreate [658.208008,12104.680664,1];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.7;

//usa flag into the picture
_camera camSetTarget usaflag;
_camera camCommit 0;
titleText ["Mozart Classic Seal Team","PLAIN DOWN",2];
sleep 7;
titletext ["","PLAIN DOWN",1];
sleep 1;

//pilots walk out of the hangar towards camera
_camera camSetPos [653.065613,12119.368164,6];
_camera camSetTarget dude;
_camera camCommit 6;
sleep 7;

//closeup for salutes
_camera camSetPos [653.178833,12108.022461,1.7];
_camera camSetTarget HQ;
_camera camCommit 0;
sleep 3;
pilot dowatch HQ;
pilot2 dowatch HQ;
sleep 1;
pilot playmove "EffectStandSalute";
sleep 1;
pilot2 playmove "EffectStandSalute";
sleep 1;
HQ playmove "EffectStandSalute";
sleep 2;
HQ playmove "EffectStandSaluteEnd";

//camera tracks pilot smoothly
HQ dowatch aUH;
_camera camSetPos [651.670593,12102.442383,1.7];
_camera camSetTarget HQ;
_camera camCommit 0;
sleep 5;
_camera camSetTarget aUH;
_camera camCommit 20;
sleep 35;

// HQ behind the back 651.381348,12102.442383,1.7

// heli left front corner, takeoff - overfly
_camera camSetPos [689.444885,12143.758789,2];
_camera camSetTarget aUH;
_camera camCommit 0;
sleep 9;

// camera moves to Mozart, running in the field.
_camera camSetPos [939.332153,12076.505859,5];
_camera camSetTarget Mozart;
_camera camCommit 0;
sleep 2;
titletext ["Mozart's Team","PLAIN DOWN"];
sleep 18;

titletext ["This is it, time to go to War...","BLACK"];
sleep 5;

// Destroy the camera
camDestroy _camera;
