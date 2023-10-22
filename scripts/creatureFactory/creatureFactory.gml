//	aly = index of player form OR -1 for monster
function creatureFactory(typ, aly, lev){
	
	var a = aly < 0 ? 64 * 10 : 64 * 6;
	var b = aly < 0 ? 64 * 4 : 64 * 4;
	
	
	var m = instance_create_depth(a, b, ww.layerBattle, objCreature);
	m.sprite_index = typ;
	m.level = lev;
	m.aly = aly;
	
	return m;
}