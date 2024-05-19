// Define o caminho completo para o arquivo de salvamento usando working_directory
global.save_path = working_directory + "save.sav";

// Verifica se o arquivo de salvamento existe e o exclui, se necessário
if (file_exists(global.save_path)) {
    file_delete(global.save_path);
}

// Abre o arquivo de salvamento para escrita
ini_open(global.save_path);

// Escreve as posições do jogador no arquivo de salvamento
ini_write_real("jogador", "x_atual", Player.x);
ini_write_real("jogador", "y_atual", Player.y);

ini_write_string("jogador", "sala_atual", room_get_name(room));

// Fecha o arquivo de salvamento
ini_close();

// Exibe uma mensagem de sucesso
show_message("Jogo salvo com sucesso!");
