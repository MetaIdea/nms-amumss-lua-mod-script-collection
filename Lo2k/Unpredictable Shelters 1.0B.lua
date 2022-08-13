NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Unpredictable Shelters.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.91",
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
							["SPECIAL_KEY_WORDS"] = {"Name","nShack"},
							["PRECEDING_KEY_WORDS"] = {"TkLSystemRestrictionData.xml"},
							--["REPLACE_TYPE"]    = "ONCE",  
							["SECTION_ACTIVE"] = {1,}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "0"},	-- original 1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nShack"},
							["PRECEDING_KEY_WORDS"] = {"TkLSystemRestrictionData.xml"},
							--["REPLACE_TYPE"]    = "ONCE",  
							["SECTION_ACTIVE"] = {2,}, 
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
							["SPECIAL_KEY_WORDS"] = {"Name","nShack"},
							["PRECEDING_KEY_WORDS"] = {"TkLSystemRestrictionData.xml"},
							--["REPLACE_TYPE"]    = "ONCE",  
							["SECTION_ACTIVE"] = {1,}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "0"},	-- original 1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nShack"},
							["PRECEDING_KEY_WORDS"] = {"TkLSystemRestrictionData.xml"},
							--["REPLACE_TYPE"]    = "ONCE",  
							["SECTION_ACTIVE"] = {2,}, 
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
							["SPECIAL_KEY_WORDS"] = {"Name","nShack"},
							["PRECEDING_KEY_WORDS"] = {"TkLSystemRestrictionData.xml"},
							--["REPLACE_TYPE"]    = "ONCE",  
							["SECTION_ACTIVE"] = {1,}, 
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount", "0"},	-- original 1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","nShack"},
							["PRECEDING_KEY_WORDS"] = {"TkLSystemRestrictionData.xml"},
							--["REPLACE_TYPE"]    = "ONCE",  
							["SECTION_ACTIVE"] = {2,}, 
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