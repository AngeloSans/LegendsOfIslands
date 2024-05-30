if (global.pause) exit;
if (global.morte) exit;

global.move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
global.move_x *= global.move_speed;

if (place_meeting(x, y + 2, AnaTerreno)) {
    global.move_y = 0;
    if (keyboard_check(vk_space)) global.move_y = -global.jump_speed;
} else if (global.move_y < 10) {
    global.move_y += 1;
}

move_and_collide(global.move_x, global.move_y, AnaTerreno);

if (global.move_x != 0) {
    image_xscale = sign(global.move_x);
}

if (keyboard_check(vk_right) || keyboard_check(vk_left)) {
    sprite_index = Correndo;
    image_xscale = (keyboard_check(vk_right)) ? 1 : -1;
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
    audio_play_sound(soundash, 1, false);

    var attack_x1 = (image_xscale == 1) ? x : x - attack_range_x;
    var attack_x2 = (image_xscale == 1) ? x + attack_range_x : x;

    // Atacar GhostEnemy
    enemy_inst = collision_rectangle(attack_x1, y - attack_range_y / 2, attack_x2, y + attack_range_y / 2, GhostEnemy, false, true);
    if (enemy_inst) {
        enemy_inst.life -= 1;
        enemy_inst.blinking = true;
        enemy_inst.blink_timer = enemy_inst.blink_duration;
        if (enemy_inst.life <= 0) {
            instance_destroy(enemy_inst);
            global.inimigos_restantes -= 1;
            show_debug_message("Inimigos restantes após destruição: " + string(global.inimigos_restantes));
        }
    }

    // Atacar GhostEnemy2
    enemy_inst = collision_rectangle(attack_x1, y - attack_range_y / 2, attack_x2, y + attack_range_y / 2, GhostEnemy2, false, true);
    if (enemy_inst) {
        enemy_inst.life1 -= 1;
        enemy_inst.blinking = true;
        enemy_inst.blink_timer = enemy_inst.blink_duration;
        if (enemy_inst.life1 <= 0) {
            instance_destroy(enemy_inst);
            global.inimigos_restantes -= 1;
            show_debug_message("Inimigos restantes após destruição: " + string(global.inimigos_restantes));
        }
    }

    // Atacar GhostEnemy3
    enemy_inst = collision_rectangle(attack_x1, y - attack_range_y / 2, attack_x2, y + attack_range_y / 2, GhostEnemy3, false, true);
    if (enemy_inst) {
        enemy_inst.life2 -= 1;
        enemy_inst.blinking = true;
        enemy_inst.blink_timer = enemy_inst.blink_duration;
        if (enemy_inst.life2 <= 0) {
            instance_destroy(enemy_inst);
            global.inimigos_restantes -= 1;
            show_debug_message("Inimigos restantes após destruição: " + string(global.inimigos_restantes));
        }
    }

    // Atacar Carroagem
    if (image_xscale == 1) {
        enemy_inst = collision_rectangle(x, y - attack_range_y / 2, x + attack_range_x, y + attack_range_y / 2, Carruagem, false, true);
    } else {
        enemy_inst = collision_rectangle(x - attack_range_x, y - attack_range_y / 2, x, y + attack_range_y / 2, Carruagem, false, true);
    }
    if (enemy_inst) {
        global.lifeAna -= 1;

        if (global.lifeAna <= 0) {
            instance_destroy(enemy_inst);
			global.destruicao = true;
        }
    }

}
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

if (global.vida< 1) {
    draw_set_alpha(.90);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);
    global.morte = true;
}