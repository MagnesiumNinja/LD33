//Returns true if the object is standing on solid ground 
//(including jump-thru platforms), false otherwise.

//An object is on solid ground if:
// 1. there is an obj_floor directly below it
//  OR
// 2.   a. there is an obj_jumpthru directly below it
//          AND
//      b. there is not an obj_jumpthru inside it
//          AND
//      c. it is not moving upwards

return place_meeting( x, y+1, objBlock )
    || (place_meeting( x, y+1, objJumpThru ) && !place_meeting( x, y, objJumpThru ) && vspd >= 0 && jumpThru);