if(index == 2){
	
	room_goto(SalaMenu);
	
}

if (index == 1) {
    audio_stop_sound(musicadefundolendasdailha);
}

if keyboard_check_pressed(vk_anykey) {
    audio_play_sound(buttonclickMenu, 0, false);
}