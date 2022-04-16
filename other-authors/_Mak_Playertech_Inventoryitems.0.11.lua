
NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] 				= "_Mak_Playertech_Inventoryitems.0.11.pak",
  ["MOD_AUTHOR"]				= "Amakka",
  ["NMS_VERSION"]				= "3.35",
  ["MOD_DESCRIPTION"]			= "Exosuit technology slots upgradeable to 8x6 from 7x2, Merged file; this is what I use.",
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
								{"DefaultSubstanceMaxAmount",				 	"1000"},  	--Original "250"  line 4 --
								{"ShipSubstanceStorageMultiplier",				 	"3"},  	--Original "2"  line 8 --
								{"ShipProductStorageMultiplier",				 	"10"},  	--Original "5"  line 9 --
								{"FreighterSubstanceStorageMultiplier",				 	"6"},  	--Original "4"  line 10 --
								{"FreighterProductStorageMultiplier",				 	"20"},  	--Original "10"  line 11 --
								{"ChestSubstanceStorageMultiplier",				 	"10"},  	--Original "4"  line 12 --
								{"ChestProductStorageMultiplier",				 	"40"},  	--Original "20"  line 13 --
								{"BaseCapsuleSubstanceStorageMultiplier",				 	"10"},  	--Original "8"  line 14 --
								{"SubstanceMaxAmountLimit",				 	"10000"},  	--Original "9999"  line 18 --
								{"ProductMaxAmountLimit",				 	"10000"},  	--Original "9999"  line 19 --
								{"PlayerPersonalInventoryTechWidth",				 	"8"},  	--Original "7"  line 20 -- 7 in normal
								{"PlayerPersonalInventoryTechHeight",			    "6"},  	  	--Original "2"  line 21 -- 2 in normal
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
								{"DefaultSubstanceMaxAmount",				 	"10000"},  	--Original "9999"  line 4 --
								{"ShipProductStorageMultiplier",				 	"10"},  	--Original "5"  line 9 --
								{"FreighterProductStorageMultiplier",				 	"20"},  	--Original "10"  line 11 --
								{"ChestProductStorageMultiplier",				 	"40"},  	--Original "20"  line 13 --
								{"SubstanceMaxAmountLimit",				 	"10000"},  	--Original "9999"  line 18 --
								{"ProductMaxAmountLimit",				 	"10000"},  	--Original "9999"  line 19 --
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