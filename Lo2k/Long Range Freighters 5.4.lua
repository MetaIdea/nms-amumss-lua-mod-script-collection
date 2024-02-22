NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Long Range Freighters 5.4.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.51",
["MOD_DESCRIPTION"]			= "This mod multiply by 10 all freighter warp drive ranges",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HYPERDRIVE",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"1000"}		-- Original "100"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HDRIVEBOOST1",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"2000"}		-- Original "200"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HDRIVEBOOST2",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"4000"}		-- Original "300"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HDRIVEBOOST3",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"8000"}		-- Original "800"  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS1",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"500"}		-- Original "50"  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS2",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"500"}		-- Original "50"  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS3",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"500"}		-- Original "50"  
							}
						}
					}
				},					
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP1",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"ValueMin", "500"},	-- Original "50" 
								{"ValueMax", "1000"} 	-- Original "100"  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP2",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"ValueMin", "1000"},	-- Original "100" 
								{"ValueMax", "1500"} 	-- Original "150"  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP3",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"ValueMin", "1500"},	-- Original "150" 
								{"ValueMax", "2000"} 	-- Original "200"    
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP4",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"ValueMin", "2000"},	-- Original "200" 
								{"ValueMax", "2500"} 	-- Original "250"  
							}
						},
					}
				}	
			}
		}
	}	
}
