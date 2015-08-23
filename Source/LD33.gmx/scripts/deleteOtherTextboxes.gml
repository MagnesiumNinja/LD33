/*
    SCRIPT: deleteOtherTextboxes(textbox);

    PARAMETERS: 
        textbox - the calling textbox

    RETURNS: nothing

    AUTHOR: Chris Klassen

    DATE: August 23, 2015

    NOTES: 
        This script deletes other textboxes.
*/

var textbox;
textbox = argument[0];

with (objTextbox)
{
    if (id != textbox)
    {
        instance_destroy();
    }
}
