/* Atualize a posição do objeto com base na velocidade e direção
x += speed_ana * direction_ana;

// Mude a direção do sprite do objeto de acordo com a direção de movimento
if (direction_ana == 1) {
    image_xscale = 1; // Mantenha o sprite na orientação original
    show_debug_message("Movendo para a direita.");
} else {
    image_xscale = -1; // Inverta o sprite horizontalmente
    show_debug_message("Movendo para a esquerda.");
}

// Debug messages
show_debug_message("Posição X: " + string(x));
show_debug_message("Direção: " + string(direction_ana));
*/