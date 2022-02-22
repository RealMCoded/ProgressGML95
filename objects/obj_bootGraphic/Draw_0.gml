/// @description

draw_sprite_stretched_ext(global.wallpaper[0], 0, 0, 0, 1280, 720, c_white, t)

draw_sprite_stretched_ext(global.sprite[0], 0, (room_width/2)-256, (room_height/2)-128, 512, 256, c_white, t*2)
t+=0.01

pos+=0.1

if pos > 15 pos = 0

draw_sprite_part_ext(anim, 0, 0, 40*round(pos), 640, 39, x, room_height-64, 2, 2.5, c_white, 1)