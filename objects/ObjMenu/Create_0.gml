opcoes = ["Novo Jogo", "Continuar", "Opções","Sair"];
index = 0;
op_max = array_length(opcoes);

var musicaTocando = true;

if (obj_sound_manager.music && !audio_is_playing(musicadefundolendasdailha)){
	audio_play_sound(musicadefundolendasdailha, true, 1);
}

// Verifique o estado da música antes de tocar


// Pare a música quando o jogador sai da sala