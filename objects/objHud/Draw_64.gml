if(ww.state == State.title){ return; }
draw_self();



var x1 = 2; 
var wMax = 252;
var y1 = 2;
var y2 = 28;
var w = (pc.hp / pc.hpMax) * wMax;
draw_rectangle_color(x1, y1, x1 + w, y2, c_maroon, c_maroon, c_red, c_red, false);
draw_text(10, 7, pc.hp);

draw_set_halign(fa_center);
draw_text(sprite_width / 2, 7, "$" + string(pc.coins));


draw_set_halign(fa_right);
draw_text(sprite_width - 10, 7, "Deep: " + string(pc.deep));
draw_set_halign(fa_left);