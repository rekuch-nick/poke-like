image_xscale = 2; image_yscale = 2;
depth = -6001;
playerInput();

face = 1
xSpot = floor(x / 64);
ySpot = floor(y / 64);
x = xSpot * 64 + 32; y = ySpot * 64 + 32;

moveSpeed = 15;
queueEnterTile = false;
onExit = false;


hp = 45;
hpMax = 100;

coins = 0;
deep = 0;


for(var i=0; i<6; i++){ forms[i] = noone; }
forms[0] = creatureFactory(imgCinderBear, 0, 1);
form = 0;



stepsTillMob = 1;
stepsTillMobMax = 4;