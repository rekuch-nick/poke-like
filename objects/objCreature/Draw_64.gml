if(ww.state != State.battle){ return; }

if(aly >= 0){
	if(pc.form != aly){ return; }
}

var xs = aly >= 0 ? -image_xscale : image_xscale;
draw_sprite_ext(sprite_index, image_index, x, y, xs, image_yscale, image_angle, c_white, image_alpha);


var x3 = x;
var w = aly >= 0 ? -sprite_width : sprite_width;
var x4 = x + w;
var x1 = min(x3, x4);
var x2 = max(x3, x4);
var y1 = y + sprite_height + 10;
var y2 = y1 + 10;
draw_rectangle_color(x1, y1, x2, y2, c_red, c_red, c_red, c_red, false)

