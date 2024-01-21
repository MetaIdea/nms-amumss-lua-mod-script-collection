NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "SnowColorMatch.pak",
  ["MOD_BATCHNAME"]		= "Spacefarer-Biomes.pak",
  ["MOD_DESCRIPTION"]		= "Changes the Frozen biome ground color to match the snowy rock textures.",
  ["MOD_AUTHOR"]				= "Ignacio",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENCOLOURPALETTES.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Snow"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R", 0.710},
								{"G", 0.796},
								{"B", 0.871}
							}	
						},
					}
				},
			}
		},
	}
}