function creatureLevelUp(m, l){
	
	m.level = l;
	
	if(m.sprite_index == imgCinderBear){
		m.elements = [Ele.fire];
		m.moves = [Move.strike];
		m.hp = 200; atk = 20; mag = 15; spd = 12;
	
		
	} else if (m.sprite_index == imgSeaSnake) {
		
	
	
	
	
	} else {
		
	}
	
	return m;
}