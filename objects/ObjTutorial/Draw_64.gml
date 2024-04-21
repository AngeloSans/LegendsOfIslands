// No evento Draw de um objeto ou da sala
draw_set_color(c_white); // Define a cor do texto (branco neste caso)
draw_set_font(FonteMenu); 

var dist = 55;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura/2;
var y1 = gui_altura/3;
draw_text(x1, y1, "Move o personagem principal"); // Desenha o texto na posição (x, y) com o texto "Seu texto aqui"

//texto 2

var x2 = gui_largura/2;
var y2 = gui_altura/1.6;
draw_text(x2, y2, "Usado para comfirmar escolhas e atacar"); // Desenha o texto na posição (x, y) com o texto "Seu texto aqui"

var x3 = gui_largura/2;
var y3 = gui_altura/1.2;
draw_text(x3, y3, "Usado para sair ou cancelar opções"); // Desenha o texto na posição (x, y) com o texto "Seu texto aqui"

