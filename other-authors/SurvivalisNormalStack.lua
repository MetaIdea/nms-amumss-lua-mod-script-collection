
NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] 				= "SurvivalisNormalStack.pak",
  ["MOD_AUTHOR"]				= "Whismerhill",
  ["NMS_VERSION"]				= "3.35",
  ["MOD_DESCRIPTION"]			= "This mod makes survival have normal stack sizes no other changes.",
  ["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"DefaultSubstanceMaxAmount",				 	"9999"},  	--Original "250"  line 4 -- 9999 in normal
								{"CargoSubstanceStorageMultiplier",			    "1"},  	  	--Original "2"  line 6 -- 1 in normal
								{"ShipSubstanceStorageMultiplier",			 	"1"},     	--Original "2"  line 8 -- 1 in normal
								{"FreighterSubstanceStorageMultiplier",		 	"1"},  		--Original "4" line 10 -- 1 in normal
								{"ChestSubstanceStorageMultiplier",				"1"},  	 	--Original "4" line 12 -- 1 in normal
								{"BaseCapsuleSubstanceStorageMultiplier",		"1"},  	  	--Original "8" line 14 -- 1 in normal

							}
						}
					}
				}, --6 replacements
			}
		}
	}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE