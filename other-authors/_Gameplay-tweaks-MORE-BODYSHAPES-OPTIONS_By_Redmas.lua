POSITIONS = [[
	<Property value="1" /><!-- Redmas Fantasy Origins -->
	<Property value="0.05" /><!-- Redmas Fantasy Origins -->
	<Property value="0.1" /><!-- Redmas Fantasy Origins -->
	<Property value="0.15" /><!-- Redmas Fantasy Origins -->
	<Property value="0.2" /><!-- Redmas Fantasy Origins -->
	<Property value="0.25" /><!-- Redmas Fantasy Origins -->
	<Property value="0.3" /><!-- Redmas Fantasy Origins -->
	<Property value="0.35" /><!-- Redmas Fantasy Origins -->
	<Property value="0.4" /><!-- Redmas Fantasy Origins -->
	<Property value="0.45" /><!-- Redmas Fantasy Origins -->
	<Property value="0.5" /><!-- Redmas Fantasy Origins -->
	<Property value="0.55" /><!-- Redmas Fantasy Origins -->
	<Property value="0.6" /><!-- Redmas Fantasy Origins -->
	<Property value="0.65" /><!-- Redmas Fantasy Origins -->
	<Property value="0.7" /><!-- Redmas Fantasy Origins -->
	<Property value="0.75" /><!-- Redmas Fantasy Origins -->
	<Property value="0.8" /><!-- Redmas Fantasy Origins -->
	<Property value="0.85" /><!-- Redmas Fantasy Origins -->
	<Property value="0.9" /><!-- Redmas Fantasy Origins -->
	<Property value="0.95" /><!-- Redmas Fantasy Origins --> 
]]
-------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] = "_Gameplay-tweaks-MORE-BODYSHAPES-OPTIONS_By_Redmas.pak",
["MOD_DESCRIPTION"] = "Adds more shape options in the char customisation",
["MOD_AUTHOR"]      = "Redmas",
["LUA_AUTHOR"]      = "Redmas",
["NMS_VERSION"]     = "3.99+",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA/UI/CHARACTERCUSTOMISATIONUIDATA.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["PRECEDING_KEY_WORDS"] = {"Positions"},
							["REPLACE_TYPE"] = "ALL",
							["ADD"] 	= POSITIONS
						}
					
					}	
				}
			}
		}
	}	
}