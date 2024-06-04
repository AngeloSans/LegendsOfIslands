// No evento Draw de um objeto ou da sala
draw_set_color(c_white); // Define a cor do texto (branco neste caso)
draw_set_font(FontTexto); 

var dist = 55;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura/1.7;
var y1 = gui_altura/4.8;
draw_text(x1, y1, "Move o personagem principal"); // Desenha o texto na posição (x, y) com o texto "Seu texto aqui"

//texto 2

var x2 = gui_largura/1.55;
var y2 = gui_altura/2.4;
draw_text(x2, y2, "Usado para confirmar escolhas e atacar"); // Desenha o texto na posição (x, y) com o texto "Seu texto aqui"

var x3 = gui_largura/1.6;
var y3 = gui_altura/1.8;
draw_text(x3, y3, "Usado para sair ou cancelar opções"); // Desenha o texto na posição (x, y) com o texto "Seu texto aqui"

var x4 = gui_largura/2;
var y4 = gui_altura/1.4;
draw_text(x4, y4, "Pausa o Jogo!"); 

