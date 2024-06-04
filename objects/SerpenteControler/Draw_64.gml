
draw_self(); 

draw_set_color(c_red); 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Desenha o tempo restante na tela
var tempo_mostrado = string(floor(tempo_restante)); 
draw_text(view_xview[0] + view_wview[0] / 2, 60, tempo_mostrado); // Desenha no centro superior da tela
