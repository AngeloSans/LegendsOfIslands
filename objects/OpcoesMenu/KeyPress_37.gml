index++;
if(index > opc_max -1){
	index = 0;

}

if keyboard_check_pressed(vk_down) {
    audio_play_sound(buttonclickMenu, 1, false);
}