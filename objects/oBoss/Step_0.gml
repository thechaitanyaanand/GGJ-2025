// Set depth to negative y.
// This will cause instances to draw from
// the top of the screen to the bottom, mimicking a 3/4 camera angle.
depth = -y;

// Set direction towards the hero.
if (instance_exists(obj_hero)) {
    // If obj_hero exists, calculate direction towards it
    direction = point_direction(x, y, obj_hero.x, obj_hero.y);
} else {
    // Handle the absence of obj_hero (optional fallback behavior)
    direction = 0; // Or stop movement, change behavior, etc.
}


// If horizontal speed is NOT 0.
if(hspeed != 0)
{
	// Set our xscale to the sign of hspeed
	// (can only be -1 or 1 at this point).
	image_xscale = -sign(hspeed);
}