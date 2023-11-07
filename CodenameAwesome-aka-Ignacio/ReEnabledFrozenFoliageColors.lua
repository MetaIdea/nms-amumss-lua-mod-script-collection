NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "ReEnabledFrozenFoliageColors.pak",
  ["MOD_DESCRIPTION"] = "Removes the restriction causing foliage on Frozen worlds to only be green.",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENCOLOURPALETTES.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Grass"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumColours",	"All"}
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Plant"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumColours",	"All"}
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Leaf"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumColours",	"All"}
							}	
						},
					}
				},
			}
		},
	}
}
