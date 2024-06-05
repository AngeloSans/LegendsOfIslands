var spriteW = sprite_get_width(sprite_index);
var spriteH = sprite_get_height(sprite_index);

// Define as coordenadas e dimensões da tecla virtual
var x_position = spriteW * 11;
var y_position = spriteW * 8;
var width = spriteW * 2.5;
var height = spriteH * 2.5;


// Cria a tecla virtual
pause = virtual_key_add(x_position, y_position, width, height, vk_enter);
