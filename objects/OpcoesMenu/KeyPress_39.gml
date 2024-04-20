index--;
if(index <0){
	index = opc_max -1;

}
if keyboard_check_pressed(vk_right) {
    audio_play_sound(buttonclickMenu, 1, false);
}