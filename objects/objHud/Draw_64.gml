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



for(var i=0; i<6; i++){
	var b = 1;
	if(pc.forms[i] != noone){
		var a = 2 + (i * 2);
		draw_sprite_stretched(pc.forms[i].sprite_index, 0, a * 64, b * 64, 64, 64);
		draw_text((a+1) * 64 + 2, b*64 + 44, "L" + string(pc.forms[i].level));
		var w = ( pc.forms[i].hp / pc.forms[i].hpMax ) * 60;
		draw_rectangle_color((a+1) * 64 + 4, b*64 + 4, (a+1) * 64 + w, b*64 + 10, c_red, c_red, c_red, c_red, false);
		var w = ( pc.forms[i].mp / pc.forms[i].mpMax ) * 60;
		draw_rectangle_color((a+1) * 64 + 4, b*64 + 14, (a+1) * 64 + w, b*64 + 20, c_blue, c_blue, c_blue, c_blue, false);
	}
	
}