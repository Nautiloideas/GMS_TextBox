///@description print debug message
///@function scr_format_text(p1, p2, p3) 
/// @@param {string} msg
function print(){
	var arg	= 0;
	var msg	= argument[arg++];
	if(is_string(msg)){
		show_debug_message(msg);
	}else{
		show_debug_message(string(msg));
	}
}