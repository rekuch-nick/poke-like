function combatStep(c1, c2){
	
	if(c1.hp < 1){ return; }
	
	c1.ap ++;
	if(c1.ap >= c1.apMax){
		c1.ap = 0;
		
		var bumpTowardsFoe = true;
		
		var m = getMove(c1.moves[c1.move]);
		if(m == noone){ return; }
		
		if(m.normalAttack){
			var hitRoll = irandom_range(1, 100) + m.hit;
			var dam = 0;
			repeat(m.dice){
				dam += irandom_range(1, m.diceSize);
			}
			dam += c1.atk * m.scaleAtk;
			dam += c1.mag * m.scaleMag;
			
			//STAB
			if(arrayContains(c1.elements, m.ele)){
				dam = floor(dam * 1.2);
			}
			
			if( 
				(hitRoll >= c2.evd || !m.evdable) &&
				(hitRoll >= c2.res || !m.resable)
			){
				
				//elemental mods
				var damMod = 0;
				for(var i=0; i<array_length(c2.elements); i++){
					if(elementTrumps(m.ele, c2.elements[i])){ damMod ++; }
					if(elementTrumps(c2.elements[i], m.ele)){ damMod --; }
				}
				dam = floor(dam + (dam * .2 * damMod));
				
				
				if(m.defable){
					dam = dam * (1 - (c2.def * .01) );
					dam = floor(dam);
					dam = clamp(dam, 1, dam);
				}
				
				if(m.resable){
					dam = dam * (1 - (c2.res * .01) );
					dam = floor(dam);
					dam = clamp(dam, 1, dam);
				}
				
				
				//need to display dam message
				c2.hp -= dam;
			}
		}
		
		
		
		if(bumpTowardsFoe){
			c1.x = c1.x < c2.x ? c1.x + 64 : c1.x - 64;
		}
		
		
	}
	
}