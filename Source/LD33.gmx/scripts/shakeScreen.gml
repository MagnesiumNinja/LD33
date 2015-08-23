//script shakeScreen(intensity, seconds)
//Shakes the screen

var intensity, duration;
intensity = argument0;
duration = argument1 * 60;

objRoomController.shakes = intensity;
objRoomController.shakeTimer = duration;
global.SCREEN_SHAKE = true;
