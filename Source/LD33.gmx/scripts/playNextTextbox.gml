/*
    SCRIPT: playNextTextbox(isPlayer);

    PARAMETERS: 
        isPlayer - the current textbox's character

    RETURNS: nothing

    AUTHOR: Chris Klassen

    DATE: August 22, 2015

    NOTES: 
        This script sets the next textbox to play, if it exists.
*/

var isPlayer;
isPlayer = argument[0];

with (objTextbox)
{
    num--;
}
