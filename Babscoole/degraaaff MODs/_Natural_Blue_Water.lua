NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_Natural_Blue_Water.pak",
["MOD_AUTHOR"]    = "degraaaff",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.89",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\WATERCOLOURS.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Settings", "GcPlanetWaterColourData.xml", "WaterFogColourNear"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"R",	"0.237"},
								{"G",	"0.342"},
								{"B",	"0.465"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Settings", "GcPlanetWaterColourData.xml", "WaterFogColourFar"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"R",	"0.316"},
								{"G",	"0.456"},
								{"B",	"0.62"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Settings", "GcPlanetWaterColourData.xml", "WaterColourBase"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"R",	"0.079"},
								{"G",	"0.114"},
								{"B",	"0.155"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Settings", "GcPlanetWaterColourData.xml", "WaterColourAdd"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"R",	"0.359"},
								{"G",	"0.42"},
								{"B",	"1"},
							}
						},						
					}
				},
			}
		},
	}	
}