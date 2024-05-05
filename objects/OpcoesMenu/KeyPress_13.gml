if(index == 2){
	
	room_goto(SalaMenu);
	
}

if(index == 1){
	obj_sound_manager.music = false
	audio_stop_all();
}

if keyboard_check_pressed(vk_anykey) {
    audio_play_sound(buttonclickMenu, 0, false);
}