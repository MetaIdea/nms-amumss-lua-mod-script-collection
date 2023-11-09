NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "NeutralLUTs.pak",
  ["MOD_DESCRIPTION"]		= "Removes all non-photomode screen filters",
  ["MOD_AUTHOR"]				= "Ignacio",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA/EFFECTS/SCREENFILTERS.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"SelectableInPhotoMode", "False"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", ""}
							}
						},
					}
				}
			}
		},
	}
}