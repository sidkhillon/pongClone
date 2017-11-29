key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

var move = key_up - key_down;

vsp = move * moveSpeed;
if (place_meeting(x, y-vsp, wallRightO)){
	
	while (!place_meeting(x, y-sign(vsp),wallRightO)){
		y = y - sign(vsp);
	}
	vsp = 0;
}
y = y - vsp;