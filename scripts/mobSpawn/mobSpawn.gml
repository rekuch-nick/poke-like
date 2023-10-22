function mobSpawn(){
	var tries = 0;
	
	while(tries < 20000){
		tries ++;
		
		var a = irandom_range(ww.W1, ww.W2 - 1);
		var b = irandom_range(ww.H1, ww.H2 - 1);
		
		if(inBounds(a, b)){
			if(ww.mmap[a, b] == noone && ww.bmap[a, b] == noone){
				if(ww.fmap[a, b] != imgStairs){
					var d = disManhat(a, b, pc.xSpot, pc.ySpot);
					if(d >= 2){
						var m = instance_create_depth(a * 64, b * 64, ww.layerMob, objMob);
						m.xSpot = a;
						m.ySpot = b;
						
						ww.mmap[a, b] = m;
						return m;
					}
				}
			}
		}
		
		
	}
}