///@description draw msg
///@function scr_draw_msg(msg_chain,start_x,start_y,srf_w) 
/// @@param msg_chain
/// @@param {Real} start_x
/// @@param {Real} start_y
/// @@param {Real} srf_w
function scr_draw_msg(){
    var arg = 0;
    var msg_chain = argument[arg++];
    var start_x  = argument[arg++];
	var start_y  = argument[arg++];
    var srf_w  = argument[arg++];

    var _size = ds_list_size(msg_chain);
	
	var index = 0;
    for(var i=0;i<_size;i++){
        var _t= msg_chain[| i];
        var msg = _t.p_title +_t.p_content;
		
		var len = string_length(msg);
		var w = 0;
		var t_msg="";
		for(var i=0;i<len;i++){
			var char = string_char_at(msg,i);
			w += string_width_ext(char,-1,srf_w);
			
			if(w>(srf_w)){
				t_msg +="\n";
				w=string_width_ext(char,-1,srf_w);
			}
			if(i>0){
				t_msg +=char;
			}
			//index +=1;
		}
		var height= scr_msg_height(t_msg,srf_w);
		draw_set_color(_t.p_color);
		draw_text_ext(start_x,start_y,t_msg,-1,srf_w);
    }
	
	return height;

}