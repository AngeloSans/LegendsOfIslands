if(global.pause) exit;
if(global.morte) exit;

move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

if (place_meeting(x, y + 2, Ground)) {
    move_y = 0;
    if (keyboard_check(vk_space)) move_y = -jump_speed;
} else if (move_y < 10) {
    move_y += 1;
}

move_and_collide(move_x, move_y, Ground);

if (move_x != 0)
    image_xscale = sign(move_x);

if (keyboard_check(vk_right) || keyboard_check(vk_left)) {
    // Verificar se está se movendo para a direita
    if (keyboard_check(vk_right)) {
        sprite_index = Correndo;
        image_xscale = 1; // Garantir que o personagem esteja virado para a direita
    }
    // Verificar se está se movendo para a esquerda
    else if (keyboard_check(vk_left)) {
        sprite_index = Correndo;
        image_xscale = -1; // Inverter a escala horizontal para que o personagem esteja virado para a esquerda
    }
} else if (keyboard_check(ord("A"))) {
    sprite_index = Atacar;
} else {
    sprite_index = Parado;
}

// Atualizar o tempo de invulnerabilidade
if (invulnerability_time > 0) {
    invulnerability_time -= 1;
}

// Aumentar a distância do ataque
if (keyboard_check_pressed(ord("A"))) {
    // Defina a área de ataque maior
    var attack_range_x = 30; // Aumente conforme necessário para aumentar a largura do ataque
    var attack_range_y = 32; // Aumente conforme necessário para aumentar a altura do ataque

    // Verifique a colisão com o objeto inimigo dentro da área de ataque
    var enemy_inst;
    if (image_xscale == 1) {
        // Ataque para a direita
        enemy_inst = collision_rectangle(x, y - attack_range_y / 2, x + attack_range_x, y + attack_range_y / 2, GhostEnemy, false, true);
    } else {
        // Ataque para a esquerda
        enemy_inst = collision_rectangle(x - attack_range_x, y - attack_range_y / 2, x, y + attack_range_y / 2, GhostEnemy, false, true);
    }

    if (enemy_inst) {
        // Reduza a vida do inimigo
        enemy_inst.life -= 1;

        // Verifique se a vida do inimigo é menor ou igual a zero
        if (enemy_inst.life <= 0) {
            // Destrua o inimigo
            instance_destroy(enemy_inst);
        }
    }
}

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

if (global.vida < 1) {
    sprite_index = Death;
    draw_set_alpha(.90);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);
    global.morte = true;
}
