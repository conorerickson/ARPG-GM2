/// @description Update Camera


//Update Destination
if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;	
}

//Update Object Pos
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//Keep Camera Centered inside Room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);


//Apply Screenshake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1 / shakeLength) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);