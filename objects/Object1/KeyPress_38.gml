index--;
if(index <0){
	index = op_max -1;

}
if keyboard_check_pressed(vk_up) {
    audio_play_sound(buttonclickMenu, 1, false);
}