draw_set_font(FontTexto);

// Coordenadas para a imagem e o texto
var icon_x = 900;
var icon_y = 60;
var scale_factor = 0.2; // Fator de escala para reduzir o tamanho da imagem (0.5 significa reduzir pela metade)
var icon_width = sprite_get_width(ghosticone) * scale_factor;
var text_offset = icon_width + 10; // Deslocamento horizontal para o texto após a imagem (ajuste conforme necessário)
var texto_x = icon_x + text_offset;
var texto_y = icon_y;

// Desenha a imagem reduzida
draw_sprite_ext(ghosticone, 0, icon_x, icon_y, scale_factor, scale_factor, 0, c_white, 1);

// Desenha o texto ao lado da imagem
draw_text(texto_x, texto_y, "Inimigos restantes: " + string(global.inimigos_restantes));

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
    
    if (keyboard_check(ord("A"))) {
        room_goto(AnaJansenFase);
    }
}
