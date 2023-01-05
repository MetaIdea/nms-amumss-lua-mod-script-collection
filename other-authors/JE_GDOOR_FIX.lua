Author = "Jaggid Edje"
ModName = "GDOOR_FIX"
ModNameSub = "__JE"
BaseDescription = "Fixes Garage Doors so the sub-component options work"
GameVersion = "4.08"
ModVersion = "v4.08"
FileSource1 = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"



NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = ModNameSub.."_"..ModName..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = FileSource1,
                    ["EXML_CHANGE_TABLE"] = {					
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "S_GDOORB0"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NetworkSubGroup",	1},
								{"NetworkMask",	4},
								{"Rate",	-1}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "S_GDOORM0"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NetworkSubGroup",	1},
								{"NetworkMask",	4},
								{"Rate",	-1}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "S_GDOORT0"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NetworkSubGroup",	1},
								{"NetworkMask",	4},
								{"Rate",	-1}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "F_GDOORB0"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NetworkSubGroup",	1},
								{"NetworkMask",	4},
								{"Rate",	-1}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "F_GDOORM0"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NetworkSubGroup",	1},
								{"NetworkMask",	4},
								{"Rate",	-1}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "F_GDOORT0"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NetworkSubGroup",	1},
								{"NetworkMask",	4},
								{"Rate",	-1}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "T_GDOORB0"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NetworkSubGroup",	1},
								{"NetworkMask",	4},
								{"Rate",	-1}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "T_GDOORM0"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NetworkSubGroup",	1},
								{"NetworkMask",	4},
								{"Rate",	-1}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "T_GDOORT0"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"NetworkSubGroup",	1},
								{"NetworkMask",	4},
								{"Rate",	-1}
							}
						}  
                    }
                }
			}
        }
    }
}