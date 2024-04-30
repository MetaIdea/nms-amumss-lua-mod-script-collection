NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]	= "Test_MissingBracket.pak",
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
						-- Save REWARD items
						{
							["SKW"]	= {"Id", "R_SALVAGEWING"},
							["PKW"]	= "GcRewardTableItem.xml",
							["SEC_SAVE_TO"]	= "R_SALVAGE_WING",
						},
						{
							["SKW"]	= {"Id", "R_SALVAGECOCK"},
							["PKW"]	= "GcRewardTableItem.xml",
							["SEC_SAVE_TO"]	= "R_SALVAGECOCK",
						},
						{
							["SKW"]	= {"Id", "R_SALVAGE_ENG"},
							["PKW"]	= "GcRewardTableItem.xml",
							["SEC_SAVE_TO"]	= "R_SALVAGE_ENG",
						},
						{
							["SKW"]	= {"Id", "R_SALVAGEWING"},
							["SEC_SAVE_TO"]	= "R_SALVAGE_ALL",
						},
						
						-- Rename new REWARD item ID
						{
							["SEC_EDIT"]	= "R_SALVAGE_ALL",
							["VCT"]	= {
								{"Id", "R_SALVAGE_ALL"},
							},
						},
						
						-- Remove all existing REWARD items from new item
						{
							["SEC_EDIT"]	= "R_SALVAGE_ALL",
							["PKW"]	= "GcRewardTableItem.xml",
							["REPLACE_TYPE"]	= "ALL",
							["REMOVE"]	= "SECTION",
						},
						
						-- Add saved REWARD items to new item
						{
							["SEC_EDIT"]	= "R_SALVAGE_ALL",
							["PKW"]	= {"List", "List"},
							["SEC_ADD_NAMED"]	= "R_SALVAGE_WING",
						},
						{
							["SEC_EDIT"]	= "R_SALVAGE_ALL",
							["PKW"]	= {"List", "List"},
							["SEC_ADD_NAMED"]	= "R_SALVAGECOCK",
						},
						{
							["SEC_EDIT"]	= "R_SALVAGE_ALL",
							["PKW"]	= {"List", "List"},
							["SEC_ADD_NAMED"]	= "R_SALVAGE_ENG",
						},
						
						-- Add new REWARD item to REWARDTABLE
						{
							["PKW"]	= "GcGenericRewardTableEntry.xml",
							["ADD_OPTION"]	= "ADDafterSECTION",
							["SEC_ADD_NAMED"]	= "R_SALVAGE_ALL",
						},
					}
				},

				-- Change IDs in GCALIENPUZZLETABLE
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
						{
							["SKW"]	= {
								{"Value", "R_SALVAGE_ENG"},
								{"Value", "R_SALVAGEWING"},
								{"Value", "R_SALVAGECOCK"},
							},
							["VCT"]	= {
								{"Value", "R_SALVAGE_ALL"},
							},
						},
					},
				},
			}
		}
	}
}
