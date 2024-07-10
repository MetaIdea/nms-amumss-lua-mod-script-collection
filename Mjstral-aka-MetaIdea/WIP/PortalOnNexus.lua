NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PortalOnNexus.pak",
["MOD_AUTHOR"]				= "Mjstral aka MetaIdea",
["NMS_VERSION"]				= "2.93",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/SPACE/NEXUS/PARTS/CENTRALPOINT/CENTRALPOINT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"Name","RefTermMonitor11"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX",	"0"},
								{"TransY",	"0"},
								{"TransZ",	"18"},
								{"RotY",	"0"},
								{"Value",	"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL.SCENE.MBIN"},
							}
						},
					}
				},
			}
		},
	}	
}
