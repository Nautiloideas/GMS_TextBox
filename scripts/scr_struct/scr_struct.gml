//function Msg (type,content,length) constructor {
//	content = "";
//	type = msg_type.text;
//	color = msg_color.white;
//	length = 0;
//}

function NormalMsg (content,length) constructor {
	p_title ="[Text] \t";
	p_content =content;
	p_type = msg_type.text;
	p_color = msg_color.normal_green;
	p_length = length;
}

function ErrorMsg (content,length) constructor {
	p_title ="[Error] \t";
	p_content =content;
	p_type = msg_type.error;
	p_color = msg_color.red;
	p_length = length;
}

function WarnMsg (content,length) constructor {
	p_title ="[Warn] \t";
	p_content =content;
	p_type = msg_type.warn;
	p_color = msg_color.yellow;
	p_length = length;
}