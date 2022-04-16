NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "cleanHUD_1V.pak", 
["MOD_AUTHOR"]				= "hilightnotes",
["LUA_AUTHOR"]				= "Vasiliy",
["NMS_VERSION"]				= "3.75",
["MOD_DESCRIPTION"]			= "This mod is a part of CLEAN_HUD mod. LargeIconSize are same as in cleanHUD_1 modules. Removes compass icons, makes all icons small, doesn't change icon height over objects (as other modules do). Lo2k's script excluded (that's why no change of icon height).",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCBUILDINGGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
					
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LargeIconSize",	"30"}, -- HUD Icons overall size.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CompassIconSize",	"0"}, -- Compass icon size. Removes icons if set to "0". Used with CompassCentre in GCBUILDINGGLOBALS.GLOBAL.MBIN to remove compass.
							}		
						}
					}
				}
			}
		}
	}	
}