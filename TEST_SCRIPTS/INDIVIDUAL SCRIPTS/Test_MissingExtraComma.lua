ChanceMultiplier = 100, -- extra comma

----------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]	= "Test_MissingExtraComma.pak",
["MOD_AUTHOR"]		= "Lenni_Wbertro",
["NMS_VERSION"]		= "4.62",
["MOD_DESCRIPTION"]	= "Test",
["MODIFICATIONS"]	=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SKW"]	= {
								{"ID", "SHIP_CORE_C"},
								{"ID", "SHIP_CORE_B"},
								{"ID", "SHIP_CORE_A"},
								{"ID", "SHIP_CORE_S"},
							},
							["SECTION_UP"]	= 1,
							["REPLACE_TYPE"]	= "ALL",
							["MATH_OP"]	= "*",
							["VCT"]	= {
								{"PercentageChance", ChanceMultiplier},
							},
						},
					},
				},
			}
		}
	}
}
