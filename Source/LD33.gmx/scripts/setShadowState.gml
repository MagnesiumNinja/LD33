/*
    SCRIPT: setShadowState();

    PARAMETERS: 

    RETURNS: Nothing

    AUTHOR: Chris Klassen

    DATE: August 22, 2015

    NOTES:  
        This script sets the player's image and angle based on the shadow position.
*/

var surfaceSprite;
if (abs(hspd) > 0 || abs(vspd) > 0)
{
    surfaceSprite = sprPlayerShadowMove;
}
else
{
    surfaceSprite = sprPlayerShadow;
}

if (hShadowPos == ShadowPos.LEFT)
{
    if (vShadowPos == ShadowPos.TOP)
    {
        sprite_index = sprPlayerShadowInnerCorner;
        image_angle = 270;
    }
    else if (vShadowPos = ShadowPos.BOTTOM)
    {
        sprite_index = sprPlayerShadowInnerCorner;
        image_angle = 0;
    }
    else
    {
        sprite_index = surfaceSprite;
        image_angle = 0;
    }
}
else if (hShadowPos == ShadowPos.RIGHT)
{
    if (vShadowPos == ShadowPos.TOP)
    {
        sprite_index = sprPlayerShadowInnerCorner;
        image_angle = 180;
    }
    else if (vShadowPos = ShadowPos.BOTTOM)
    {
        sprite_index = sprPlayerShadowInnerCorner;
        image_angle = 90;
    }
    else
    {
        sprite_index = surfaceSprite;
        image_angle = 180;
    }
}
else
{
    if (vShadowPos == ShadowPos.TOP)
    {
        sprite_index = surfaceSprite;
        image_angle = 270;
    }
    else
    {
        sprite_index = surfaceSprite;
        image_angle = 90;
    }
}