if(mouse_check_button_pressed(mb_left)){
	if(myTextbox==noone){	
	myTextbox= instance_create_layer(952,532,"Text",obj_text_story);
	myTextbox.text=myText;
	myTextbox.button=but;
	}
}