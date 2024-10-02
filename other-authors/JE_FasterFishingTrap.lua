ModName = "FasterFishingTrap"
ModNameSub = "JE"
GameVersion = "5.1.2.0"
ModVersion = "a"

--[[ Files Modified:
GCFISHINGGLOBALS.GLOBAL.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModNameSub.."_"..ModName..".pak",
	MOD_DESCRIPTION	= "Increased catch rate for the Fishing Trap",
	MOD_AUTHOR		= "Jaggid Edje",
	LUA_AUTHOR		= "Jaggid Edje",
	NMS_VERSION		= GameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "GCFISHINGGLOBALS.GLOBAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
								{"SeaHarvesterAverageCatchTimeSeconds",900}  -- Default is 3600 (one hour)
							},
						},
					}
				}
			}
		}
	}
}