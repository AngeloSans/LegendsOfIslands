// Verifica se o arquivo de salvamento existe antes de tentar carregar
if (global.save_path != "" && file_exists(global.save_path)) {
    show_message("Arquivo de salvamento encontrado, carregando...");
    ini_open(global.save_path);
    
    // Ler a sala atual como string
    var sala_atual_str = ini_read_string("jogador", "sala_atual", "");
    show_message("Sala lida do arquivo: " + sala_atual_str);
    
    if (sala_atual_str != "") {
        // Converter a string da sala para o índice da sala
        var sala_atual = asset_get_index(sala_atual_str);
        
        if (sala_atual != -1) {
            show_message("Indo para a sala: " + sala_atual_str);
            room_goto(sala_atual);
        } else {
            show_message("Sala atual não encontrada ou inválida.");
        }
    } else {
        show_message("Sala atual não encontrada no arquivo de salvamento.");
    }

    // Carregar as posições do jogador
    if (instance_exists(Player)) {
        Player.x = ini_read_real("jogador", "x_atual", 0);
        Player.y = ini_read_real("jogador", "y_atual", 0);

        // Exibir as posições carregadas
        show_message("Dados carregados: x = " + string(Player.x) + ", y = " + string(Player.y));
    } else {
        show_message("Objeto Player não existe.");
    }

    ini_close();
} else {
    show_message("Arquivo de salvamento não encontrado.");
}
