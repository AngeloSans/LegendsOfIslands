draw_set_font(FonteMenu);
draw_set_color(c_white);

var distText = 100;

var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1_text = gui_largura/3;
var y1_text = gui_altura/3;

draw_set_halign(fa_left);

for(var i=0;i<opc_max;i++){
	draw_set_halign(fa_right);
	draw_set_valign(fa_left);
	draw_text(x1_text,y1_text + (distText*i),opcoes_config[i]);
	
}


//opcoes do text
draw_set_font(FonteMenu);
draw_set_color(c_white);

// Ajuste a distância horizontal entre os elementos do vetor
var dist = 150;

var x1 = gui_largura / 1.5;
var y1 = gui_altura / 3;

// Define o alinhamento horizontal para a esquerda
draw_set_halign(fa_left);

for (var j = 0; j < array_length(config_text); j++) {
    // Define o alinhamento vertical para o topo
    draw_set_valign(fa_top);

    // Calcula a posição horizontal com base no índice do vetor
    var x_calcul = x1 + (dist * j);

    // Desenha o texto alinhado
    draw_text(x_calcul, y1, config_text[j]);

    // Define a cor do texto com base no índice
    if (index == j) {
        draw_set_color(c_purple);
    } else {
        draw_set_color(c_white);
    }

    // Desenha o texto alinhado
    draw_text(x_calcul, y1, config_text[j]);
}

draw_set_font(-1);
