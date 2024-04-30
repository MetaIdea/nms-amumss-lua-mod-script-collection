NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Test_SECTION_ACTIVE.pak",
["MOD_AUTHOR"]				= "Wbertro",
["LUA_AUTHOR"]				= "Wbertro",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						--ONLY first section will be used
            {
							["SPECIAL_KEY_WORDS"] = {"Name","VEHICLE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CenterStartTime",			"3.9"},
							}
						},
            --sections 2 and 4
						{
							["SPECIAL_KEY_WORDS"] = {"Name","VEHICLE",},
							["SECTION_ACTIVE"] = {2,4,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CenterStartTime",			"3.9"},
							}
						},
            --sections 2 and LAST
						{
							["SPECIAL_KEY_WORDS"] = {"Name","VEHICLE",},
							["SECTION_ACTIVE"] = {2,"LAST",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CenterStartTime",			"1.9"},
							}
						},
            --sections 2, 2 and LAST: duplicate
						{
							["SPECIAL_KEY_WORDS"] = {"Name","VEHICLE",},
							["SECTION_ACTIVE"] = {2,2,"LAST",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CenterStartTime",			"1.9"},
							}
						},
          },
				},
			}
		},
	}	--7 global replacements
}
