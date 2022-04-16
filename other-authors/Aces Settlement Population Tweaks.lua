GameVersion = "3_82"
ModName = "Aces Populated Settlements"
Author = "Acewinters"
BaseDescription = "Increases the amount of NPCs that can be loaded in a settlement"
SourceFilePak = "GCSETTLEMENTGLOBALS.MBIN"

MaxNPCs = "1"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
    ["MOD_DESCRIPTION"]			= BaseDescription,
    ["MOD_AUTHOR"]				= Author,
    ["NMS_VERSION"]				= GameVersion,
    ["MODIFICATIONS"] 			=
    {
        {
            ["MBIN_CHANGE_TABLE"] 	=
            {
                {
                    ["MBIN_FILE_SOURCE"] 	= SourceFilePak,
                    ["EXML_CHANGE_TABLE"] 	= {
						{
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxNPCPopulation", MaxNPCs},
                            }
						}
					}
				}
			}
		}
	}
}