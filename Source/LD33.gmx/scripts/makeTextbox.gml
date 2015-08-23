/*
    SCRIPT: makeTextbox(name, text, isPlayer, colour);

    PARAMETERS: 
        name - the character's name
        text - the dialogue
        isPlayer - the textbox's character
        colour - the text colour

    RETURNS: nothing

    AUTHOR: Chris Klassen

    DATE: August 22, 2015

    NOTES: 
        This script creates a textbox.
*/

var name, text, isPlayer, colour;
name = argument[0];
text = argument[1];
isPlayer = argument[2];
colour = argument[3];

var numType = 0;

with (objTextbox)
{        
    numType++;
}

var textbox = instance_create(x, y, objTextbox);
textbox.name = name;
textbox.text = text;
textbox.player = isPlayer;
textbox.colour = colour;
textbox.num = numType;
