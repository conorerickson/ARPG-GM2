///@arg Response

function DialogueResponses(){
	switch(argument0)
{
	case 0: break;
	case 1: NewTextBox("You gave response A.", 1); break;
	case 2: NewTextBox("You gave response B. Anything else?", 1, ["3:Yes.", "0:No."]); break;
	case 3: NewTextBox("Thanks for your responses!", 1); break;
	default: break;
}
}