///@description print debug message
///@function split(str) 
/// @@param {string} str
/// @@param {string} split_str
function split(){
	
	var arg	= 0;
	var str	= argument[arg++];
	var split_str= argument[arg++];
	
	//var splitBy = ","; //string to split the first string by
	var slot = 0;
	var splitList; //array to hold all splits
	var str2 = ""; //var to hold the current split we're working on building
	
	var i;
	for (i = 1; i < (string_length(str)+1); i++) {
	    var currStr = string_copy(str, i, 1);
	    if (currStr == split_str) {
	        splitList[slot] = str2; //add this split to the array of all splits
	        slot++;
	        str2 = "";
	    } else {
	        str2 = str2 + currStr;
	        splitList[slot] = str2;
	    }
	}
	
	return splitList;
	//var arr = undefined;
	//var at = 0;
	//var my_str = argument0;
	//var sub_str = "";
	//var Quote = false;
	//for(var i = 1; i < string_length(my_str)+1; i++)
	//{
	//   var next_char = string_char_at(my_str,i);
 
	//   if(next_char == "'")
	//   {
	//        Quote = !Quote;
	//   }
	//   else if (next_char != " " || Quote)
	//   {
	//       sub_str = sub_str + next_char;
	//   }
	//   else
	//   {
	//       //ADD TO ARRAY
	//       if(sub_str!="") arr[at++] = sub_str;
	//       sub_str = "";
	//   }
	//}
	//if(sub_str!="") arr[at++] = sub_str;
	//return arr;
}