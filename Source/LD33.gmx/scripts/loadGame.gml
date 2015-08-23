/*
    SCRIPT: loadGame(saveNum);
    
    PARAMETERS:
        saveNum - the save file to load from.
        
    RETURNS:
        boolean - whether or not the file could be loaded
        
    AUTHOR: Chris Klassen
    
    DATE: June 24, 2015
    
    NOTES:
        This script loads from a specific file.
*/

var saveNum, fileName, file;
saveNum = argument[0];
saveName = "ld33_save_" + string(saveNum) + ".sav";

// Open the file
file = file_text_open_read(saveName);

if (file == -1)
{
    // File does not exist
    return false;
}

// LOADING FROM THE FILE //
var version, rm;
rm = -1;
version = file_text_read_real(file);
file_text_readln(file);

// Compare the version number
if (version != global.SAVEFILE_VERSION)
{
    return false;
}

// Read the player's room
global.SAVED_TO = file_text_read_real(file);
file_text_readln(file);

// Check if this is a full save
if (file_text_read_real(file) == 1)
{    
    file_text_readln(file);
    
    // Read the player's room
    global.SAVED_ROOM = file_text_read_real(file);
    file_text_readln(file);
        
    // Read the player's area
    global.SAVED_AREA = file_text_read_real(file);
    file_text_readln(file);
    
    // Read the player's x
    global.SAVED_X = file_text_read_real(file);
    file_text_readln(file);
    
    // Read the player's y
    global.SAVED_Y = file_text_read_real(file);
    file_text_readln(file);
}

// Close the file
file_text_close(file);


return true;
