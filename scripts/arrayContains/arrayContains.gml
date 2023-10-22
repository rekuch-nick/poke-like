function arrayContains(arr, str){
	for(var i=0; i<array_length(arr); i++){
		if(arr[i] == str){ return true; }
	}
	return false;
}