// Call parent event to set up general enemy stuff.
event_inherited();

// Set speed for this enemy type.
speed = 2;

// Set max hitpoints specifically for this enemy type.
hitpoints_max = 3 * global.enemy_health_bonus;

// Set hitpoints specifically for this enemy type.
hitpoints = hitpoints_max;

// Set sprites for this enemy type.
walk_sprite = spr_rooster_walk;
attack_sprite = spr_rooster_attack;
hit_sprite = spr_rooster_hit;