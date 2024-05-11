// Evento Step do objeto inimigo (obj_enemy)
if(global.pause)exit;
// Obtenha a posição atual do jogador
var player_x = Player.x;
var player_y = Player.y;

// Calcule a direção entre o inimigo e o jogador
var direct = point_direction(x, y, player_x, player_y);

// Defina a velocidade de movimento do inimigo
var velocidade = 2; // Ajuste conforme necessário

// Calcule o movimento na direção do jogador
var move_x = lengthdir_x(velocidade, direct);
var move_y = lengthdir_y(velocidade, direct);

// Mova o inimigo em direção ao jogador
x += move_x;
y += move_y;
