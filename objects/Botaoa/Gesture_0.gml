
    with(ObjMenu) {
        if (index == 3) {
            game_end();
        } else if (index == 2) {
            room_goto(SalaOpcoes);
        } else if (index == 1) {
            // Adicione a lógica da SalaOpcoes1 se necessário
        } else if (index == 0) {
            room_goto(SalaTutorial);
        }
    }
