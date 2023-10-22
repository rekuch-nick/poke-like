if(over){
	if(image_alpha > 0){
		with(objCreature){
			if(aly < 0){
				image_alpha -= .04;
			}
		}
		image_alpha -= .03;
		if(image_alpha <= 0){
			instance_destroy(ww.mmap[pc.xSpot, pc.ySpot]);
			with(objCreature){ if(aly < 0){
				instance_destroy();
			} }
			ww.mmap[pc.xSpot, pc.ySpot] = noone;
			ww.state = State.play;
			instance_destroy();
		}
	}
	
	return;
}




if(image_alpha < 1){ image_alpha += .03; 
	
	if(image_alpha >= 1){
		foe = creatureFactory(ww.mmap[pc.xSpot, pc.ySpot].sprite_index, -1, 1);
	}
	
	
	return; }
	
	
	
	
	
if(pc.pressedEnter){
	over = true;
}