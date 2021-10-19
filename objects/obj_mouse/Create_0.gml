/// @description Insert description here
// You can write your code in this editor
xx			= x - sprite_width  * 0.5;
yy			= y - sprite_height  * 0.5;

str_yes = "yes";
str_no = "no";
str_mouse_press	=str_no;
str_mouse_over	= str_no;
str_mouse_released = str_no;
str_mouse_down = str_no;

mouse_press_offset	= scr_text_offset(str_mouse_press,4);
mouse_over_offset	= scr_text_offset(str_mouse_over,4);
mouse_released_offset	= scr_text_offset(str_mouse_released,4);
mouse_down_offset	= scr_text_offset(str_mouse_down,4);

mouse_text = "";