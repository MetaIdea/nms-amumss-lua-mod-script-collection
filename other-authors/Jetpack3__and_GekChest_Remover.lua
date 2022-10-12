-- Don't forget to manually change the version of the mod in MOD_FILENAME as well as any other changes you want to do to the script
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]             = "Jetpack3_GekChest_Remover_4.0.0-pre2.pak",
["MOD_AUTHOR"]               = "Haz",
["NMS_VERSION"]              = "9677936",
["MODIFICATIONS"]            =
 
            {
		    



			
			{
		    ["MBIN_CHANGE_TABLE"] =
            
		    {
				{
						["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN",
	                    ["EXML_CHANGE_TABLE"] = 
						{
		                
						{
						["SPECIAL_KEY_WORDS"]   = {"Name","_Chest_Gek"},
					    ["REMOVE"]              = "SECTION",
						},
						
						{
						["SPECIAL_KEY_WORDS"]   = {"Name","_Backpack_Jetpack"},						
						["REMOVE"]              = "SECTION",
						},
					}
			    },

			}
            },
}
}



--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE



