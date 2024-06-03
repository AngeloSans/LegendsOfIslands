draw_set_color(c_white); 
draw_set_font(FontTexto);

var proximo = "Proximo";
var _texto = string_copy(texto, 0, indice);

if(keyboard_check_pressed(vk_space))indice++;



var dist = 55;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura /1.2;
var x2 = gui_largura / 1.15;
var y2 = gui_altura /8.9;

draw_text(x2, y2, proximo);

//draw_sprite(Speechtext, 10, 20, 5);
draw_text_ext(x1 + margen, y1, _texto, 20, 700 - margen);
