if obj_player.armor == 0 && !obj_player.cantHit {
	with(obj_player) {
		if !onGround {
			//instance_destroy();
			state = DEATH;
			
		} else {
			
			state = DEATH;
		}
	}
} else {
	if obj_player.cantHit == 0 {
		if obj_player.armor == 1 {
			obj_player.armor = 0;
			obj_player.flash = 60;
			obj_player.jNum = 0;
			obj_player.vy = -4;
			obj_player.vx *= 0.25;
			obj_player.cantHit = 60;
			obj_player.outfit = 0;
		}
	}
}

