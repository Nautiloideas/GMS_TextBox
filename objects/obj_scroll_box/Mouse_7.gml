/// @description Insert description here
// You can write your code in this editor

release_step = step;
r_pos = text_yoffset;
count_step = release_step - press_step;

if(count_step<20){
	anmi_switch = true;
	var posc = p_pos-r_pos;
	if(posc>0){
		sco_up = false;
	}else{
		sco_up = true;
	}
	anmi_height = abs(abs(posc) * sqrt(count_step)+posc);
	move_height = anmi_height;
}else{
	anmi_switch = false;
}
