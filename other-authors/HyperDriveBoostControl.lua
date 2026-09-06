NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= "HyperDriveBoostControl",
	["MOD_DESCRIPTION"]	= "Boosts Hyperdrive at will using less-common upgrade modules",
	["MOD_AUTHOR"]		= "GreyMtnFox",
	["LUA_AUTHOR"]		= "GMF",
	["NMS_VERSION"]		= "6.45",
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
					["MXML_CHANGE_TABLE"] = {
						{	
							COMMENT = [[UP_HYPX NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HYPX",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_HYPX Ship_Hyperdrive_JumpDistance]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HYPX",
								"ValueMin","50.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","320.000000"},
							},
						},
						{	
							COMMENT = [[UP_HYPX Ship_Hyperdrive_JumpsPerCell]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_HYPX",
								"ValueMax","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMax","1.000000"},
							},
						},			
						{	
							COMMENT = [[UA_HYP4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_HYP4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UA_HYP4 Ship_Hyperdrive_JumpDistance]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_HYP4",
								"ValueMin","220.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","265.000000"},
							},
						},
						{	
							COMMENT = [[UA_HYP4 Ship_Hyperdrive_JumpsPerCell]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UA_HYP4",
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.000000"},
							},
						},
						{	
							COMMENT = [[UP_FRHYP4 NumStats]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRHYP4",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"NumStatsMin","2"},
							},
						},
						{	
							COMMENT = [[UP_FRHYP4 Freighter_Hyperdrive_JumpDistance]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRHYP4",
								"ValueMin","200.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","250.000000"},
							},
						},
						{	
							COMMENT = [[UP_FRHYP4 Freighter_Hyperdrive_JumpsPerCell]],
							["SPECIAL_KEY_WORDS"] = {
								"ID","UP_FRHYP4",
								"ValueMin","1.000000",
							},
							["VALUE_CHANGE_TABLE"] = {
								{"ValueMin","1.000000"},
							},
						},
	
					},
				},
			},
		}
	}
}