// Set frame based on current volume.
if (global.aim_button_state == 1) {
    image_index=1;
} else {
    image_index=0;
}

// Draw self, this is the button sprite.
draw_self();

// Draw the little speaker icon.
draw_sprite_ext(spr_sound_button, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);