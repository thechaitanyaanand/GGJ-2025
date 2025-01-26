if(keyboard_check_pressed(vk_space))
{
	if(page+1<array_length_1d(text))
	{
	page+=1;
	charCount=0;
	} else
	{
		room_goto(rm_game);
	}
}
