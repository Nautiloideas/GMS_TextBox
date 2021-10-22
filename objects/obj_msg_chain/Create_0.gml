/// @description Insert description here
// You can write your code in this editor

globalvar ds_msg_chain;

ds_msg_chain=ds_list_create();

var msg_t = "一派白虹起，千寻雪浪飞。海风吹不断，江月照还依。\n冷气分青嶂，余流润翠微。\n潺蔽名瀑布，真似挂帘帷。\n众猴拍手称扬道：“好水，好水!\n原来此处远通山脚之下，直接大海之波。”";
var msg_e = "那一个有本事的，钻进去寻个源头出来不伤身体者，我等即拜他为王。” 连呼了三声，忽见丛杂中跳出一个石猴，应声高叫道：“我进去，我进去!”好猴!也是他。今日芳名显，时来大运通。有缘居此地，天遣入仙宫你看他瞑目蹲身，将身一纵，径跳入瀑布泉中，忽睁睛抬头观看，那里边却无水无波，明明朗朗的一架桥梁。他住了身，定了神，仔细再看，原来是座铁板桥，桥下之水，冲贯于石窍之间，倒挂流出去，遮闭了桥门。却又欠身上桥头，再走再看，却似有人家住处一般，真个好所在。";
var msg_w = "但见那——翠藓堆蓝，白云浮玉，光摇片片烟霞。虚窗静室，滑凳板生花。乳窟龙珠倚挂，萦回满地奇葩。锅灶傍崖存火迹，樽罍靠案见肴渣。石座石床真可爱，石盆石碗更堪夸。又见那一竿两竿修竹，三点五点梅花。几树青松常带雨，浑然象个人家。";

var ds_msg_t = create_msg_text(msg_type.text,msg_t);
var ds_msg_e = create_msg_text(msg_type.error,msg_e);
var ds_msg_w = create_msg_text(msg_type.warn,msg_w);

ds_list_add(ds_msg_chain,ds_msg_t);
ds_list_add(ds_msg_chain,ds_msg_e);
ds_list_add(ds_msg_chain,ds_msg_w);
