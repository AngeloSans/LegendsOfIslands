

var spriteW = sprite_get_width(sprite_index);
var spriteH = sprite_get_height(sprite_index);

var x_position = spriteW * 5;
var y_position = spriteW * 8.7;
var width = spriteW * 3;
var height = spriteH * 3;

//teste
//var x_position = sprite_get_width(sprite_index) * 5;
//var y_position = sprite_get_width(sprite_index) * 5;
//var width = sprite_get_width(sprite_index) * 5;
//var height = sprite_get_height(sprite_index) * 5;

// Cria a tecla virtual
baixo = virtual_key_add(x_position, y_position, width, height, vk_down);
