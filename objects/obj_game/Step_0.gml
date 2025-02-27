

// If the game is NOT over...
if ((!instance_exists(obj_game_over))&&(instance_exists(obj_hero)))
{	

	// If the hero has run out of hitpoints...
	if (obj_hero.hitpoints <= 0)
	{
		// Destroy the player.
		with (obj_hero) instance_destroy();
	
		// Destroy any bullets.
		with (obj_hero_bullet) instance_destroy();
	
		// Destroy the enemies.
		with (obj_enemy) instance_destroy();
	
		// Destroy any xp pickups.
		with (obj_collectable) instance_destroy();
	
		// Destroy any health pickups.
		with (obj_heart) instance_destroy();
	
		// Pause all game function
		pause();
		
		// Create game over object.
		if(global.bossdead==0)
		{
		instance_create_layer(1920 / 2, 1080 / 2 - 150, "Instances", obj_game_over);
		}
	}
}

// If the game is over...
// We do this by checking is an end game screen is present.
if (!instance_exists(obj_upgrade) && !instance_exists(obj_template_complete))
{
			if((global.bossdead == 1)&&(global.over_destroy==0))
	{
	instance_create_layer(1920 / 2, 1080 / 2, "Instances", obj_template_complete);
	global.over_destroy=1;
	}	
	// If we have reached the experience goal...
	if (global.xp >= global.xp_goal)
	{
		// Destroy the enemies.
		with (obj_enemy) instance_destroy();
	
		// Destroy any bullets.
		with (obj_hero_bullet) instance_destroy();
	
		// Destroy any xp pickups.
		with (obj_collectable) instance_destroy();
	
		// Destroy any health pickups.
		with (obj_heart) instance_destroy();
	
		// If we are on the last wave...
		
		if (global.level > 9)
		{
			if(!global.bossdead==1)
			{	if(!instance_exists(oEnemyDragon))
				{
				instance_create_layer(global.bspawnx, global.bspawny, "Instances", oEnemyDragon);
				}
				// Level up!
				global.level += 1;
				instance_create_layer(0, 0, "Instances", obj_upgrade_screen);
				// Execute function to go to the next wave.
				next_wave();
			}
			// Create the upgrade screen.

			
		}
	else
	{
		instance_create_layer(0, 0, "Instances", obj_upgrade_screen);
		global.level += 1;
		next_wave();

	}
		if((global.bossdead == 1)&&(global.over_destroy==0))
		{
			instance_create_layer(1920 / 2, 1080 / 2, "Instances", obj_template_complete);
		}
	}
}

// If the game is not currently paused...
if (!global.paused)
{
	// Reduce spawner cooldown timer.
	spawn_enemy_cooldown--;
	
	// Checks if spawner has expired.
	if (spawn_enemy_cooldown <= 0)
	{
		// Calls spawn enemy function.
		spawn_enemy();	
	}
}
if((global.bossdead == 1)&&(global.over_destroy==1)&&(global.xp >= global.xp_goal))
{
		instance_create_layer(0, 0, "Instances", obj_upgrade_screen);
		global.level += 1;
		next_wave();
}