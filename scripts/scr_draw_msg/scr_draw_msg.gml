///@description draw msg
///@function scr_draw_msg(msg_chain,srf_w) 
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

    for(var i=0;i<_size;i++){
        var _t= msg_chain[| i];
        var msg = _t.p_title +_t.p_content;
        draw_set_color(_t.p_color);
        draw_text_ext(start_x,start_y,msg,-1,srf_w);
    }

}