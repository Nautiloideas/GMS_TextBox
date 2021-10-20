/// @description Init
//-----------------------------------------------------------------------------
//	This object draws a text box showing the info text of the selected module
//	or some instructional text when no module is selected.
//	The size of the textbox can be set in the room editor by dragging
//	the sides of the place holder sprite.
//-----------------------------------------------------------------------------


// Apply kill modifier - optional:
//if (instance_place(x, y, mod_KILL) != noone) {instance_destroy();exit;}

event_inherited();

frame_sprite		= spr_9slice_orange;
frame_slice_size	= round(sprite_get_width(frame_sprite) / 3);

com_text = "。"
instruction_text	= @"一派白虹起，千寻雪浪飞。海风吹不断，江月照还依。 冷气分青嶂，余流润翠微。潺蔽名瀑布，真似挂帘帷。众猴拍手称扬道：“好水，好水!原来此处远通山脚之下，直接大海之波。”又道：“那一个有本事的，钻进去寻个源头出来不伤身体者，我等即拜他为王。” 连呼了三声，忽见丛杂中跳出一个石猴，应声高叫道：“我进去，我进去!”好猴!也是他—— 今日芳名显，时来大运通。有缘居此地，天遣入仙宫你看他瞑目蹲身，将身一纵，径跳入瀑布泉中，忽睁睛抬头观看，那里边却无水无波，明明朗朗的一架桥梁。他住了身，定了神，仔细再看，原来是座铁板桥，桥下之水，冲贯于石窍之间，倒挂流出去，遮闭了桥门。却又欠身上桥头，再走再看，却似有人家住处一般，真个好所在。但见那——翠藓堆蓝，白云浮玉，光摇片片烟霞。虚窗静室，滑凳板生花。乳窟龙珠倚挂，萦回满地奇葩。锅灶傍崖存火迹，樽罍靠案见肴渣。石座石床真可爱，石盆石碗更堪夸。又见那一竿两竿修竹，三点五点梅花。几树青松常带雨，浑然象个人家。";


text_padding		= 8;
text_yoffset		= 0; // used for scrolling
text_height			= 0;

text_srf			= -1;
text_srf_w			= x2_click - x1_click - 1 * text_padding; // x/y_click are from the parent object, usualy the click region ...
text_srf_h			= y2_click - y1_click - 2 * text_padding; // ...but here it's just the dimension of the text box

//单个字的宽度(示例汉字“一”在-1的默认间距下，最高换行宽度为画布宽度-间隔)
var _f_width = string_width_ext(com_text,-1,text_srf_w)
//行最多字数计算(画布宽度-两边间隔)/单个字宽度
count =round((text_srf_w)/_f_width);
info_text = scr_format_text(instruction_text,count);
print(count);

scroll				= false;
delta_y				= 0;
scroll_arrow_blink	= 0;



