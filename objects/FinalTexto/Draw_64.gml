draw_set_color(c_white); 
draw_set_font(FontTexto);

var _texto = string_copy(texto, 0, indice);

if(keyboard_check_pressed(vk_space))indice++;



var dist = 1000;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 2;
var y1 = gui_altura /5;



//draw_sprite(Speechtext, 10, 20, 5);
draw_text_ext(x1 + margen, y1, _texto, 20, 700 - margen);

