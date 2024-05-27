if (global.vida > 0) { // Verifique se o inimigo ainda tem HP
    global.vida -= 1; // Causa 10 de dano, ajuste conforme necessário
    instance_destroy(); // Destrua o projétil após a colisão
}