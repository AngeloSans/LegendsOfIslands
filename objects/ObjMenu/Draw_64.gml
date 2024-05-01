draw_set_font(FonteMenu);

var dist = 80;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura / 3;
var outline_width = 2; 

for (var i = 0; i < op_max; i++) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    var texto = opcoes[i];
    var x2 = x1;
    var y2 = y1 + (dist * i);
    
   
    var texto_cor = c_white;
    var outline_cor = c_black;
    if (index == i) {
        texto_cor = c_purple;
        outline_cor = c_white;
    }
    
   
    draw_set_color(outline_cor);
    for (var j = -outline_width; j <= outline_width; j++) {
        for (var k = -outline_width; k <= outline_width; k++) {
            if (abs(j) + abs(k) == outline_width * 2) {
                draw_text(x2 + j, y2 + k, texto);
            }
        }
    }
    
    
    draw_set_color(texto_cor);
    draw_text(x2, y2, texto);
}

draw_set_font(-1);
