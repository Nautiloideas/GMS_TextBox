///@description msg height
///@function scr_msg_height(msg,srf_w) 
/// @@param msg
/// @@param {Real} srf_w
function scr_msg_height(){
	var arg = 0;
	var msg = argument[arg++];
	var srf_w  = argument[arg++];
	var msg_height=0;
	var text = "";
	var com_text = "一";

	var _f_width = string_width_ext(com_text,-1,srf_w)
	//行最多字数计算(画布宽度-两边间隔)/单个字宽度
	count =round((srf_w)/_f_width);
	text = scr_format_text(msg,count);
	
	msg_height = string_height_ext(msg,-1,srf_w);
	
	return msg_height;
}