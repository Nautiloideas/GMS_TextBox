/// @description Insert description here
// You can write your code in this editor

release_step = step;

count_step = release_step - press_step;

if(count_step<10){
	anmi_switch = true;
	anmi_height = abs(text_yoffset * sqrt(count_step));
}else{
	anmi_switch = false;
}
