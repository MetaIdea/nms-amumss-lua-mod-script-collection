NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "NoHazardScreenRefraction.lua.pak",
  ["MOD_DESCRIPTION"] = "Removes screen distortion, making storms much more tolerable.",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCUIGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"HazardHeightmaps"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	""},
							}	
						},
					}
				},
			}
		},
	}
}
