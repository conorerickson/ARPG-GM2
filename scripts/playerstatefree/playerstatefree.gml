function PlayerStateFree(){

//Movement logic
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

PlayerCollison();

//Update sprite index
var _oldSprite = sprite_index;
if(inputMagnitude != 0) 
{
	direction = inputDirection;
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if(_oldSprite != sprite_index) localFrame = 0;

//Update image index
PlayerAnimateSprite();

//Interaction Logic
if(keyActivate){
	var _activateX1 = lengthdir_x(24, direction+45);
	var _activateY1 = lengthdir_y(24, direction+45);
	var _activateX2 = lengthdir_x(12, direction-90);
	var _activateY2 = lengthdir_y(12, direction-90);
	activate = collision_rectangle(x+_activateX1, y+_activateY1, x+_activateX2,y+_activateY2, pEntity, false, true); 
	
	if(activate == noone || activate.entityActivateScript == -1)
	{
		state = PlayerStateRoll;
		moveDistanceRemaining = distanceRoll;
	} else
	{
		ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
		
		if(activate.entityNPC)
		{
			with(activate)
			{
				direction = point_direction(x, y, other.x, other.y);
				image_index = CARDINAL_DIR;
			}
		}
	}
}

}