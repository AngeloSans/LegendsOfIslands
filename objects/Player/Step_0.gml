if(global.pause)exit;

move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

if (place_meeting(x, y+2, Ground))
{
	move_y = 0;
	if (keyboard_check(vk_space)) move_y = -jump_speed;
}
else if (move_y < 10) move_y += 1;

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
}
else if (keyboard_check(ord("A"))) {
    sprite_index = Atacar;
}
else {
    sprite_index = Parado;
}

//destruir inimigo
if (keyboard_check_pressed(ord("A"))) {
    // Verifique a colisão com o objeto inimigo
    if (place_meeting(x, y, GhostEnemy)) {
        // Obtenha a instância do inimigo em contato
        var enemy_inst = instance_place(x, y, GhostEnemy);
        
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
var gui_h = display_get_height();

if(global.vida < 1){
	sprite_index = Death;
	draw_set_alpha(.90);
	draw_set_color(c_black);
	draw_rectangle(0,0,gui_w,gui_h,false)
}	