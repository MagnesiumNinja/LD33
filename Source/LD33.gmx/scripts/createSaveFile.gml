/*
    SCRIPT: createSaveFile(saveNum);
    
    PARAMETERS:
        saveNum - the save file to create
        
    RETURNS:
        nothing
        
    AUTHOR: Chris Klassen
    
    DATE: June 24, 2015
    
    NOTES:
        This script creates a save file.
*/

var saveNum, fileName, file;
saveNum = argument[0];
saveName = "ld33_save_" + string(saveNum) + ".sav";

// Create the file
file = file_text_open_write(saveName);