///@description text offset blank
///@function scr_text_offset(str,len) 
/// @@param {string} str
/// @@param {real} len
function scr_text_offset(){
	
	var arg	= 0;
	var str	= argument[arg++];
	var len	= argument[arg++];
	
	var text_offset  = string_width(str) + len;
	return text_offset;
}