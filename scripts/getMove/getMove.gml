function getMove(m){
	
	if(m == Move.strike){
		return {
			nam: "Strike",
			desc: "Physical attack for 2D6 + ATK",
			ele: Ele.normal,
			evdable: true,
			defable: true,
			resable: true,
			crit: 0,
			proc: Proc.crit,
			dice: 2,
			diceSize: 6,
			scaleAtk: 1,
			scaleMag: 0,
			normalAttack: true,
			hit: 0,
		}
	}
	
	
	
	
	
	return noone;
}