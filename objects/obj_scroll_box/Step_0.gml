/// @description scroll

// SCROLL INPUT/TOGGLE:
//-----------------------------------------------------------------------------
//鼠标位置mouse_y
//实际移动距离delta_y
//实时相对移动时的偏移位置text_yoffset

//起步mouse_y若为1,text_yoffset为0,则delta_y为1
//mouse_y到达4位置松手,text_yoffset为3

//房间的步数
step +=1;

if (mouse_pressed) {
	scroll = true;
	delta_y = mouse_y - text_yoffset;
}


// 松开鼠标左键后停止拖动状态
if (mouse_check_button_released(mb_left))
	scroll = false;

// 如果正在按住拖动
if (scroll)
{	//修改移动位置,
	text_yoffset = mouse_y - delta_y;
}


if(floor(anmi_height)!=0){
	print(anmi_height);
	//text_yoffset -= 1;
	var off = 8;
	//100*(1/abs((move_height+0.5)-anmi_height));
	print("move_height="+string(move_height));
	//off = clamp(off,0,abs(anmi_height));
	print("off="+string(off));
	if(sco_up){
		text_yoffset += off;
	}else{
		text_yoffset -= off;
	}
	anmi_height -= off;
}else{
	anmi_switch =false;
}

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

//text_height			= string_height_ext(info_text, -1, text_srf_w);
//可滑动范围限制
text_yoffset		= clamp(text_yoffset, -text_height + text_srf_h, 0);
scroll_arrow_blink	= 0.95 + 0.5 * sin(current_time / 200);

//循环判定鼠标是否在右下坐标附近
if(os_type == os_windows || os_type == os_linux || os_type == os_macosx){
	if(point_distance(x2_click,y2_click,mouse_x,mouse_y)<10){
		if((x2_click-mouse_x)<5 & (x2_click-mouse_y)<3){
			cursor_sprite = spr_mouse_nwse;
		}else{
			cursor_sprite = spr_mouse_cursor;
		}
	}else{
	cursor_sprite = spr_mouse_cursor;
	}
}else{
	cursor_sprite = -1;
}
