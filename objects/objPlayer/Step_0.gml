playerInput();






if(ww.state != State.play){ return; }



moving = false;
var xx = 0; var yy = 0;
if(x < xSpot * 64 + 32){ xx ++; }
if(x > xSpot * 64 + 32){ xx --; }
if(y < ySpot * 64 + 32){ yy ++; }
if(y > ySpot * 64 + 32){ yy --; }
if(xx != 0 || yy != 0){
	moving = true;
	queueEnterTile = true;
	x += moveSpeed * xx;
	y += moveSpeed * yy;
	
	if(x > xSpot * 64 + 32 && xx > 0){ x = xSpot * 64 + 32; }
	if(x < xSpot * 64 + 32 && xx < 0){ x = xSpot * 64 + 32; }
	if(y > ySpot * 64 + 32 && yy > 0){ y = ySpot * 64 + 32; }
	if(y < ySpot * 64 + 32 && yy < 0){ y = ySpot * 64 + 32; }
	
}





if(!moving){
	
	if(queueEnterTile){
		queueEnterTile = false;
		
		
		stepsTillMob --;
		if(stepsTillMob < 1){
			stepsTillMob = stepsTillMobMax;
			mobSpawn();
		}
		
		
		if(ww.mmap[xSpot, ySpot] != noone){
			instance_create_depth(0, 0, ww.layerBattle + 1, objScreenBattle);
			return;
		}
		
		
	}
	
	
	
	
	if(xIn != 0 xor yIn != 0){
		if(xIn != 0){ face = xIn; }
		xt = xSpot + xIn;
		yt = ySpot + yIn;
		
		if(inBounds(xt, yt)){
			if(ww.bmap[xt, yt] == noone){
				moving = true;
				xSpot = xt;
				ySpot = yt;
			}
		}
	}
	
	
	
	if(pressedEnter && onExit){
		ww.createRoom = true;
		
	}
	
	
	
	
	
}


if(pressedChar == "1" && forms[0] != noone){ form = 0; }
if(pressedChar == "2" && forms[1] != noone){ form = 1; }
if(pressedChar == "3" && forms[2] != noone){ form = 2; }
if(pressedChar == "4" && forms[3] != noone){ form = 3; }
if(pressedChar == "5" && forms[4] != noone){ form = 4; }
if(pressedChar == "6" && forms[5] != noone){ form = 5; }



onExit = !moving && ww.fmap[xSpot, ySpot] == imgStairs;



