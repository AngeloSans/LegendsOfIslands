if (index == 3) {
    game_end();
}

if (index == 2) {
    room_goto(SalaOpcoes);
}

if (index == 0) {
    room_goto(SalaTutorial);    
}

if (index == 1) {
    if (file_exists(global.save_path)) {
    show_message("Arquivo de salvamento encontrado, carregando...");
    ini_open(global.save_path);

    // Carregar as posições do jogador
    Player.x = ini_read_real("jogador", "x_atual", 0);
    Player.y = ini_read_real("jogador", "y_atual", 0);

    // Carregar a sala atual
    var sala_atual = ini_read_string("jogador", "sala_atual", "");
    if (sala_atual != "") {
        room_goto(sala_atual);
    } else {
        show_message("Sala atual não encontrada no arquivo de salvamento.");
    }

    ini_close();
    
    // Exibir as posições carregadas
    show_message("Dados carregados: x = " + string(Player.x) + ", y = " + string(Player.y));
} else {
    show_message("Arquivo de salvamento não encontrado.");
}
}

if (keyboard_check_pressed(vk_enter)) {
    audio_play_sound(buttonclickMenu, 0, false);
}
