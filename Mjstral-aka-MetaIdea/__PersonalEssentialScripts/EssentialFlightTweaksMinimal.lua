NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "EssentialFlightTweaksMinimal.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "3.52",
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
							["VALUE_CHANGE_TABLE"] 	= 
								{				
									{"MiniWarpSpeed",				   "200000"},
									{"PulseDrivePlanetApproachHeight",	 "2000"},
									{"MiniWarpChargeTime",					"0"},
									{"ApplyHeightForce", 				"False"},
									{"ApplyHeightAlign", 				"False"},
								}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "MinSpeed",							-5},
								}
							},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "MinSpeed",							-5},
								}
							},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
								{
									{ "MinSpeed",							-5},
								}
						},
					}
				},
			}
		},
	}	
}
