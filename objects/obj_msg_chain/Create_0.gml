/// @description Insert description here
// You can write your code in this editor

globalvar ds_msg_chain;

ds_msg_chain=ds_list_create();

var msg_t = "噫噫噫aaa|呃呃呃bbb";
var msg_e = "不对no";
var ds_msg_t = create_msg_text(msg_type.text,msg_t);
var ds_msg_e = create_msg_text(msg_type.error,msg_e);

ds_list_add(ds_msg_chain,ds_msg_t);
ds_list_add(ds_msg_chain,ds_msg_e);

