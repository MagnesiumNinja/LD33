/*
    SCRIPT: saveGame(saveNum);
    
    PARAMETERS:
        saveNum - the save file to save to.
        
    RETURNS:
        boolean - whether or not the file could be saved
        
    AUTHOR: Chris Klassen
    
    DATE: June 24, 2015
    
    NOTES:
        This script saves the game to a specific file.
*/

var saveNum, fileName, file;
saveNum = argument[0];
saveName = "ld33_save_" + string(saveNum) + ".sav";

// Delete the previous file
file_delete(saveName);

// Open the file
file = file_text_open_write(saveName);

if (file == -1)
{
    // File does not exist
    return false;
}

// SAVING TO THE FILE //

// Write the save file version
file_text_write_real(file, global.SAVEFILE_VERSION);
file_text_writeln(file);

// Write the saved to value
file_text_write_real(file, global.SAVED_TO);
file_text_writeln(file);

if (instance_exists(objPlayer))
{
    // Write whether or not this is a full save
    file_text_write_real(file, 1);
    file_text_writeln(file);
    
    // Write the player's room
    file_text_write_real(file, room);
    file_text_writeln(file);
    
    // Write the player's room
    file_text_write_real(file, global.DEATHS);
    file_text_writeln(file);
        
    // Write the player's area
    file_text_write_real(file, global.SAVED_AREA);
    file_text_writeln(file);
    
    // Write the player's x
    file_text_write_real(file, objPlayer.x);
    file_text_writeln(file);
    
    // Write the player's y
    file_text_write_real(file, objPlayer.y);
    file_text_writeln(file);
}
else
{
    // Write whether or not this is a full save
    file_text_write_real(file, 0);
    file_text_writeln(file);
    
    // Write the player's room
    file_text_write_real(file, room);
    file_text_writeln(file);
    
    // Write the player's room
    file_text_write_real(file, 0);
    file_text_writeln(file);
    
    // Write the player's area
    file_text_write_real(file, -1);
    file_text_writeln(file);
    
    // Write the player's x
    file_text_write_real(file, 0);
    file_text_writeln(file);
    
    // Write the player's y
    file_text_write_real(file, 0);
    file_text_writeln(file);
}

// Close the file
file_text_close(file);

return true;