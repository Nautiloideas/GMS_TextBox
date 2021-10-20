///@description print debug message
///@function print(msg) 
/// @@param {string} msg
function print(){
	var arg	= 0;
	var msg	= argument[arg];
	if(is_string(msg)){
		show_debug_message(msg);
	}else{
		show_debug_message(string(msg));
	}
}