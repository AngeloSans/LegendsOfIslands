if (global.inimigos_restantes <= 0) {
    show_message("Você venceu!");
    global.inimigos_restantes = -1; // Para garantir que a mensagem só apareça uma vez
}
