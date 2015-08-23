/*
    SCRIPT: makeTextbox(name, text, isPlayer);

    PARAMETERS: 
        name - the character's name
        text - the dialogue
        isPlayer - the textbox's character

    RETURNS: nothing

    AUTHOR: Chris Klassen

    DATE: August 22, 2015

    NOTES: 
        This script creates a textbox.
*/

var name, text, isPlayer;
name = argument[0];
text = argument[1];
isPlayer = argument[2];

var numType = 0;

with (objTextbox)
{        
    numType++;
}

var textbox = instance_create(x, y, objTextbox);
textbox.name = name;
textbox.text = text;
textbox.player = isPlayer;
textbox.num = numType;
