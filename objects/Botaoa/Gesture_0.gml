
    with(ObjMenu) {
        if (index == 3) {
            game_end();
        } else if (index == 2) {
            room_goto(SalaOpcoes);
        } else if (index == 1) {
            // Adicione a lógica da SalaOpcoes1 se necessário
        } else if (index == 0) {
            room_goto(SalaTutorial);
        }
		audio_play_sound(buttonclickMenu, 0, false);
    }
	
with(OpcoesMenu){
	if(index == 1){
	
	room_goto_previous();
	
}

if(index == 0){
	obj_sound_manager.music = !obj_sound_manager.music
	audio_stop_all();
}

audio_play_sound(buttonclickMenu, 0, false);

}
with(ObjTutorial){
	room_goto(SalaIntroducao);
}	

with(ObjIntroducao){
	room_goto(AnaJansenFaseOne);
}
with(SERPENTE){
	room_goto(SerpenteFase);
}
with(BestiarioAnaNext){
	room_goto(AnaJansenFase);
}

with(ObjFinalFase){
	room_goto(SerpenteFase);
}