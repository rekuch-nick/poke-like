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
		foe = ww.mmap[pc.xSpot, pc.ySpot]
		c2 = creatureFactory(foe.foes[foeIndex], -1, 1);
		c1 = pc.forms[pc.form];
		
		c1.ap = irandom_range(0, c1.apMax/2);
		c2.ap = irandom_range(0, c2.apMax/2);
	}
	
	
	return; 
}
	
	
	



combatStep(c2, c1);
combatStep(c1, c2);



if(c2.hp < 1){
	foeIndex ++;
	if(foeIndex < array_length(foe.foes) ){
		instance_destroy(c2)
		c2 = creatureFactory(foe.foes[foeIndex], -1, 1);
		c2.ap = 0;
		
	} else {
		over = true;
		
	}
	
	
	
}




	
if(pc.pressedEnter){
	over = true;
}

















