NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "CampScanChain",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "5.62",
["MOD_DESCRIPTION"]			= "Allows to scan for more camps while at a camp",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["SKW"]					= {"Text", "UI_ROBOT_CAMP_OPEN_DESC", "Options", "GcAlienPuzzleOption"},
							["SEC_SAVE_TO"]			= "PuzzleOption",
						},
						{
							["SEC_EDIT"]		= "PuzzleOption",
							["VALUE_CHANGE_TABLE"]	= {
								{"Name", "Find Harmonic Camp"},
							}
						},
						{
							["SEC_EDIT"]		= "PuzzleOption",
							["PKW"]				= "Rewards",
							["LINE_OFFSET"]		= 1,
							["VALUE_CHANGE_TABLE"]	= {
								{"Rewards", "R_CHART_ROBOT"},
							}
						},
						{
							["SKW"]					= {"Text", "UI_ROBOT_CAMP_OPEN_DESC", "Name", "UI_ROBO_CAMP_SHIP_OPT"},
							["REPLACE_TYPE"]		= "ALL",
							["ADD_OPTION"]			= "ADDafterSECTION",
							["SEC_ADD_NAMED"]		= "PuzzleOption",
						},
					}
				},
			}
		}
	}
}