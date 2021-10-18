/// @description sets a buttons dimensions
function button_sys_set_dimensions() {
	//	used by system only
	// 如果发生精灵更改,需要调用
	
	//精灵的左上角坐标
	x1_click = x - 0.5 * abs(sprite_width);
	y1_click = y - 0.5 * abs(sprite_height);
	//精灵的右下角坐标
	x2_click = x + 0.5 * abs(sprite_width);
	y2_click = y + 0.5 * abs(sprite_height);
}
