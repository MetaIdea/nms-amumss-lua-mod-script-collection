NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "VV_ShipHover.pak",
["MOD_AUTHOR"]				= "VirtualVoyager",
["NMS_VERSION"]				= "3.0",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
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
								{ "MinSpeed",	"0.01" },		--Original "20"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed",	"0.01" }, 		--Original "20"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed",	"0.01" }, 		--Original "20"
							}
						},
					}
				},				
			}
		},
	}	 --3 global replacements
}