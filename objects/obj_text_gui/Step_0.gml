/// @description scroll

// SCROLL INPUT/TOGGLE:
//-----------------------------------------------------------------------------
//鼠标位置mouse_y
//实际移动距离delta_y
//实时相对移动时的偏移位置text_yoffset

//起步mouse_y若为1,text_yoffset为0,则delta_y为1
//mouse_y到达4位置松手,text_yoffset为3

if (mouse_pressed) {
	scroll = true;
	delta_y = mouse_y - text_yoffset;
}

// 松开鼠标左键后停止拖动状态
if (mouse_check_button_released(mb_left))
	scroll = false;

// 如果正在按住拖动
if (scroll)
	//修改移动位置,
	text_yoffset = mouse_y - delta_y;

// 鼠标滑轮滚动方式:
if (mouse_over) {
	if (mouse_wheel_up())
		text_yoffset += 32;
	else if (mouse_wheel_down())
		text_yoffset -= 32;
}


// TEXT & SCROLL INDICATOR ARROWS:
//-----------------------------------------------------------------------------

//var _selected		= global.selected_module;
//info_text			= (_selected == noone) ? instruction_text : _selected.info_text;

text_height			= string_height_ext(info_text, -1, text_srf_w);
//可滑动范围限制
text_yoffset		= clamp(text_yoffset, -text_height + text_srf_h, 0);
scroll_arrow_blink	= 0.95 + 0.5 * sin(current_time / 200);

