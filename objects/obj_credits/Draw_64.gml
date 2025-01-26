// Set frame based on current volume.
image_index = global.credits_button_state

// Draw self, this is the button sprite.
draw_self();

// Draw the little speaker icon.
draw_sprite_ext(sCredits, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);