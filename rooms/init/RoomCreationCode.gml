randomize()

//Load save data
ini_open("save.ini")
global.level = ini_read_real("scores", "level", 1)
ini_close()

room_goto_next()