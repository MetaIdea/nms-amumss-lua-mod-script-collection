NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "4x Freighter Range.pak", 
["MOD_AUTHOR"]				= "SerialGriller",
["LUA_AUTHOR"]				= "SerialGriller",
["NMS_VERSION"]				= "4.41",
["MOD_DESCRIPTION"]			= "Quadruples the Jump Range of Freighters",
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
								{"Bonus",	"400"}		   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HDRIVEBOOST1",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"800"}		   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HDRIVEBOOST2",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"1200"}		   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HDRIVEBOOST3",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"3200"}		  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS1",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"200"}		  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS2",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"200"}		  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS3",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"200"}		  
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
							    {"ValueMin", "200"},	 
								{"ValueMax", "400"} 	  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP2",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"ValueMin", "400"},	 
								{"ValueMax", "600"} 	  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP3",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"ValueMin", "600"},	 
								{"ValueMax", "8000"} 	    
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","UP_FRHYP4",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"ValueMin", "800"},	 
								{"ValueMax", "1000"} 	  
							}
						},
					}
				}	
			}
		}
	}	
}
