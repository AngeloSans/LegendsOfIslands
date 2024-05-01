if (index == 2) {
    if (keyboard_check_pressed(ord("A"))) {
        room_goto(SalaMenu);
	}
}

if (index == 1) {
    audio_stop_all();
}

if keyboard_check_pressed(vk_anykey) {
    audio_play_sound(buttonclickMenu, 0, false);
}