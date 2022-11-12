NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SpaceEncounter.pak",
["MOD_AUTHOR"]				= "AcThPaU",
["NMS_VERSION"]				= "4.00",
["MOD_DESCRIPTION"]         = "No useless encounters, more than 10x encounter chances, re-balance encounter chance for certain events",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{				
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseEncounterCheckTimer",		    "1"}, 	-- Original "1"
								{"PulseEncounterChance",	 		 "0.02"}, 	-- Original "0.00066"
								{"PulseEncounterChanceStandard",	 "0.02"}, 	-- Original "0.00066"
								{"PulseEncounterChanceRed",	 		"0.025"}, 	-- Original "0.001"
								{"PulseEncounterChanceGreen",		 "0.03"}, 	-- Original "0.002"
								{"PulseEncounterChanceBlue",		 "0.04"}, 	-- Original "0.003"								
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{				
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id" ,"GEK_HEAD",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnChance",	 "0"},		
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id" ,"SPACE_CLOCK",},
							["VALUE_CHANGE_TABLE"] 	=
							{	
								{"SpawnChance",	 "0"},
							}
						},
						{	--Emergency Civilisation Shelter Pod
						    ["SPECIAL_KEY_WORDS"] = {"Id" ,"CUBE_STATION",}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnChance",	 "0"},	
							}
						},
						{	--Secret Listening Post
						    ["SPECIAL_KEY_WORDS"] = {"Id" ,"ASTEROID_BEACON",}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnChance",	 "0"},	
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id" ,"ABAND_FREIGHTER",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnChance",	 "1"},
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id" ,"TRADER_HAIL",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnChance",	 "1"},
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id" ,"ATLAS_BEACON1",},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"SpawnChance",	 "0"},
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id" ,"ATLAS_BEACON2",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnChance",	 "0"},	
							}
						},
						{  --larve
						    ["SPECIAL_KEY_WORDS"] = {"Id" ,"HORROR",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnChance",	 "0"},
							}
						},
						{  --Stellar Intelligence
						    ["SPECIAL_KEY_WORDS"] = {"Id" ,"NEURON",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnChance",	 "0"},	
							}
						},
						-- {
						    -- ["SPECIAL_KEY_WORDS"] = {"Id" ,"BLACK_HOLE",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"SpawnChance",	 "0"},	
							-- }
						-- },
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id" ,"JELLYFISH",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnChance",	 "0"},	
							}
						},
						{
						    ["SPECIAL_KEY_WORDS"] = {"Id" ,"RELAY_BEACON",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnChance",	 "0"},	
							}
						},
					}
				},				
			}
		},
	}	
}