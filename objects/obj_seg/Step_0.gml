/// @description

if !global.pause {
	
if type=6 {
	y+=10+(global.level/20)
} else {
	y+=5+(global.level/20)
}

if y > 720 instance_destroy()
}