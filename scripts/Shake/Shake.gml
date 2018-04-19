/// @param time
/// @param amount

var time,amount;
time = argument0;
amount = argument1;

if instance_exists(cont_camera) {
	cont_camera.shake = time;
	cont_camera.shakeAmt = max(amount,cont_camera.shakeAmt);
}