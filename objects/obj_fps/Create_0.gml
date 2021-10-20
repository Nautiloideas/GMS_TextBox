/// @description Insert description here
// You can write your code in this editor

//选择边
bar_sprite		= spr_3slice_hor_orange;
bar_slice_size	= sprite_get_width(bar_sprite) / 3;
bar_height		= 4;
var txt_h		= string_height("fpl");
var space		= 2; // space between bar & text
var height_half	= 0.5 * (txt_h + space + bar_height);
bar_y_offset	= height_half - bar_height;
txt_y_offset	= height_half - txt_h + txt_h;
x1				= x - sprite_width  * 0.5;
x2				= x + sprite_width  * 0.5;

// DATA:
//-----------------------------------------------------------------------------
fps_count_to	= room_speed * 2;
fps_counter		= 0;
fps_text		= "fps: -";
fps_ds			= ds_grid_create(1, fps_count_to);
fps_real_ds		= ds_grid_create(1, fps_count_to);

text_queue = ds_queue_create();
