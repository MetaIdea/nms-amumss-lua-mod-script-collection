NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] = "NoAerialZoom.pak",
["MOD_DESCRIPTION"] = "Removes the top-down camera zoom animation at way-points, signal scanners, observatories, beacons, radio towers, etc.",
["MOD_AUTHOR"] = "Azzinoth",
["NMS_VERSION"] = "2.09.3",
["MODIFICATIONS"] = 
	{
		{
			["PAK_FILE_SOURCE"] = "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "MELEE"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Active", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "ATMOSPHERESHAKE"},
							["PRECEDING_KEY_WORDS"] = "CapturedData",
							["VALUE_CHANGE_TABLE"] =
							{
								{"ShakeStrength", "0.002"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SPEEDSHAKE"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Active", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "THRUSTSHAKE"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Active", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "WARPSHAKE"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Active", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "LASERSHAKE"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Active", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "WARP_FRT_ATMOS"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Active", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RUNNING"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Active", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "SLOWRUMBLE"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Active", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "VENTBUILDUP"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Active", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "VENTEXPLODE"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Active", "False"},
							}
						},
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE