
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
	
with(Player){
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
	
	//Atacar serpente
	
	if (image_xscale == 1) {
        enemy_inst = collision_rectangle(x, y - attack_range_y / 2, x + attack_range_x, y + attack_range_y / 2, TerrenoSepente, false, true);
    } else {
        enemy_inst = collision_rectangle(x - attack_range_x, y - attack_range_y / 2, x, y + attack_range_y / 2, TerrenoSepente, false, true);
    }
    if (enemy_inst) {
        global.serpenteLife -= 1;

        if (global.serpenteLife <= 0) {
			global.serpenteMorte = true;
            instance_destroy(enemy_inst);
        }
    }


}
