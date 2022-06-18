function NewTextBox(){
///@arg Message
///@arg Background
///@arg [Responses]



var _obj;
if(instance_exists(oText)) _obj = oTextQueued; else _obj = oText;
	
with(instance_create_layer(0, 0, "Instances", _obj))
{
	message = argument[0];
	if(instance_exists(other)) originInstance = other.id; else originInstance = noone;
	if(argument_count > 1) background = argument[1]; else background = 1;
	if(argument_count > 2)
	{
		//Trim identifiers from responses
		_responses = argument[2];
		   responses = array_create(array_length(_responses),"");
			_arrayIndex = 0;
			while(_arrayIndex < array_length(_responses))
			{
			responses[_arrayIndex] = string_copy(_responses[_arrayIndex], 1, string_length(_responses[_arrayIndex]));
			_arrayIndex++;
			}
	}	else
	{
		responses = [-1];
		responseScripts = [-1];
	}
}
with(oPlayer)
{
	if(state != PlayerStateLocked)
	{
		lastState = state;
		state = PlayerStateLocked;
	}
}

}