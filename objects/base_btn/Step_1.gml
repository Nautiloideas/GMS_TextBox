/// @description get input

if (!visible) exit;

mouse_released	= false;
mouse_pressed	= false;


var in_bounds =	(device_mouse_x_to_gui(0) > x1_click) &&	
				(device_mouse_x_to_gui(0) < x2_click) &&
				(device_mouse_y_to_gui(0) > y1_click) && 
				(device_mouse_y_to_gui(0) < y2_click);

//认定鼠标
if (global.mobile) {
	#region INPUT TOUCHSCREEN
	// 如果鼠标位置位于边界框中
	//		如果鼠标没有被拖入，除非它已经在拖拽这个按钮
	//			鼠标在元素上方
	// 否则为鼠标未在元素上方
	if (in_bounds) {
		if (!mouse_over && device_mouse_check_button_pressed(0, mb_left) || mouse_down) {
				mouse_over = true;
			}
	} else {
		mouse_over = false;
	}

	// 若鼠标在元素上方并且刚刚按下LMB，则认定鼠标已按下
	if (mouse_over && device_mouse_check_button_pressed(0, mb_left)) {
		mouse_down		= true;
		mouse_pressed	= true;
	}

	// 若鼠标在元素上方并且松开了LMB，则认定鼠标未按下
	if (mouse_down & device_mouse_check_button_released(0, mb_left)) {
		mouse_down = false;
		mouse_over = false;
		if (in_bounds) {
			event_perform(ev_other, ev_user0);
			mouse_released = true;
		}
	}
	#endregion
} else {
	#region INPUT MOUSE
	// if mouse is in bounding box
	//		and if mouse was not dragged in unless it was dragging this button already
	//			then mouse is over
	// else mouse is not over
	if (in_bounds) {
		if (!mouse_over && !device_mouse_check_button(0, mb_left) || mouse_down) {
				mouse_over = true;
		}
	} else {
		mouse_over = false;
	}

	// 若鼠标在元素上方并且刚刚按下LMB，则认定鼠标已按下
	if (mouse_over && device_mouse_check_button_pressed(0, mb_left)) {
		mouse_down		= true;
		mouse_pressed	= true;
	}

	// 若鼠标在元素上方并且松开了LMB，则认定鼠标未按下
	if (mouse_down & device_mouse_check_button_released(0, mb_left)) {
		mouse_down = false;
		if (in_bounds) {
			event_perform(ev_other, ev_user0);
			mouse_released = true;
		}
	}
	#endregion
}

// switch image index based on state:
if (mouse_down)			image_index	= 2;
else if (mouse_over)	image_index = 1;
else					image_index = 0;


