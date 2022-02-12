
NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] 				= "Mak.Max.PlayerTech.0.11.pak",
  ["MOD_AUTHOR"]				= "Amakka",
  ["NMS_VERSION"]				= "3.35",
  ["MOD_DESCRIPTION"]			= "Exosuit technology slots upgradeable to 8x6 from 7x2.",
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
								{"PlayerPersonalInventoryTechWidth",				 	"8"},  	--Original "7"  line 20 -- 7 in normal
								{"PlayerPersonalInventoryTechHeight",			    "6"},  	  	--Original "2"  line 21 -- 2 in normal
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