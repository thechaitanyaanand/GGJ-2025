// Set frame based on current volume.
image_index = global.aim_button_state

// Draw self, this is the button sprite.
draw_self();

// Draw the little speaker icon.
draw_sprite_ext(sCrosshair, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);