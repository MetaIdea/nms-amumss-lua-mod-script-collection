
NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "30sec void egg.pak",
  ["MOD_DESCRIPTION"]		= "Reduces void egg timer to 30sec",
  ["MOD_AUTHOR"]				= "Kaizlin",
  ["NMS_VERSION"]				= "1.0",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA/SIMULATION/MISSIONS/SPACEPOIMISSIONTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Message", "UI_BIO_SHIP_MISSION1_MSG3", },
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	"30"}, --79200
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Message", "UI_BIO_SHIP_MISSION2_MSG3", },
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	"30"}, --79200
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Message", "UI_BIO_SHIP_MISSION3_MSG3", },
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	"30"}, --79200
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Message", "UI_BIO_SHIP_MISSION4_MSG3", },
							["CHANGE_TYPE"] = "ONCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time",	"30"}, --79200
							}	
						},
					}
				},
			}
		},
	}
}
