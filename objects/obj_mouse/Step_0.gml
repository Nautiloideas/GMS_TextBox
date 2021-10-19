/// @description Insert description here
// You can write your code in this editor

with(base_btn){
	if(mouse_pressed){
		other.str_mouse_press =other.str_yes;
	}
	else{
		other.str_mouse_press =other.str_no; 
	}
	if(mouse_over){
		other.str_mouse_over =other.str_yes;
	}	
	else{
		other.str_mouse_over =other.str_no; 
	}
	if(mouse_released){
		other.str_mouse_released = other.str_yes;
	}	
	else{
		other.str_mouse_released =other.str_no; 
	}
	if(mouse_down){
		other.str_mouse_down =other.str_yes;
	}
	else{
		other.str_mouse_down =other.str_no; 
	}
}
mouse_text = "press: "+str_mouse_press+"\t \t \t over: "+ str_mouse_over+"\n released: "
+str_mouse_released+"\t \t \t down: "+str_mouse_down;
//string_format(round(ds_grid_get_mean(fps_ds, 0, 0, 0, fps_count_to)), 1, 0) +
//					" | " +
//					"fps real: "+ string_format(round(ds_grid_get_mean(fps_real_ds, 0, 0, 0, fps_count_to)), 1, 0);