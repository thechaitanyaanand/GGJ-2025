// If mouse is over this instance, adjusting for the GUI layer...
if (device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	// Reduce target scale size.
	target_scale = 0.95;
}
	// If left mouse button is pressed...
if (mouse_check_button_pressed(mb_left)) 
{

        global.aim_button_state = 1 - global.aim_button_state;
		// Reduce target scale size further.
		audio_play_sound(snd_click, 0, false);
		target_scale = 0.9;
	}
	
	// Checks if mouse has been clicked on this button.

else
{
	// Reset target scale size.
	target_scale = 1.0;	
}

