function playerInput(){
	
	xIn = 0;
	if(keyboard_check(vk_left) || keyboard_check(ord("A"))){ xIn --; }
	if(keyboard_check(vk_right) || keyboard_check(ord("D"))){ xIn ++; }
	
	yIn = 0;
	if(keyboard_check(vk_up) || keyboard_check(ord("W"))){ yIn --; }
	if(keyboard_check(vk_down) || keyboard_check(ord("S"))){ yIn ++; }
	
	/*if(keyboard_check(vk_shift) ){
		if(xIn == 0 || yIn == 0){ xIn = 0; yIn = 0; }
	} else {
		if(xIn != 0 && yIn != 0){ xIn = 0; yIn = 0; }
	}*/
	
	pressingSpace = keyboard_check(vk_space);
	pressedSpace = keyboard_check_pressed(vk_space);
	
	pressingEnter = keyboard_check(vk_enter);
	pressedEnter = keyboard_check_pressed(vk_enter);
	
	pressingEsc = keyboard_check(vk_escape);
	pressedEsc = keyboard_check_pressed(vk_escape);
	
	pressedUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	pressedDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
	
	pressedLeft = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("D"));
	pressedRight = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("A"));
	
	pressedChar = ""; pressedNum = false;
	//if( keyboard_check_pressed(ord("A")) ){ pressedChar = "A"; }
	if( keyboard_check_pressed(ord("B")) ){ pressedChar = "B"; }
	if( keyboard_check_pressed(ord("C")) ){ pressedChar = "C"; }
	//if( keyboard_check_pressed(ord("D")) ){ pressedChar = "D"; }
	if( keyboard_check_pressed(ord("E")) ){ pressedChar = "E"; }
	if( keyboard_check_pressed(ord("F")) ){ pressedChar = "F"; }
	if( keyboard_check_pressed(ord("G")) ){ pressedChar = "G"; }
	if( keyboard_check_pressed(ord("H")) ){ pressedChar = "H"; }
	if( keyboard_check_pressed(ord("I")) ){ pressedChar = "I"; }
	if( keyboard_check_pressed(ord("J")) ){ pressedChar = "J"; }
	if( keyboard_check_pressed(ord("K")) ){ pressedChar = "K"; }
	if( keyboard_check_pressed(ord("L")) ){ pressedChar = "L"; }
	if( keyboard_check_pressed(ord("M")) ){ pressedChar = "M"; }
	if( keyboard_check_pressed(ord("N")) ){ pressedChar = "N"; }
	if( keyboard_check_pressed(ord("O")) ){ pressedChar = "O"; }
	if( keyboard_check_pressed(ord("P")) ){ pressedChar = "P"; }
	if( keyboard_check_pressed(ord("Q")) ){ pressedChar = "Q"; }
	if( keyboard_check_pressed(ord("R")) ){ pressedChar = "R"; }
	//if( keyboard_check_pressed(ord("S")) ){ pressedChar = "S"; }
	if( keyboard_check_pressed(ord("T")) ){ pressedChar = "T"; }
	if( keyboard_check_pressed(ord("U")) ){ pressedChar = "U"; }
	if( keyboard_check_pressed(ord("V")) ){ pressedChar = "V"; }
	//if( keyboard_check_pressed(ord("W")) ){ pressedChar = "W"; }
	if( keyboard_check_pressed(ord("X")) ){ pressedChar = "X"; }
	if( keyboard_check_pressed(ord("Y")) ){ pressedChar = "Y"; }
	if( keyboard_check_pressed(ord("Z")) ){ pressedChar = "Z"; }
	if( keyboard_check_pressed(ord("0")) ){ pressedChar = "0"; pressedNum = true; }
	if( keyboard_check_pressed(ord("1")) ){ pressedChar = "1"; pressedNum = true; }
	if( keyboard_check_pressed(ord("2")) ){ pressedChar = "2"; pressedNum = true; }
	if( keyboard_check_pressed(ord("3")) ){ pressedChar = "3"; pressedNum = true; }
	if( keyboard_check_pressed(ord("4")) ){ pressedChar = "4"; pressedNum = true; }
	if( keyboard_check_pressed(ord("5")) ){ pressedChar = "5"; pressedNum = true; }
	if( keyboard_check_pressed(ord("6")) ){ pressedChar = "6"; pressedNum = true; }
	if( keyboard_check_pressed(ord("7")) ){ pressedChar = "7"; pressedNum = true; }
	if( keyboard_check_pressed(ord("8")) ){ pressedChar = "8"; pressedNum = true; }
	if( keyboard_check_pressed(ord("9")) ){ pressedChar = "9"; pressedNum = true; }
	
	
	
}