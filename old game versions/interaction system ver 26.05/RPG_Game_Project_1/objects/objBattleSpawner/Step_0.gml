

if (state == REMOVE)
{
	
	visible = false;
	
	with(objSpawnManager)
	{
		array_delete(spawns, other.index, 1);
	}
	
	instance_destroy();
}

if (spawner_room == global.warp_destination)
{
	visible = true;
	state = READY;
}
else
{
	visible = false;
	state = STAND_BY;
}

if (state == READY)
{
	// ANIMATION 
	var curr_sprite = sprite_index;
		
	sprite_index = anim_idle;
	// if animation stops midway, restart it at 0 next time
	if (curr_sprite != sprite_index) 
	{
		localFrame = 0;
	}
	ScriptAnimateSprite();
}

