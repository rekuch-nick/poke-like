var spt = imgPlayer;
if(forms[form] != noone){ spt = forms[form].sprite_index; }

if(face == -1){
	draw_sprite_ext(spt, image_index, x-32, y-32, image_xscale, image_yscale, image_angle, c_white, image_alpha);
} else {
	draw_sprite_ext(spt, image_index, x+32, y-32, -image_xscale, image_yscale, image_angle, c_white, image_alpha);
}




if(ww.state == State.play && onExit){
	c1 = c_yellow; c2 = c_white;
	draw_set_halign(fa_center);
	draw_text_color(x, y - 64, "[Enter]", choose(c1, c2), choose(c1, c2), choose(c1, c2), choose(c1, c2), .9);
	draw_set_halign(fa_left);
}


//var xD = xSpot - ww.xStair; draw_text(x, y, xD);