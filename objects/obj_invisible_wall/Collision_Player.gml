if (place_meeting(x, y, Player)) {
    // Evite a sobreposição movendo o jogador para fora da parede invisível
    while (place_meeting(x, y, Player)) {
        x += sign(Player.x - x);
        y += sign(Player.y - y);
    }
}