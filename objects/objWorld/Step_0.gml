if(instance_number(objScreen) > 0){ return; }

if(createRoom){
	worldGen();
	createRoom = false;
}