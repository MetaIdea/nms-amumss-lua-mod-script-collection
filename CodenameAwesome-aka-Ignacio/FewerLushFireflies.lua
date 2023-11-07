NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "FewerLushFireflies.pak",
  ["MOD_DESCRIPTION"] = "Reduces the density of glowing particles on Lush worlds by increasing their spawn radius rather than reducing the number of particles.",
  ["MOD_AUTHOR"] = "",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {
						"MODELS/EFFECTS/HEAVYAIR/EARTH/EARTH.HEAVYAIR.MBIN",
						"MODELS/EFFECTS/HEAVYAIR/EARTH/EARTH2.HEAVYAIR.MBIN",
					},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Radius",	10},
							}	
						},
					}
				},
			}
		},
	}
}
