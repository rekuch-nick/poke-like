if(ww.state != State.battle){ return; }

if(aly >= 0){
	if(pc.form != aly){ return; }
}

var xs = aly >= 0 ? -image_xscale : image_xscale;
draw_sprite_ext(sprite_index, image_index, x, y, xs, image_yscale, image_angle, c_white, image_alpha);














if(hp < 1){ return; }

var x1 = aly >= 0 ? x - abs(sprite_width) : x;
var x2 = x1 + ( abs(sprite_width) * (hp / hpMax));
if(x2 < x1){ x2 = x1; }
var y1 = y + sprite_height + 10;
var y2 = y1 + 10;
draw_rectangle_color(x1, y1, x2, y2, c_red, c_red, c_red, c_red, false);



var x2 = x1 + ( abs(sprite_width) * (mp / mpMax));
if(x2 < x1){ x2 = x1; }
var y1 = y + sprite_height + 26;
var y2 = y1 + 10;
draw_rectangle_color(x1, y1, x2, y2, c_blue, c_blue, c_blue, c_blue, false);




var y1 = y + sprite_height + 42;
var y2 = y1 + 10;
var x2 = x1 + ( abs(sprite_width) * (ap / apMax));
if(x2 < x1){ x2 = x1; }
draw_rectangle_color(x1, y1, x2, y2, c_orange, c_orange, c_orange, c_orange, false);

