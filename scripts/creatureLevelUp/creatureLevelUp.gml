function creatureLevelUp(c){
	
	c.level ++;
	
	if(c.sprite_index == imgCinderBear ||
		c.sprite_index == imgPhaseFrog ){
		
		c.str ++;
		c.hpMax += 10; c.hp += 10;
		
	} else if (c.sprite_index == imgSeaSnake) {
		c.hpMax += 10; c.hp += 10;
	
	
	
	
	} else {
		c.hpMax += 10; c.hp += 10;
	}
	
	
}