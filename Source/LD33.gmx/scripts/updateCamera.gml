xChange = view_xview[0] - xPrev;
yChange = view_yview[0] - yPrev;

xPrev = view_xview[0];
yPrev = view_yview[0];


// POSITIONING //

if (instance_exists(objPlayer))
{
    xOff = MAX_DISTANCE * (objPlayer.hspd / objPlayer.MAX_H);
    yOff = MAX_DISTANCE * (objPlayer.vspd / objPlayer.MAX_V);
    
    if (!objPlayer.dead)
    {
        x += smoothMove(x, focus.x, CAMERA_SPEED);
        y += smoothMove(y, focus.y, CAMERA_SPEED);
    }
}


// SCALING //

if (focus == objPlayer)
{
    if (scale < 1)
    {
        scale += SCALE_GROW;
    }
    else
    {
        scale = 1;
    }
}

// Set the view scale
view_wview[0] = BASE_WIDTH * scale;
view_hview[0] = BASE_HEIGHT * scale;