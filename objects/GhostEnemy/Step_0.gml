if(global.morte) exit;
if (!global.pause) {
    var player_x = Player.x;
    var player_y = Player.y;

    if (player_x > camera_get_view_x(view_camera[0]) && player_x < camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) &&
        player_y > camera_get_view_y(view_camera[0]) && player_y < camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])) {

        var distance_to_player = point_distance(x, y, player_x, player_y);
        var raio_perseguicao = 200;

        if (distance_to_player < raio_perseguicao) {
            var direct = point_direction(x, y, player_x, player_y);
            var velocidade = 0.1;
            var move_x = lengthdir_x(velocidade, direct);
            var move_y = lengthdir_y(velocidade, direct);
            x += move_x;
            y += move_y;
        }
    }

    // Lógica de piscar
    if (blinking) {
        blink_timer -= 1;
        // Alternar a visibilidade do sprite para criar o efeito de piscar
        image_alpha = (blink_timer mod 10 < 5) ? 0.5 : 1;
        if (blink_timer <= 0) {
            blinking = false;
            image_alpha = 1; // Restaurar opacidade completa
        }
    }
}

