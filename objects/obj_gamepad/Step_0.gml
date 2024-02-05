var n_SlotsPad = gamepad_get_device_count();

for (var i = 0; i < n_SlotsPad; i++){
	if (gamepad_is_connected(i)){
		global.gamepad = i;
	}
}