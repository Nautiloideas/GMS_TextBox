///@description format text
///@function create_msg_text(type, msg) 
/// @@param {Real} msg_type
/// @@param {string} msg
function create_msg_text(){
	var ds = ds_list_create();
	//var t_map = ds_map_create();
	var param = 0;
	var type = argument[param++];
	var msg = argument[param++];
	
	//解析消息链
	var l = split(msg,"|");
	
	for(var i=0;i<array_length(l);i++){
		var _struct;
		var m = l[i];
		if(type==msg_type.text){
			_struct = new NormalMsg(m,string_length(m));
			ds_list_add(ds,_struct);
		}else if(type==msg_type.error){
			_struct = new ErrorMsg(m,string_length(m));
			ds_list_add(ds,_struct);
		}else if(type==msg_type.warn){
			_struct = new WarnMsg(m,string_length(m));
			ds_list_add(ds,_struct);
		}
	}
	

	//t_map[? msg_type] = type;
	//dsmap[? t_map] = t_map;
	return ds;
}