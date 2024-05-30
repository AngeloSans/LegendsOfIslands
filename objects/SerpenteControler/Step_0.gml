if (global.pause) exit;// No evento Step do SerpenteControler
// No evento Step do SerpenteControler
tempo_restante -= 1 / room_speed; // Subtrai 1 segundo por segundo

// Verifica se o tempo acabou
if (tempo_restante <= 0) {
    global.destruicao = true;
}
