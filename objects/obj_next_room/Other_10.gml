/// @description Insert description here
// You can write your code in this editor
//仅仅在触发本事件内的条件变动后执行
if(room_exists(room_next(room))){
	room_goto_next();
}

//var target_room = room + 1;

//if (target_room > room_last) target_room = room_last;
//print(string(room));
//print(string(target_room));
//if(target_room!=room & room_exists(target_room)){
//	//room_goto(target_room);
	
//}