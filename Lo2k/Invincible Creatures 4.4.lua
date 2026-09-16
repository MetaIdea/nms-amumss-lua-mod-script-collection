NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Invincible Creatures 4.4", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "7.00",
["MOD_DESCRIPTION"]		= "Invincible Creatures",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "GCCOLLISIONTABLE.GLOBAL.MBIN", 
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"CollisionGroup", "Creature"},
              ["SECTION_ACTIVE"] = {7,8},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"CollisionGroup", "Vehicle"},
              ["SECTION_ACTIVE"] = {11},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"CollisionGroup", "Vehicle_Piloted"},
              ["SECTION_ACTIVE"] = {10},
							["REMOVE"] = "SECTION"
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = {"METADATA\REALITY\DEFAULTREALITY.MBIN"}, 
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "CREATURE"},
							["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Multiplier", "0.000000"},
              },
						},
					},
				}	
			}
		},
	}	
}