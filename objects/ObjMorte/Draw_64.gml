if (global.morte) {
    valor = lerp(valor, 1, 0.04);
    
    // Certifique-se de que o valor esteja entre 0 e 1
    valor = clamp(valor, 0, 1);
    
    // Inicie o bloco de desenho
    draw_self();

    // Desenhe a tela escura com a transparência atual
    draw_set_alpha(valor);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

    // Restaure o valor padrão de alfa para evitar efeitos indesejados
    draw_set_alpha(1);
	
}
