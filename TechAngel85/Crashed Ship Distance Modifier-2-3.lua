Author = "TechAngel85"
ModName = "Crashed Ship Distance Modifier-2-3"
ModDescription = "This script changes the distance range the player will be placed from the crashed ship at the start of a new game."
FileSource01 = "GCBUILDINGGLOBALS.GLOBAL.MBIN"

--##### Variables #####
StartCrashSiteMinDistance= 200		-- The minimum distance the player will be placed from the crashed ship. The game will not place the player closer than 200u. | default=500
StartCrashSiteMaxDistance= 300		-- The maximum distance the player will be placed from the crashed ship. 2400=approx 6 minute travel time | default=600
-- values above are in units (200u)


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{	
	["MBIN_CHANGE_TABLE"] = 
		{{
		["MBIN_FILE_SOURCE"] = FileSource01,
		["EXML_CHANGE_TABLE"] = 
			{{
			["PRECEDING_KEY_WORDS"] = "",
			["INTEGER_TO_FLOAT"] = "FORCE",
			["VALUE_CHANGE_TABLE"] = 
				{
					{"StartCrashSiteMinDistance", StartCrashSiteMinDistance}, 
					{"StartCrashSiteMaxDistance", StartCrashSiteMaxDistance}, 
				}
			}}
		}}
	}}
}