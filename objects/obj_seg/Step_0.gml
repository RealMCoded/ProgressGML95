/// @description

if !global.pause {
	
if type=6 {
	y+=10+(global.level/20)
} else {
	y+=5+(global.level/20)
}

x+=random_range(-(global.level/10), (global.level/10))

if y > 720 instance_destroy()
}