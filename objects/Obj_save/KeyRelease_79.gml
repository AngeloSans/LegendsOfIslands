if (file_exists(global.save_path)) {
    show_message("Arquivo de salvamento encontrado, carregando...");
    ini_open(global.save_path);
	
	var sala_atual = ini_read_string("jogador", "sala_atual", "");
    if (sala_atual != "") {
        room_goto(sala_atual);
    } else {
        show_message("Sala atual não encontrada no arquivo de salvamento.");
    }

    // Carregar as posições do jogador
    Player.x = ini_read_real("jogador", "x_atual", 0);
    Player.y = ini_read_real("jogador", "y_atual", 0);

    // Carregar a sala atual
    

    ini_close();
    
    // Exibir as posições carregadas
    show_message("Dados carregados: x = " + string(Player.x) + ", y = " + string(Player.y));
} else {
    show_message("Arquivo de salvamento não encontrado.");
}