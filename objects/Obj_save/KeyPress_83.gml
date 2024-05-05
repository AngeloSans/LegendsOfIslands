if(file_exists("Save.sav"))file_delete("save.sav");
ini_open("save.sav");
ini_close();
show_message("jogo salvo com sucesso!")