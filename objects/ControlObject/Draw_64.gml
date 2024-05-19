draw_set_font(FontTexto);
draw_text(10, 10, "Inimigos restantes: " + string(global.inimigos_restantes));

if (global.inimigos_restantes <= 0) {
    draw_sprite_stretched(WinGhost, 0, 0, 0, display_get_gui_width(), display_get_gui_height());
    
    var text1 = "Parabéns! Os fantasmas foram contidos, porém ainda há mais 2 desafios pela frente.";
    var text2 = "Pressione A para ir para a próxima fase";
    var x_1 = display_get_gui_width() / 2;
    var y_2 = display_get_gui_height() / 2;

    draw_set_halign(fa_center);  // Alinha horizontalmente o texto ao centro
    draw_set_valign(fa_middle);  // Alinha verticalmente o texto ao meio
    
    // Desenha a primeira linha de texto
    draw_text(x_1, y_2 - 20, text1);
    // Desenha a segunda linha de texto
    draw_text(x_1, y_2 + 20, text2);
    
    if (keyboard_check(ord("B"))) {
        room_goto(AnaJansenFase);
    }
}
