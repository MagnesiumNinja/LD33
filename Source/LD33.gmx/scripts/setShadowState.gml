/*
    SCRIPT: setShadowState();

    PARAMETERS: 

    RETURNS: Nothing

    AUTHOR: Chris Klassen

    DATE: August 22, 2015

    NOTES:  
        This script sets the player's image and angle based on the shadow position.
*/
image_xscale = 1;

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
        image_yscale = 1;
    }
    else if (vShadowPos = ShadowPos.BOTTOM)
    {
        sprite_index = sprPlayerShadowInnerCorner;
        image_angle = 0;
        image_yscale = 1;
    }
    else
    {
        sprite_index = surfaceSprite;
        image_angle = 0;
        if (vspd < 0)
        {
            image_yscale = -1;
        }
        else if (vspd > 0)
        {
            image_yscale = 1;
        }
    }
}
else if (hShadowPos == ShadowPos.RIGHT)
{
    if (vShadowPos == ShadowPos.TOP)
    {
        sprite_index = sprPlayerShadowInnerCorner;
        image_angle = 180;
        image_yscale = 1;
    }
    else if (vShadowPos = ShadowPos.BOTTOM)
    {
        sprite_index = sprPlayerShadowInnerCorner;
        image_angle = 90;
        image_yscale = 1;
    }
    else
    {
        sprite_index = surfaceSprite;
        image_angle = 180;
        if (vspd < 0)
        {
            image_yscale = 1;
        }
        else if (vspd > 0)
        {
            image_yscale = -1;
        }
    }
}
else
{
    if (vShadowPos == ShadowPos.TOP)
    {
        sprite_index = surfaceSprite;
        image_angle = 270;
        if (hspd < 0)
        {
            image_yscale = 1;
        }
        else if (hspd > 0)
        {
            image_yscale = -1;
        }
    }
    else
    {
        sprite_index = surfaceSprite;
        image_angle = 90;
        if (hspd < 0)
        {
            image_yscale = -1;
        }
        else if (hspd > 0)
        {
            image_yscale = 1;
        }
    }
}