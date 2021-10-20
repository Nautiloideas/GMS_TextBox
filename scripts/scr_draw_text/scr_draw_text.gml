///@description format text
///@function scr_draw_text(msg_chai,x_pos,y_pos,srf_w) 
/// @@param msg_chain
/// @@param {Real} x_pos
/// @@param {Real} y_pos
/// @@param {Real} srf_w
function scr_draw_text(){

	var arg = 0;
	var ds_list = argument[arg++];
	var x_pos  = argument[arg++];
	var y_pos  = argument[arg++];
	var srf_w  = argument[arg++];
	var offset =0;
	var _size = ds_list_size(ds_list);
	for(var i=0;i<_size;i++){
	var _item = ds_list[| i];
	var _isize = ds_list_size(_item);
	for(var j=0;j<_isize;j++){
		var _msg= _item[| j]
		var text = _msg.p_title +_msg.p_content;
			//设置绘制颜色
		draw_set_color( _msg.p_color);
		draw_text_ext(8,y_pos+offset*string_height("一"),text,-1,srf_w);
	
		offset+= 1;
	}
}
	
	
	//var _size = 0;
	//if(ds_exists(ds_list,ds_type_list)){
	//	_size =  ds_list_size(ds_list);
		
	//}
	
	////绘制文字
	//for(var i=0;i<_size;i++){
	//	var _item = ds_list[| i];
	//	var offset = i*string_height("一");
	//	var text = _item.p_title +_item.p_content;
	//		//设置绘制颜色
	//	draw_set_color( _item.p_color);
	//	draw_text_ext(8,y_pos+offset,text,-1,srf_w);
	//}
	
}