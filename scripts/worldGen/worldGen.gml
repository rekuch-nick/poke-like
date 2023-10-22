function worldGen(){
	
	pc.deep ++;
	var deep = pc.deep;
	
	for(var a=0; a<W; a++){ for(var b=0; b<H; b++){
		fmap[a, b] = imgStoneFloor;
		//fmap[a, b] = noone;
		bmap[a, b] = imgStoneWall;
		//bmap[a, b] = noone; ///
		pmap[a, b] = noone;
		mmap[a, b] = noone;
	}}
	
	//W = 61; H = 43;
	W1 = 6; W2 = W-6; H1 = 6; H2 = H - 6;
	
	var xMod = clamp(29 - deep, 6, W-6);
	var yMod = clamp(19 - deep, 6, H-6);
	W1 = xMod;
	W2 = W - xMod;
	H1 = yMod;
	H2 = H - yMod;
	
	
	for(var a=W1; a<W2; a++){ for(var b=H1; b<H2; b++){
		bmap[a, b] = choose(noone, noone, noone, noone, noone, imgStoneWall);
	}}
	
	with(objPup){ instance_destroy(); }
	with(objMob){ instance_destroy(); }
	
	
	
	pc.xSpot = floor(W / 2);
	pc.ySpot = floor(H / 2);
	pc.x = pc.xSpot * 64 + 32;
	pc.y = pc.ySpot * 64 + 32;
	
	
	bmap[pc.xSpot, pc.ySpot] = noone;
	
	
	
	
	var disMin = 10;
	do {
		var dis = disMin + 2;
		var a = irandom_range(W1, W2-1);
		var b = irandom_range(H1, H2-1);
		
		if(bmap[a, b] == noone){
			if(pmap[a, b] == noone){	
				if(mmap[a, b] == noone){	
					dis = disManhat(a, b, pc.xSpot, pc.ySpot);
				}
			}
		}
		
		if(irandom_range(1, 20) == 1){ disMin ++; }
		
		if(dis <= disMin){
			var path = pathing(a, b, pc.xSpot, pc.ySpot, false);
			if(path == noone){ dis = disMin + 1; }
		}
		
	} until (dis <= disMin)
	
	fmap[a, b] = imgStairs;
	xStair = a; yStair = b;
	
	
	
}