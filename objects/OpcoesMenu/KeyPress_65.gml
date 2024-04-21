if(index ==3){
	game_end();
	
}
if(index == 2){
	room_goto(SalaOpcoes);
}	

if keyboard_check_pressed(vk_anykey) {
    audio_play_sound(buttonclickMenu, 0, false);
}