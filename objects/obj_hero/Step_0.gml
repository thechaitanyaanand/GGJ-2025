// If the game is paused...
if (global.paused)
{
	// Exit this event while paused.
	exit;
}

// Execute player movement function.
player_movement();

// Execute function that keeps the player in the room.
keep_in_room();

// Set depth to minus our y position.
// This is also done in enemies, with the
// result being instances higher up on the screen
// being drawn first.
depth = 400;

// Find the nearest enemy.
// And reset the distance to some high number.
// Find the nearest instance of obj_enemy
var nearest_enemy = instance_nearest(x, y, obj_enemy);

// Find the nearest instance of oBoss
var nearest_boss = instance_nearest(x, y, oBoss);

// Check which one is closer
if (instance_exists(nearest_enemy) && instance_exists(nearest_boss)) {
    // Both exist: Compare distances
    if (point_distance(x, y, nearest_enemy.x, nearest_enemy.y) < point_distance(x, y, nearest_boss.x, nearest_boss.y)) {
        nearest_enemy_assign = nearest_enemy; // obj_enemy is closer
    } else {
        nearest_enemy_assign = nearest_boss; // oBoss is closer
    }
} else if (instance_exists(nearest_enemy)) {
    // Only obj_enemy exists
    nearest_enemy_assign = nearest_enemy;
} else if (instance_exists(nearest_boss)) {
    // Only oBoss exists
    nearest_enemy_assign = nearest_boss;
} else {
    // Neither exists
    nearest_enemy = noone;
}

// `nearest_enemy` now holds the nearest instance of obj_enemy or oBoss

nearest_enemy = instance_nearest(x, y, obj_enemy);
nearest_distance = 1000;

// If an enemy instance is found.
if (nearest_enemy)
{
	// Get the distance to that enemy.
	nearest_distance = point_distance(x, y, nearest_enemy.x, nearest_enemy.y);
}

// Reduce cooldown timer for attacks.
hero_shoot_cooldown--;
hero_swipe_cooldown--;
hero_trail_cooldown--;

// Check if function cooldown is finished.
if (hero_shoot_cooldown <= 0)
{
	// Call function.
	hero_shoot();	
}

// Check if function cooldown is finished.
if (hero_swipe_cooldown <= 0)
{
	// Call function.
	hero_swipe();	
}

// Check if function cooldown is finished.
if (hero_trail_cooldown <= 0)
{
	// Call function.
	hero_trail();	
}
//boss spawn location
global.bspawnx = obj_hero.x + 500;
global.bspawny = obj_hero.y;