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
	var com_text = "一A";

	var _f_width = string_width_ext(com_text,-1,srf_w)/2;
	//单行最多容纳字数计算(画布宽度-两边间隔)/单个字宽度
	var count =round((srf_w)/_f_width);
	//添加换行
	text = scr_text_breakline(msg,count);
	//print("srf_w="+string(srf_w));
	//print("_f_width="+string(_f_width));
	print("count="+string(count));
	
	msg_height = string_height_ext(text,-1,srf_w);
	print("msg_height="+string(msg_height));
	data =
	{
		t : text,
		h : msg_height
	}

	return data;
}