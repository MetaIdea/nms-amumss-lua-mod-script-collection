--Pirate Settings
p_Interest ="1"		-- Original "0"
p_WARPS = "4"		--original 5
p_HOURS = "0"		--original 3

--Spawn Settings
Trader_Spawnchance = "48"	--original 12
RELIC_Spawnchance = "10" --original 2
REPAIR_Spawnchance = "16" --original 4
ABAND_FREIGHTER_Spawnchance = "10" --original 0.25

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "LessLonely.pak",
    ["MOD_AUTHOR"] = "TwistedViking",
    ["NMS_VERSION"] = "Omega-4.45",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= {
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= {
								{"PirateInterestOverride", p_Interest},
								{"WarpsBetweenBattles", 	p_WARPS},
								{"HoursBetweenBattles",		p_HOURS},
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = { "Id", "TRADER_HAIL" },
							["VALUE_CHANGE_TABLE"] 	= {
								{"SpawnChance",	Trader_Spawnchance}
							}
						}
					}	
				},
				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = { "Id", "RELIC_HAIL" },
							["VALUE_CHANGE_TABLE"] 	= {
								{"SpawnChance",	RELIC_Spawnchance}
							}
						}
					}	
				},
				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = { "Id", "REPAIR_HAIL" },
							["VALUE_CHANGE_TABLE"] 	= {
								{"SpawnChance",	REPAIR_Spawnchance}
							}
						}
					}	
				},
				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = { "Id", "ABAND_FREIGHTER" },
							["VALUE_CHANGE_TABLE"] 	= {
								{"SpawnChance",	ABAND_FREIGHTER_Spawnchance}
							}
						}
					}	
				}
            }
        }
    }
}
