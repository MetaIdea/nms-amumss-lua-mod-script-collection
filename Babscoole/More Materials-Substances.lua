Multiplier = "10" -- Multiplier applied to number of buyable items available

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] = "MoreSubstances",
	["MOD_BATCHNAME"] = "MoreMaterials",
	["MOD_AUTHOR"] = "Flugelwulff",
	["LUA_AUTHOR"] = "Babscoole/Flugelwulff",
	["NMS_VERSION"] = "6.17",
	["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\DEFAULTREALITY.MBIN",
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] =
							{
								{"MinAmountOfSubstanceAvailable"},
								{"MaxAmountOfSubstanceAvailable"},
							},
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{ "Poor", 	 Multiplier},
								{ "Average", Multiplier},
								{ "Wealthy", Multiplier},
								{ "Pirate",  Multiplier},
							}
						}
					}
				}
			}
		}
	}
}