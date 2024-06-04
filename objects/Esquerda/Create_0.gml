
var spriteW = sprite_get_width(sprite_index);
var spriteH = sprite_get_height(sprite_index);

// Define as coordenadas e dimensões da tecla virtual
var x_position = spriteW * 3.5;
var y_position = spriteW * 8.5;
var width = spriteW * 2;
var height = spriteH * 2;


// Cria a tecla virtual
esquerda = virtual_key_add(x_position, y_position, width, height, vk_left)