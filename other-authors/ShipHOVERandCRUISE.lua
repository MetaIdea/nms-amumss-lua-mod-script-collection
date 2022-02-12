NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ShipHOVERandCRUISE.pak",
["MOD_AUTHOR"]				= "HauntedKobra",
["NMS_VERSION"]				= "3.64",
["MODIFICATIONS"] 			= 
   {
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{						
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed",	       "0"},	--Original "20"
								{ "ReverseBrake",      "5"},    --Original "0.5"
                                { "Falloff",           "0"},    --Original "0.5"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed",	       "0"},   --Original "20"
								{ "ReverseBrake",      "5"},   --Original "0.5"
                                { "Falloff",           "0"},   --Original "0.5"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed",	       "0"},   --Original "20"
								{ "ReverseBrake",      "5"},   --Original "0.5"
                                { "Falloff",           "0"},   --Original "0.5"
							}
						},
					}
				},				
			}
		},
	}
}