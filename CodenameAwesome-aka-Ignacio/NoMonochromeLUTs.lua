NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "NoMonochromeLUTs.pak",
  ["MOD_DESCRIPTION"] = "Removes all monochromatic screen filters from planets.",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA/EFFECTS/SCREENFILTERS.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Weird1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", ""}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Weird3"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", ""}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Weird6"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Filename", ""}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Weird7"},
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
