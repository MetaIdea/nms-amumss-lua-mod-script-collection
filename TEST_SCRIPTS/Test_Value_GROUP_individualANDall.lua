GameVersion = "3_82"
ModName = "CheapPetSlots"
Author = "Jackty89"

CostTablePath = "METADATA\\REALITY\\TABLES\\COSTTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
	["MOD_DESCRIPTION"]			= ModName,
	["MOD_AUTHOR"]				= Author,
	["NMS_VERSION"]				= GameVersion,
	["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= CostTablePath,
					["EXML_CHANGE_TABLE"] 	=
					{
            { --1 actions
                ["SPECIAL_KEY_WORDS"] = {"Id","C_PET_SLOT",},
                ["PRECEDING_KEY_WORDS"] = {"Costs",},
                ["LINE_OFFSET"]     = "1",
                ["MATH_OPERATION"]      = "/",
                ["VALUE_CHANGE_TABLE"]     = 
                {
                    {"IGNORE", "20",},
                },
            },
            { --1 actions
                ["SPECIAL_KEY_WORDS"] = {"Id","C_PET_SLOT",},
                ["PRECEDING_KEY_WORDS"] = {"Costs",},
                ["LINE_OFFSET"]     = "2",
                ["MATH_OPERATION"]      = "/",
                ["VALUE_CHANGE_TABLE"]     = 
                {
                    {"IGNORE", "20",},
                },
            },
            { --1 actions
                ["SPECIAL_KEY_WORDS"] = {"Id","C_PET_SLOT",},
                ["PRECEDING_KEY_WORDS"] = {"Costs",},
                ["LINE_OFFSET"]     = "3",
                ["MATH_OPERATION"]      = "/",
                ["VALUE_CHANGE_TABLE"]     = 
                {
                    {"IGNORE", "20",},
                },
            },
            { --1 actions
                ["SPECIAL_KEY_WORDS"] = {"Id","C_PET_SLOT",},
                ["PRECEDING_KEY_WORDS"] = {"Costs",},
                ["LINE_OFFSET"]     = "4",
                ["MATH_OPERATION"]      = "/",
                ["VALUE_CHANGE_TABLE"]     = 
                {
                    {"IGNORE", "20",},
                },
            },
            { --1 actions
                ["SPECIAL_KEY_WORDS"] = {"Id","C_PET_SLOT",},
                ["PRECEDING_KEY_WORDS"] = {"Costs",},
                ["LINE_OFFSET"]     = "5",
                ["MATH_OPERATION"]      = "/",
                ["VALUE_CHANGE_TABLE"]     = 
                {
                    {"IGNORE", "20",},
                },
            },
            { --1 actions
                ["SPECIAL_KEY_WORDS"] = {"Id","C_PET_SLOT",},
                ["PRECEDING_KEY_WORDS"] = {"Costs",},
                ["LINE_OFFSET"]     = "6",
                ["MATH_OPERATION"]      = "/",
                ["VALUE_CHANGE_TABLE"]     = 
                {
                    {"IGNORE", "20",},
                },
            },
          },
				},
				{
					["MBIN_FILE_SOURCE"] 	= CostTablePath, --this re-opens the same file as the preceding one WITH all the modifications
					["EXML_CHANGE_TABLE"] 	=
					{
            { --6 actions
                ["SPECIAL_KEY_WORDS"] = {"Id","C_PET_SLOT",},
                ["PRECEDING_KEY_WORDS"] = {"Costs",},
                ["REPLACE_TYPE"]        = "ALL",  --force to replace ALL NUMBER in the section
                ["MATH_OPERATION"]      = "/",
                ["VALUE_CHANGE_TABLE"]     = 
                { --not subject to a problem if values in the section are added or removed
                    {"IGNORE", "20",}, --this will affect all the values in the section the same way
                },
            },
          },
				},
      },
    },
  }, --12 global replacements
}