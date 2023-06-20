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
						--ONLY first sectionwill be used
            {
							["SPECIAL_KEY_WORDS"] = {"Name","VEHICLE",}, --2061,2126,2191
							--["SECTION_ACTIVE"] = {2,3,4,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CenterStartTime",			"600"},
							}
						},
            --sections 2 and 4
						{
							["SPECIAL_KEY_WORDS"] = {"Name","VEHICLE",},
							["SECTION_ACTIVE"] = {2,4,}, --2061,2191
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CenterStartTime",			"600"},
							}
						},
					}
				},
			}
		},
	}	--3 global replacements
}
