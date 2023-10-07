NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "CampScanChain.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.21",
["MOD_DESCRIPTION"]			= "Allows to scan for more camps while at a camp",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"]					= {"Text", "UI_ROBOT_CAMP_OPEN_DESC"},
							["PKW"]					= "GcAlienPuzzleOption.xml",
							["SECTION_ACTIVE"]		= "-2",
							["SEC_SAVE_TO"]			= "PuzzleOption",
						},
						{
							["SECTION_EDIT"]		= "PuzzleOption",
							["VALUE_CHANGE_TABLE"]	= {
								{"Name", "Find Harmonic Camp"},
							}
						},
						{
							["SECTION_EDIT"]		= "PuzzleOption",
							["PKW"]					= "Rewards",
							["VALUE_CHANGE_TABLE"]	= {
								{"Value", "R_CHART_ROBOT"},
							}
						},
						{
							["SKW"]					= {"Text", "UI_ROBOT_CAMP_OPEN_DESC"},
							["PKW"]					= "GcAlienPuzzleOption.xml",
							["SECTION_ACTIVE"]		= "-2",
							["ADD_OPTION"]			= "ADDafterSECTION",
							["SEC_ADD_NAMED"]		= "PuzzleOption",
						},
					}
				},
			}
		}
	}	
}