// Variáveis para controlar o escurecimento
var escurecimento_velocidade = 0.01; // Ajuste conforme necessário
var alpha = 0; // Começamos com transparência total

// Verifique se estamos escurecendo a tela
if (global.escurecendo_tela) {
    // Aumentar gradualmente a transparência
    alpha += escurecimento_velocidade;
    if (alpha >= 1) {
        alpha = 1; // Certifique-se de que não ultrapasse a transparência total
        global.escurecendo_tela = false; // Pare de escurecer a tela quando atingir a transparência total
    }
}

// Desenhe a tela escura
if (global.escurecendo_tela) {
    draw_set_alpha(alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1); // Restaurar o valor padrão de alfa para evitar efeitos indesejados
}


