///@description format text
///@function scr_format_text(str, count) 
/// @@param {string} str
/// @@param {real} count
function scr_format_text(){

	var arg	= 0;
	var str	= argument[arg++];
	var count	= argument[arg++];
	//var p3	= argument[arg++];
	
insert = 0
go = 0
prev = 0
text = str
var _len = string_length(text);
print(_len);
//根据字符串的长度循环修改
repeat(_len) {
	//如果到了指定的换行位置
	//if(_len-go<count){
	//   text = string_insert("\n",text,go);
	//   insert = 0;
	//}
    if(insert > count){
		//检查从换行处到前一个换行处之间的每一个字符串
		//比如每20个换行，第一次时,go=20,prev=0,
		//从第0到第20个位置检查，往后依次增加
        //while(1) {
			
        //    s = string_char_at(text,go-prev)
        //    if s != " " {
        //        prev += 1
        //    }
        //    else {
        //        break;
        //    }
        //    if prev > p3 {
        //        prev = 0
        //        break;
        //    }
        //}
		// text = string_insert("\n",text,go-prev);
        text = string_insert("\n",text,go);
        insert = 0;
    }
	//递增
    insert += 1;
    go += 1;
    if(string_char_at(text,go)="\n") {
       insert = 0;
    }
}
 
return text;
}