if(ww.state != State.battle){ return; }

if(aly >= 0){
	if(pc.form != aly){ return; }
}

var xs = aly >= 0 ? -image_xscale : image_xscale;
draw_sprite_ext(sprite_index, image_index, x, y, xs, image_yscale, image_angle, c_white, image_alpha);