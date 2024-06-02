opcoes = ["Novo Jogo", "Créditos", "Opções", "Sair"];
index = 0;
op_max = array_length(opcoes);
background_color = c_white;  // Inicializar a cor de fundo

var musicaTocando = true;

if (obj_sound_manager.music && !audio_is_playing(musicadefundolendasdailha)){
    audio_play_sound(musicadefundolendasdailha, true, 1);
}

// Adicionar botão virtual inicial para toque
global.button_id = virtual_key_add(100, 200, 164, 264, vk_space);  // x1, y1, x2, y2, keycode
global.new_button_id = -1;  // Inicialmente, não há novo botão

// Definir a variável para verificar as teclas
key_A = keyboard_check(vk_left) or keyboard_check(ord("A"));
