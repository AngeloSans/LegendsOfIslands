// Evento Step do objeto inimigo (obj_enemy)
if (!global.pause) {
    // Obtenha a posição atual do jogador
    var player_x = Player.x;
    var player_y = Player.y;

    // Verifique se o jogador está dentro do campo de visão da câmera
    if (player_x > camera_get_view_x(view_camera[0]) && player_x < camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) &&
        player_y > camera_get_view_y(view_camera[0]) && player_y < camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])) {

        // Calcule a distância entre o inimigo e o jogador
        var distance_to_player = point_distance(x, y, player_x, player_y);

        // Defina o raio de distância para iniciar a perseguição
        var raio_perseguicao = 200; // Ajuste conforme necessário

        // Se o jogador estiver dentro do raio de perseguição, mova o inimigo em direção ao jogador
        if (distance_to_player < raio_perseguicao) {
            // Calcule a direção entre o inimigo e o jogador
            var direct = point_direction(x, y, player_x, player_y);

            // Defina a velocidade de movimento do inimigo
            var velocidade = 0.1; // Ajuste conforme necessário

            // Calcule o movimento na direção do jogador
            var move_x = lengthdir_x(velocidade, direct);
            var move_y = lengthdir_y(velocidade, direct);

            // Mova o inimigo em direção ao jogador
            x += move_x;
            y += move_y;
        }
    }
}
