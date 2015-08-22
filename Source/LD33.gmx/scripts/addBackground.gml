/*
    SCRIPT: addBackground(background, left, top, right, bottom);
    
    PARAMETERS:
        background - the filename of the background to add
        left - the left offset into the image to draw at
        top - the top offset into the image to draw to
        right - the right offset into the image to draw to
        bottom - the bottom offset into the image to draw at
        
    RETURNS:
        boolean - whether or not the image could be loaded
        
    AUTHOR: Chris Klassen
    
    DATE: July 14, 2015
    
    NOTES:
        This script loads a background and adds it to the background object.
*/

var background, left, top, right, bottom, spr;
background = argument[0];
left = argument[1];
top = argument[2];
right = argument[3];
bottom = argument[4];

// Load the background
backgrounds[numBackgrounds, 0] = background;

if (backgrounds[numBackgrounds, 0] >= 0)
{
    backgrounds[numBackgrounds, 1] = left;
    backgrounds[numBackgrounds, 2] = top;
    backgrounds[numBackgrounds, 3] = right;
    backgrounds[numBackgrounds, 4] = bottom;
    
    numBackgrounds++;
    
    return true;
}
