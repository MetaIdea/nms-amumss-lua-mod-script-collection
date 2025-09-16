NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "Must be combined.pak",
  ["MOD_BATCHNAME"] = "Spacefarer-Biomes.pak",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN",},
					["EXML_CHANGE_TABLE"] = {
						{
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"Probability",1}--To prevent warning
							}
						},
					}
				},
			}
		},
	}
}