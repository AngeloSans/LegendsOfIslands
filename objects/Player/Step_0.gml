// Evento Step do Player
if (global.pause) exit;
if (global.morte) exit;

move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

if (place_meeting(x, y + 2, Ground)) {
    move_y = 0;
    if (keyboard_check(vk_space)) move_y = -jump_speed;
} else if (move_y < 10) {
    move_y += 1;
}

move_and_collide(move_x, move_y, Ground);

if (move_x != 0) {
    image_xscale = sign(move_x);
}

if (keyboard_check(vk_right) || keyboard_check(vk_left)) {
    if (keyboard_check(vk_right)) {
        sprite_index = Correndo;
        image_xscale = 1;
    } else if (keyboard_check(vk_left)) {
        sprite_index = Correndo;
        image_xscale = -1;
    }
} else if (keyboard_check(ord("A"))) {
    sprite_index = Atacar;
} else {
    sprite_index = Parado;
}

if (invulnerability_time > 0) {
    invulnerability_time -= 1;
}

if (keyboard_check_pressed(ord("A"))) {
    var attack_range_x = 30;
    var attack_range_y = 50;
    var enemy_inst;
    if (image_xscale == 1) {
        enemy_inst = collision_rectangle(x, y - attack_range_y / 2, x + attack_range_x, y + attack_range_y / 2, GhostEnemy, false, true);
    } else {
        enemy_inst = collision_rectangle(x - attack_range_x, y - attack_range_y / 2, x, y + attack_range_y / 2, GhostEnemy, false, true);
    }

    if (enemy_inst) {
        enemy_inst.life -= 1;
        enemy_inst.blinking = true;
        enemy_inst.blink_timer = enemy_inst.blink_duration;

        if (enemy_inst.life <= 0) {
            instance_destroy(enemy_inst);
            global.inimigos_restantes -= 1; // Decrementa o contador de inimigos
            show_debug_message("Inimigos restantes após destruição: " + string(global.inimigos_restantes)); // Mensagem de debug
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
