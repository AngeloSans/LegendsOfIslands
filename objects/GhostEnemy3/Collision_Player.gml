// Verifica se o jogador não está invulnerável
with (other) {
    if (invulnerability_time <= 0) {
        if (global.vida > 0) {
            global.vida -= 1; // Subtrai 1 da vida apenas se for maior que 0
            invulnerability_time = invulnerability_max; // Reinicia o tempo de invulnerabilidade
        }
    }
}
