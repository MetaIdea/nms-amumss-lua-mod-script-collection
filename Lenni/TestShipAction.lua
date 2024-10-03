NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "TestShipAction.pak",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "5.03",
["MOD_DESCRIPTION"]			= "Gives some UI stuff to the ship",
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
							["SKW"]					= {"Id", "ROBOT_CAMP_TERMINAL"},
							["SEC_SAVE_TO"]			= "PuzzleOption",
						},
						{
							["SEC_EDIT"]		= "PuzzleOption",
							["VALUE_CHANGE_TABLE"]	= {
								{"Id", "?ECON_SCANNER"},
								{"InteractionType", "None"},
								{"AlienPuzzleCategory", "Default"},
							}
						},
						{
							["SKW"] = {"Id", "?ECON_SCANNER"},
							["REMOVE"] = "SECTION",
						},
						{
							["PKW"] = "Table",
							["SEC_ADD_NAMED"] = "PuzzleOption",
						},
					}
				},
			}
		}
	}
}