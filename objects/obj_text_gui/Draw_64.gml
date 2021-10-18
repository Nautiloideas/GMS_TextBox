/// @description text box

// 绘制对象边框
//-----------------------------------------------------------------------------
scr_draw_9slice_box(frame_sprite, x1_click, y1_click, x2_click, y2_click, frame_slice_size);


// DRAW TEXT:
//-----------------------------------------------------------------------------

// 准备绘制面:
//如果不存在绘制面
if (!surface_exists(text_srf))
//不存在绘制面则新建一个,text_srf为该表面的索引
//创建宽度text_srf_w，创建高度text_srf_h
	text_srf = surface_create(text_srf_w, text_srf_h);
//将绘制点放到指定的绘制面
surface_set_target(text_srf);
//清除可能存在的黑色像素点,全部设为透明
draw_clear_alpha(c_black, 0);

//设置着色器
shader_set(shd_premlpha);
//设置混合像素的因子，源模式为RGBA(1,1,1,1),目标模式为(As,As,As,As)
gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha);

//在指定表面绘制文字,从位置x为0开始,绘制起始从文本偏移开始,绘制换行宽度为文本框宽度
draw_text_ext(0, text_yoffset, info_text,30, text_srf_w);
//释放绘制面
surface_reset_target();
//将生成的绘制面画在实际画面上
draw_surface(text_srf, x1_click + text_padding, y1_click + text_padding);

//释放着色器
shader_reset();
//重置混合模式
gpu_set_blendmode(bm_normal);

// 绘制侧边滚动指示箭头
//-----------------------------------------------------------------------------
//if (text_yoffset < -text_padding)
//	draw_sprite_ext(spr_arrow_down_7x13px, 0, x2_click - 2 * text_padding, y1_click + 2 * text_padding, 1, 1, 180, c_white, scroll_arrow_blink);
//if ((text_height + text_yoffset) > (text_srf_h + text_padding))
//	draw_sprite_ext(spr_arrow_down_7x13px, 0, x2_click - 2 * text_padding, y2_click - 2 * text_padding, 1, 1, 000, c_white, scroll_arrow_blink);
