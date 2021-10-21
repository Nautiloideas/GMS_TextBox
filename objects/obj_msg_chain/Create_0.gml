/// @description Insert description here
// You can write your code in this editor

globalvar ds_msg_chain;

ds_msg_chain=ds_list_create();

var msg_t = "一派白虹起，千寻雪浪飞。海风吹不断，江月照还依。冷气分青嶂，余流润翠微。潺蔽名瀑布，真似挂帘帷";
var msg_e = "不对no";
var ds_msg_t = create_msg_text(msg_type.text,msg_t);
var ds_msg_e = create_msg_text(msg_type.error,msg_e);

ds_list_add(ds_msg_chain,ds_msg_t);
ds_list_add(ds_msg_chain,ds_msg_e);

