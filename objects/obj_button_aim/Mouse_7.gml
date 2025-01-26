 global.aim_button_state = 1 - global.aim_button_state;
		// Reduce target scale size further.
		audio_play_sound(snd_click, 0, false);
		target_scale = 0.9;