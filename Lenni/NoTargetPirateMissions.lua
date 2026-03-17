NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "NoTargetPirateMissions",
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "6.24",
["MOD_DESCRIPTION"]			= "Removes all pirate missions where you have to attack other ships",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/MISSIONS/TABLES/PIRATEMISSIONTABLE.MBIN",
					["MXML_CHANGE_TABLE"] 	=
					{
						{
							["SKW"] = {
								{"MissionID", "PIRATE_RIVALS"},
								{"MissionID", "PIRATE_FREIGHT"},
								{"MissionID", "PIRATE_TRADERS"},
							},
							["SECTION_ACTIVE"] = 1,
							["REMOVE"] = "SECTION",
						},
					}
				},
			}
		}
	}
}