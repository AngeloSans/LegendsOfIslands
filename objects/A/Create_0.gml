var spriteW = sprite_get_width(sprite_index);
var spriteH = sprite_get_height(sprite_index);

// Define as coordenadas e dimensões da tecla virtual
var x_position = spriteW * 15;
var y_position = spriteW * 8;
var width = spriteW * 2;
var height = spriteH * 2;

//teste
//var x_position = sprite_get_width(sprite_index) * 5;
//var y_position = sprite_get_width(sprite_index) * 5;
//var width = sprite_get_width(sprite_index) * 5;
//var height = sprite_get_height(sprite_index) * 5;

// Cria a tecla virtual
botaoa = virtual_key_add(x_position, y_position, width, height, ord("A"));
