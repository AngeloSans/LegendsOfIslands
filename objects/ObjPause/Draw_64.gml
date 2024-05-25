if (global.morte) exit;

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

if (global.pause) {
    draw_set_alpha(0.8);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);
    
    // botões
    draw_set_font(FontTexto);
    draw_set_color(c_white);
    
    var dist = 80;
    var x1 = gui_w / 2.1;
    var y1 = gui_h / 2.2;
    
    for (var i = 0; i < opc_max; i++) {
        draw_set_halign(fa_center);
        draw_set_valign(fa_center);
        draw_text(x1, y1 + (dist * i), pause_config[i]);
        
        // Define a cor do texto com base no índice
        if (index == i) {
            draw_set_color(c_purple);
        } else {
            draw_set_color(c_white);
        }
        
        draw_text(x1, y1 + (dist * i), pause_config[i]);
    }
    
    if (keyboard_check_pressed(ord("A"))) {
        // Execute a ação correspondente à opção selecionada
        if (index == 0) { // Ação para a primeira opção
            if (file_exists("Save.sav")) file_delete("save.sav");
            ini_open("save.sav");
            ini_close();
            show_message("jogo salvo com sucesso!");  // Insira a ação aqui
        }
        if (index == 1) { // Ação para a segunda opção
            room_goto(SalaMenu);
        }
    }
}

// Restaura o alpha para 1 fora do bloco de código do menu de pausa
draw_set_alpha(1);
