/// @description Init
//-----------------------------------------------------------------------------
//	This object draws a text box showing the info text of the selected module
//	or some instructional text when no module is selected.
//	The size of the textbox can be set in the room editor by dragging
//	the sides of the place holder sprite.
//-----------------------------------------------------------------------------


// Apply kill modifier - optional:
//if (instance_place(x, y, mod_KILL) != noone) {instance_destroy();exit;}

event_inherited();

frame_sprite		= spr_9slice_orange;
frame_slice_size	= round(sprite_get_width(frame_sprite) / 3);

com_text = "。"
instruction_text	= "噫噫噫aaa|呃呃呃bbb|噫噫噫aaa|噫噫噫aaa|噫噫噫aaa|噫噫噫aaa|噫噫噫aaa|噫噫噫aaa|噫噫噫aaa|噫噫噫aaa|噫噫噫aaa";

text_padding		= 8;
text_yoffset		= 0; // used for scrolling
text_height			= 0;

text_srf			= -1;
text_srf_w			= x2_click - x1_click - 1 * text_padding; // x/y_click are from the parent object, usualy the click region ...
text_srf_h			= y2_click - y1_click - 2 * text_padding; // ...but here it's just the dimension of the text box

//ds_list =ds_msg_chain;
////单个字的宽度(示例汉字“一”在-1的默认间距下，最高换行宽度为画布宽度-间隔)
//var _f_width = string_width_ext(com_text,-1,text_srf_w)
////行最多字数计算(画布宽度-两边间隔)/单个字宽度
//count =round((text_srf_w)/_f_width);
//info_text = scr_format_text(instruction_text,count);
//print(count);

scroll				= false;
delta_y				= 0;



