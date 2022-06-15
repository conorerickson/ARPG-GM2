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

//Change State
if(keyInteract){
	state = PlayerStateRoll;
	moveDistanceRemaining = distanceRoll;
}

}