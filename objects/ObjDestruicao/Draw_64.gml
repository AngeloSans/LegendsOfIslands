if (global.destruicao)  {
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
	draw_set_font(FontTexto);
    draw_set_color(c_white);
    
    var dist = 80;
    var x1 = display_get_gui_width() / 2.1;
    var y1 = display_get_height() / 2.2;
    
    for (var i = 0; i < opc_max; i++) {
        draw_set_halign(fa_center);
        draw_set_valign(fa_center);
        draw_text(x1, y1 + (dist * i), morte_config[i]);
        
        // Define a cor do texto com base no índice
        if (index == i) {
            draw_set_color(c_white);
        } else {
            draw_set_color(#8E8E8E);
        }
        
        draw_text(x1, y1 + (dist * i), morte_config[i]);
    }
    
    if (keyboard_check_pressed(ord("A"))) {
        // Execute a ação correspondente à opção selecionada
            if(index == 0){// Ação para a primeira opção
                room_restart();
			}
            if(index == 1){ // Ação para a segunda opção
                
				room_goto(SalaMenu);
              
        }
    }
	if keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down) {
    audio_play_sound(buttonclickMenu, 1, false);
}
	
}

