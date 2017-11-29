key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

var move = key_up - key_down;

vsp = move * moveSpeed;

if (place_meeting(x, y-vsp, wallLeftO)){
	
	while (!place_meeting(x, y-sign(vsp),wallLeftO)){
		y = y - sign(vsp);
	}
	vsp = 0;
}
y = y - vsp;
