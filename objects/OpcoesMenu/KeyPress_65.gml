if(index == 1){
	
	room_goto_previous();
	
}

if(index == 0){
	obj_sound_manager.music = !obj_sound_manager.music
	audio_stop_all();
}

if keyboard_check_pressed(vk_anykey) {
    audio_play_sound(buttonclickMenu, 0, false);
}