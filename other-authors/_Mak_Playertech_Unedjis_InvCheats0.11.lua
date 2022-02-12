
NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] 				= "_Mak_Playertech_Unedjis_InvCheats0.11.pak",
  ["MOD_AUTHOR"]				= "Amakka",
  ["NMS_VERSION"]				= "3.35",
  ["MOD_DESCRIPTION"]			= "Exosuit technology slots upgradeable to 8x6 from 7x2, Merged with UnedjesTweaks file.",
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
								{"DefaultSubstanceMaxAmount",				 	"50000"},  	--Original "9999"  line 4 --
								{"CargoSubstanceStorageMultiplier",				 	"2"},  	--Original "1"  line 6 --
								{"CargoProductStorageMultiplier",				 	"100"},  	--Original "10"  line 7 --
								{"ShipSubstanceStorageMultiplier",				 	"2"},  	--Original "1"  line 8 --
								{"ShipProductStorageMultiplier",				 	"100"},  	--Original "5"  line 9 --
								{"FreighterSubstanceStorageMultiplier",				 	"5"},  	--Original "1"  line 10 --
								{"FreighterProductStorageMultiplier",				 	"200"},  	--Original "10"  line 11 --
								{"ChestSubstanceStorageMultiplier",				 	"5"},  	--Original "1"  line 12 --
								{"ChestProductStorageMultiplier",				 	"200"},  	--Original "20"  line 13 --
								{"BaseCapsuleSubstanceStorageMultiplier",				 	"5"},  	--Original "1"  line 14 --
								{"BaseCapsuleProductStorageMultiplier",				 	"200"},  	--Original "100"  line 15 --
								{"DefaultProductStorageMultiplier",				 	"50"},  	--Original "5"  line 17 --
								{"SubstanceMaxAmountLimit",				 	"999999"},  	--Original "9999"  line 18 --
								{"ProductMaxAmountLimit",				 	"999999"},  	--Original "9999"  line 19 --
								{"PlayerPersonalInventoryTechWidth",				 	"8"},  	--Original "7"  line 20 --
								{"PlayerPersonalInventoryTechHeight",			    "6"},  	  	--Original "2"  line 21 --
							}
						}
					}
				}, --2 replacements
				{	
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN"},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"DefaultSubstanceMaxAmount",				 	"50000"},  	--Original "9999"  line 4 --
								{"CargoSubstanceStorageMultiplier",				 	"2"},  	--Original "1"  line 6 --
								{"CargoProductStorageMultiplier",				 	"100"},  	--Original "10"  line 7 --
								{"ShipSubstanceStorageMultiplier",				 	"2"},  	--Original "1"  line 8 --
								{"ShipProductStorageMultiplier",				 	"100"},  	--Original "5"  line 9 --
								{"FreighterSubstanceStorageMultiplier",				 	"5"},  	--Original "1"  line 10 --
								{"FreighterProductStorageMultiplier",				 	"200"},  	--Original "10"  line 11 --
								{"ChestSubstanceStorageMultiplier",				 	"5"},  	--Original "1"  line 12 --
								{"ChestProductStorageMultiplier",				 	"200"},  	--Original "20"  line 13 --
								{"BaseCapsuleSubstanceStorageMultiplier",				 	"5"},  	--Original "1"  line 14 --
								{"BaseCapsuleProductStorageMultiplier",				 	"200"},  	--Original "100"  line 15 --
								{"DefaultProductStorageMultiplier",				 	"50"},  	--Original "5"  line 17 --
								{"SubstanceMaxAmountLimit",				 	"999999"},  	--Original "9999"  line 18 --
								{"ProductMaxAmountLimit",				 	"999999"},  	--Original "9999"  line 19 --
								{"PlayerPersonalInventoryTechWidth",				 	"8"},  	--Original "7"  line 20 --
								{"PlayerPersonalInventoryTechHeight",			    "6"},  	  	--Original "2"  line 21 --
							}
						}
					}
				},--2 replacements
			}
		}
	}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE