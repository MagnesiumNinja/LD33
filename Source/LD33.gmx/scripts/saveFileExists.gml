/*
    SCRIPT: saveFileExists(saveNum);
    
    PARAMETERS:
        saveNum - the save file to check
        
    RETURNS:
        boolean - whether or not the specified save file exists
        
    AUTHOR: Chris Klassen
    
    DATE: June 24, 2015
    
    NOTES:
        This script checks to see if a save file exists.
*/

var saveNum, saveName, file;
saveNum = argument[0];
saveName = "ld33_save_" + string(saveNum) + ".sav";

return (file_exists(saveName));
