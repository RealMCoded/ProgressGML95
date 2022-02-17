/// @description
ini_open("save.ini")
ini_key_delete("general", "installLocation")
ini_close()
game_restart()