image_xscale = 4;
image_yscale = 4;




hp = 40;
hpMax = 40;

mp = 10;
mpMax = 10;

level = 1;

elements = [Ele.fire];

moves = [Move.strike];
move = 0;


actCDMax = 100;


fort = 10;
ref = 10;
wil = 10;

str = 10;
spd = 10;
mag = 10;







actCDMax = clamp(actCDMax - spd, 20, actCDMax);



actCD = actCDMax;
