function ask_for_install_location(){
	//Open a file dialog and ask for the location. It defaults to C:\Program Files (x86)\Steam\steamapps\common\Progressbar95\Resources\
	global.installLocation = get_open_filename_ext("Progressbar95 resource.car|resource.car", "resource.car", "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Progressbar95\\Resources\\", "Select Progressbar95's resource.car file.")
	
	//Remove the "resources.car" thing (we don't need it for anything)
	global.installLocation = string_replace(global.installLocation, "resource.car", "")
}