/// @description
switch selected {
		case 0: initSystem("95") break;	
		case 1: initSystem("95plus") break;	
		case 2: initSystem(get_string("Enter system ID (Example: LH).", "NOT"))
		default: selected = 0 break;	
}