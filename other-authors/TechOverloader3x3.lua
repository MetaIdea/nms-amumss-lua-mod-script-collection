NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= "TechOverloader_3x3.pak",
	MOD_AUTHOR		= "Xan the Dragon // Eti the Spirit",
	NMS_VERSION		= "2.3",
	MODIFICATIONS	= {
		{
			PAK_FILE_SOURCE		= "NMSARC.59B126E2.pak",
			MBIN_CHANGE_TABLE	= { 
				{
					MBIN_FILE_SOURCE	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					EXML_CHANGE_TABLE	= {
						{
							PRECEDING_KEY_WORDS	= "",
							VALUE_CHANGE_TABLE	= {
								{"MaxNumSameGroupTech", "8"}
							}
						}						
					}
				}
			}
		}
	}
}