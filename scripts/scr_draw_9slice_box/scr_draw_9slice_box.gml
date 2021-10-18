///@description draw a 9-slice image
function scr_draw_9slice_box() {
	//		- 同时绘制中心切片
	//		- 侧面和中心被拉伸
	///@param sprite
	//		- sprite 宽度和高度需要可以被3整除
	//		- sprite 必须是方形的
	///@param x1
	///@param y1
	///@param x2
	///@param y2
	///@param slice_size
	//		- slice_size 始终为精灵宽度和高度的三分之一。

	var arg		= 0;
	var sprite	= argument[arg++];
	var x1		= argument[arg++];
	var y1		= argument[arg++];
	var x2		= argument[arg++];
	var y2		= argument[arg++];
	var size	= argument[arg++];

	var xscale	= (x2 - x1 - 2 * size) / size;
	var yscale	= (y2 - y1 - 2 * size) / size;

	// TL
	draw_sprite_part(sprite, 0, 0, 0, size, size, x1, y1);
	// T
	draw_sprite_part_ext(sprite, 0, size, 0, size, size, x1 + size, y1, xscale, 1, c_white, 1);
	// TR
	draw_sprite_part(sprite, 0, 2 * size, 0, size, size, x2 - size, y1);
	// L
	draw_sprite_part_ext(sprite, 0, 0, size, size, size, x1, y1 + size, 1, yscale, c_white, 1);
	// R
	draw_sprite_part_ext(sprite, 0, 2 * size, size, size, size, x2 - size, y1 + size, 1, yscale, c_white, 1);
	// BL
	draw_sprite_part(sprite, 0, 0, 2 * size, size, size, x1, y2 - size);
	// B
	draw_sprite_part_ext(sprite, 0, size, 2 * size, size, size, x1 + size, y2 - size, xscale, 1, c_white, 1);
	// BR
	draw_sprite_part(sprite, 0, 2 * size, 2 * size, size, size, x2 - size, y2 - size);
	// Center:
	draw_sprite_part_ext(sprite, 0, size, size, size, size, x1 + size, y1 + size, xscale, yscale, c_white, 1);



}
