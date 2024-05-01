draw_set_font(FontTexto);
draw_set_color(c_white);

var dist = 150;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2.7;
var y1 = gui_altura / 3.1;

for (var i = 0; i < opc_max; i++) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    draw_text(x1, y1 + (dist * i), opcoes_config[i]);

    // Define a cor do texto com base no índice
    if (index == i) {
        draw_set_color(c_purple);
    } else {
        draw_set_color(c_white);
    }

    draw_text(x1, y1 + (dist * i), opcoes_config[i]);
}



draw_set_font(FontTexto);
draw_set_color(c_white);


var dist_Textop = 150;
var x1_optext = gui_largura / 1.8;
var y1_textop = gui_altura / 3.2;

draw_set_halign(fa_left);

for (var j = 0; j < array_length(config_text); j++) {
	draw_set_valign(fa_top); 
	var x_calcul = x1_optext + (dist_Textop * j);
	draw_text(x_calcul, y1_textop, config_text[j]);
    
}

draw_set_font(FontTexto);
draw_set_color(c_white);


var dist_Somop = 150;
var x1_opSom = gui_largura / 1.8;
var y1_opSom = gui_altura / 2;

draw_set_halign(fa_left);

for (var s = 0; s < array_length(config_text); s++) {
	draw_set_valign(fa_top); 
	var x_calculSom = x1_opSom + (dist_Somop * s);
	draw_text(x_calculSom, y1_opSom, config_som[s]);
    
}




// Cria o texto "Opções"
texto = "Opções";
draw_set_color(c_white);
var x1_texto = gui_largura / 5.5;
var y1_texto = gui_altura / 6.5;
// Desenha o texto na tela
draw_text(x1_texto, y1_texto, texto);

draw_set_font(-1);
