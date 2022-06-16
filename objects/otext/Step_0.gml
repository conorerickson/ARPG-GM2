lerpProgress += (1-lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

if(keyboard_key_press(vk_alt))
{
	var _messageLength = string_length(dMessage);
	if(textProgress >= _messageLength)
	{
		instance_destroy();
	}
	else
	{
		if(textProgress > 2)
		{
			textProgress = _messageLength;
		}
	}
}