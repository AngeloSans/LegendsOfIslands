if(index ==2){
	
	room_goto_previous();
	
}

if (index == 1) {
   audio_stop_all();
  
}

if keyboard_check_pressed(vk_enter) {
    audio_play_sound(buttonclickMenu, 0, false);
}