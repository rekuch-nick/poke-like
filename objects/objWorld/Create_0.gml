room_speed = 30;
W = 61; H = 43;
xStair = 10; yStair = 10;
draw_set_font(fntPlain);
layerFloor = -200;
layerBlock = -2000;
layerPup = -4000;
layerMob = -6000;
layerBattle = -7000;
depth = layerFloor;


instance_create_depth(0, 0, -9000, objScreenTitle);


for(var a=0; a<W; a++){ for(var b=0; b<H; b++){
	fmap[a, b] = imgStoneFloor;
	bmap[a, b] = noone;
	pmap[a, b] = noone;
	mmap[a, b] = noone;
}}

createRoom = true;
