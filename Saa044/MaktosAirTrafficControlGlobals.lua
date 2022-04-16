
NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "GCSOLARGENERATIONGLOBALS.pak", 
	["MOD_AUTHOR"]		= "Makto",
	["NMS_VERSION"]		= "3.12",	-- NMS version when first scripted
	["MOD_DESCRIPTION"]	= "",
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","Traders"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Freighter","0"},
								{"Dropship","80"},
								{"Fighter","20"},
								{"Scientific","10"},
								{"Shuttle","20"},
								{"PlayerFreighter","0"},
								{"Royal","5"},
								{"Alien","1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","Warriors"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Freighter","0"},
								{"Dropship","20"},
								{"Fighter","80"},
								{"Scientific","10"},
								{"Shuttle","20"},
								{"PlayerFreighter","0"},
								{"Royal","5"},
								{"Alien","1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","Explorers"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Freighter","0"},
								{"Dropship","15"},
								{"Fighter","15"},
								{"Scientific","30"},
								{"Shuttle","70"},
								{"PlayerFreighter","0"},
								{"Royal","5"},
								{"Alien","1"}
							}
						}						
					}
				}
			}
		}
	}	
}