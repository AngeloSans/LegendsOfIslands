draw_set_color(c_white); 
draw_set_font(FontTexto);
var proximo = "Proximo";
draw_set_font(FonteDeTexto);


var _texto = string_copy(texto, 0, indice);

if(keyboard_check_pressed(vk_space))indice++;



var dist = 55;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 1.6;
var y1 = gui_altura /1.8;
var x2 = gui_largura / 1.15;
var y2 = gui_altura /8.9;

draw_text(x2, y2, proximo);

//draw_sprite(Speechtext, 10, 20, 5);
draw_text_ext(x1 + margem, y1, _texto, 40, 900 - margem);
