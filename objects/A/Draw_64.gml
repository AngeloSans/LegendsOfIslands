// Define as coordenadas e dimensões do botão virtual
var x_position = sprite_get_width(sprite_index) * 15;
var y_position = sprite_get_width(sprite_index) *8;
var width = sprite_get_width(sprite_index) * 2;
var height = sprite_get_height(sprite_index) * 2;

// Desenhe o sprite esticado na posição do botão virtual
draw_sprite_stretched(gdb_xbox_2, 0, x_position, y_position, width, height);
