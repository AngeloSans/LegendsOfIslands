// Variáveis de movimentação e estado
global.move_speed = 2;
global.jump_speed = 12;
global.vida = 5;
global.morte = false;
global.move_x = 0;
global.move_y = 0;


global.menu_A=virtual_key_add(x,y,sprite_width,sprite_width,ord("A"))
//superpower
// Evento Create do Player
superpower_active = false;
superpower_timer = 0;
blink_timer = 0;

//mudar no ataque
alpha = 0;
color = c_white;

invulnerability_duration = 20;

dash_duration = 10; // Duração do dash em steps
dash_speed = 1; // Velocidade do dash
dash_timer = 0; // Contador do dash
is_dashing = false; // Estado de dash
// Evento Create do Player
show_debug_message("Player criado na sala: " + string(room));

// Variáveis de invulnerabilidade
invulnerability_time = 0; // Tempo de invulnerabilidade
invulnerability_max = 60; // Duração da invulnerabilidade em frames (1 segundo, assumindo 60 fps)
