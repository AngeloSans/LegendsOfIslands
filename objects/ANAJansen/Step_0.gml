if (indice < string_length(texto)) {
    indice += vel_txt;
    if (indice >= string_length(texto)) {
        indice = string_length(texto);
        texto_completo = true; // Marca que o texto foi completamente exibido
    }
}

if (texto_completo) {
	room_goto(SalaBestiarioAna);
}

vel_txt = .3;