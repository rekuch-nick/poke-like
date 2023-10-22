


var a1 = clamp(pc.xSpot - 8, 0, W-1);
var a2 = clamp(pc.xSpot + 8, 0, W-1);
var b1 = clamp(pc.ySpot - 4, 0, H-1);
var b2 = clamp(pc.ySpot + 4, 0, H-1);



for(var a=a1; a<=a2; a++){ for(var b=b1; b<=b2; b++){
	if(fmap[a, b] != noone){
		draw_sprite_stretched(fmap[a, b], 0, a * 64, b * 64, 64, 64);
	}
}}


for(var a=a1; a<=a2; a++){ for(var b=b1; b<=b2; b++){
	if(bmap[a, b] != noone){
		draw_sprite_stretched(bmap[a, b], 0, a * 64, b * 64, 64, 64);
	}	
}}
