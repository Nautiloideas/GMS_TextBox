/// @description Insert description here
// You can write your code in this editor

var _text = string(text_offset)+"\n"+string(delta_y_pos);
draw_set_color(global.text_color_ui_1);
draw_text(xx, yy, caption);
draw_text(xx + xoffset, yy, _text);
//draw_text(xx + xoffset, yy, );
draw_set_color(c_white);