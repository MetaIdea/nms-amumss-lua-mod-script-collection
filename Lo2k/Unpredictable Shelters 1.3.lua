NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Unpredictable Shelters 1.3.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "5.52",
["MOD_DESCRIPTION"]			= "This makes shelters more diverse",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHACK\SHACK_SCIENTIFIC.LSYSTEM.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nShack", "Restriction", "AtLeast"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "0"},	-- original 1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nShack", "Restriction", "NoMoreThan"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "3"},	-- original 2
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nSilo"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "2"},	-- original 1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nTower"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "2"},	-- original 1
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHACK\SHACK_TRADER.LSYSTEM.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nShack", "Restriction", "AtLeast"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "0"},	-- original 1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nShack", "Restriction", "NoMoreThan"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "3"},	-- original 2
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nAttachmentA"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "2"},	-- original 1
							},
						},
					},
				},			
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHACK\SHACK_WARRIOR.LSYSTEM.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nShack", "Restriction", "AtLeast"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "0"},	-- original 1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nShack", "Restriction", "NoMoreThan"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "3"},	-- original 2
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nSilo"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "2"},	-- original 1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nAntenna"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "2"},	-- original 1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nTower"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "2"},	-- original 1
							},
						},
					},
				},	
			}
		}
	}	
}