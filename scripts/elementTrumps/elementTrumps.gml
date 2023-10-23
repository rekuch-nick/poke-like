function elementTrumps(e1, e2){
	
	if(e1 == Ele.fire && e2 == Ele.plant){ return true; }
	if(e1 == Ele.plant && e2 == Ele.water){ return true; }
	if(e1 == Ele.water && e2 == Ele.fire){ return true; }
	if(e1 == Ele.light && e2 == Ele.dark){ return true; }
	if(e1 == Ele.dark && e2 == Ele.arcane){ return true; }
	if(e1 == Ele.arcane && e2 == Ele.light){ return true; }
	
	return false;
}