NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BT_Godmode EverythingIsFree.pak",
["MOD_AUTHOR"]				= "Biostar Ten-Exhaust Bearing on Nexus",
["NMS_VERSION"]				= "3.90",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GodMode",								"True"}, 	-- Original "False"
								{"TakeNoDamage",						"True"}, 	-- Original "False"
								{"EverythingIsFree",					"True"}, 	-- Original "False"
								{"EverythingIsKnown",					"True"}, 	-- Original "False"
								{"EverythingIsStar",					"True"}, 	-- Original "False"
								{"DisableSaveSlotSorting",				"True"}, 	-- Original "False"
								{"MultiplePlayerFreightersInASystem",	"True"}, 	-- Original "False"
								{"ForceInitialShip",					"False"}, 	-- Original "False"
								{"ForceInitialWeapon",					"False"}, 	-- Original "False"
								{"MapWarpCheckIgnoreFuel",				"True"}, 	-- Original "False"
								{"MapWarpCheckIgnoreDrive",				"True"}, 	-- Original "False"
								{"IgnoreMissionRank",					"True"}, 	-- Original "False"
								{"AlwaysHaveFocus",						"True"}, 	-- Original "False"
							}
						}
					} --5 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE