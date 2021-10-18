/// @description Insert description here
// You can write your code in this editor

// GLOBALS - STANDARD:	

globalvar Font;
Font =font_add("FZWQ.TTF",24,0, 0, 0, 65535)

draw_set_font(global.Font);
global.text_color_ui_1		= $5AB4FF;
global.text_color_main_1	= c_white;

// GLOBALS - MODULES:									// When clicking a module it gets selected. The information
//-----------------------------------------------------------------------------
global.selected_module		= noone;					// and some buttons on the gui refer to the selected module



// 平台处理:
//-----------------------------------------------------------------------------
//桌面平台时:
if (os_type == os_windows || os_type == os_linux || os_type == os_macosx) {
	//4x抗锯齿,开启垂直同步
	display_reset(4, true);
	global.mobile = false;
}
else 
{
	//其他的移动端平台
	//关闭节省性能
	//0x抗锯齿,关闭垂直同步
	display_reset(0, false);
	//启用设备的节能模式
	if (os_type == os_android) || (os_type == os_ios) {
		os_powersave_enable(true);
	}	
	global.mobile = true;
}
