/*
    SCRIPT: addTextbox(name, text, isPlayer, colour);

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

var tname, ttext, tisPlayer, tcolour;
tname = argument[0];
ttext = argument[1];
tisPlayer = argument[2];
tcolour = argument[3];

name[numTextboxes] = tname;
text[numTextboxes] = ttext;
isPlayer[numTextboxes] = tisPlayer;
colour[numTextboxes] = tcolour;

numTextboxes++;
