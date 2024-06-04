// Define as coordenadas e dimensões do botão virtual
var x_position = sprite_get_width(sprite_index) * 3.5;
var y_position = sprite_get_width(sprite_index) *8.5;
var width = sprite_get_width(sprite_index) * 2;
var height = sprite_get_height(sprite_index) * 2;

// Desenhe o sprite esticado na posição do botão virtual
draw_sprite_stretched(BotaoLeft, 0, x_position, y_position, width, height);

//draw_set_color(c_red); // Define a cor do retângulo, por exemplo, vermelho
//draw_rectangle(x_position, y_position, x_position + width, y_position + height, false);