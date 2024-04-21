draw_set_color(c_white); 
draw_set_font(FontTexto);

var dist = 55;
var gui_largura = display_get_gui_width();
var gui_altura = display_get_gui_height();
var x1 = gui_largura / 1.15;
var y1 = gui_altura / 11;
draw_text(x1, y1, "Proximo");

var x2 = gui_largura / 2;
var y2 = gui_altura / 3;
var texto_longo = "Sao Luis uma ilha paradisiaca\n esta sob o cerco implacavel de monstros ancestrais\n ressuscitados de um passado distante\n Essas criaturas ha muito esquecidas pelos registros da historia\n emergiram das profundezas para espalhar o caos e a destruicao sobre a terra\n No papel de um corajoso defensor e sua missao enfrentar essas forcas malignas e proteger Sao Luis\n de sua iminente ruina Arme-se com sua determinacao e habilidades\n pois voce embarcara em uma jornada repleta de desafios e perigos\n Neste mundo pixelado de beleza e perigo\n voce explorara cada canto da ilha desde as praias ensolaradas ate as densas florestas tropicais\n Enfrente hordas de monstros descubra segredos antigos e forje aliancas improvaveis para\n fortalecer sua resistencia contra a ameaca iminente\n O destino de Sao Luis esta em suas maos Prepare-se para a batalha pois a luta pela sobrevivencia esta prestes a comecar";
draw_text_ext(x2, y2, texto_longo, 20, -1);