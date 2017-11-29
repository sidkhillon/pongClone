//Vertical/Horizontal Movement
if (place_meeting(x+hsp, y, paddleLeftO)){
	
	while (!place_meeting(x+sign(hsp), y, paddleLeftO)){
		x = x + sign(hsp);
	}
	direction = 0
	direction = 360 - 3^abs(paddleLeftO.y - y)
	hsp = 0;
	moveSpeed++
}else if (place_meeting(x+hsp, y, paddleRightO)){
	
	while (!place_meeting(x+sign(hsp), y, paddleRightO)){
		x = x + sign(hsp);
	}
	hsp = 0;
	direction = 0
	direction = 180 - 3^abs(paddleRightO.y - y)
	moveSpeed++
}

if (place_meeting(x, y-vsp, paddleLeftO)){
	
	while (!place_meeting(x, y-sign(vsp), paddleLeftO)){
		y = y + sign(vsp);
	}
	vsp = 0;
	direction = 0
	direction = 360 - 3^abs(paddleLeftO.y - y)
	moveSpeed++
}else if (place_meeting(x, y-vsp, paddleRightO)){
	
	while (!place_meeting(x, y-sign(vsp), paddleRightO)){
		y = y + sign(vsp);
	}
	vsp = 0;
	direction = 0
	direction = 180 - 3^abs(paddleRightO.y - y)
	moveSpeed++
}

if (place_meeting(x, y-vsp, wallLeftO) || place_meeting(x, y-vsp, wallRightO) || place_meeting(x + hsp, y, wallLeftO) || place_meeting(x + hsp, y, wallRightO)){
	direction = 360 - direction
}
//if(!place_meeting(x+1, y, paddleLeftO) && !place_meeting(x+1, y, paddleRightO) && !place_meeting(x, y-1, paddleLeftO) && !place_meeting(x, y-1, paddleLeftO)){
//	hsp = lengthdir_x(moveSpeed, direction);
//	vsp = lengthdir_y(moveSpeed, direction);
//}
hsp = lengthdir_x(moveSpeed, direction);
vsp = lengthdir_y(moveSpeed, direction);
x = x + hsp
y = y - vsp
if (place_meeting(x, y, backWallO)) {
	if x > 200{
		saveO.leftScore++
	}else{
		saveO.rightScore++	
	}
	show_debug_message("[" + string(saveO.leftScore) + " - " + string(saveO.rightScore) + "]")
	room_restart();
	randomize()
}


