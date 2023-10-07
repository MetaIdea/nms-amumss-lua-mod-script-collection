POSSIBLE_UPGRADES =
{
	"FreighterTechHyp",
	"FreighterTechFuel",
	-- "FreighterTechSpeed",
	-- "FreighterTechTrade",
	-- "FreighterTechCombat",
	-- "FreighterTechMine",
	-- "FreighterTechExp",
}

OVERWRITE_LOOT =
{
    "R_ABAND_CRATE",
    "R_ABAND_CASE",
    "R_ABAND_CAPS",
    "R_ABAND_LOCK",
    "R_ABAND_AMMO",
    "R_ABAND_GIFT",
    "R_FREI_TECH"
}

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]		= "Derelict_Freighter_Specific_Upgrades.pak",
    ["MOD_DESCRIPTION"]		= "Limits derelict freighter loot to hyperdrive and fuel modules",
    ["MOD_AUTHOR"]			= "Lenni",
    ["NMS_VERSION"]			= "4.43", 
    ["MODIFICATIONS"]		=
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
						{
							["SKW"] = {"Id", "R_FREI_TECH"},
							["PKW"] = "GcRewardTableItem.xml",
							["SEC_SAVE_TO"] = "REWARD_ITEM"
						},
                    }
                }
            }
        }
    }
}

local ChangesToRewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
-- now we're looping OVERWRITE_LOOT
for i=1,#OVERWRITE_LOOT,1 do
    -- Each id in said list we're going to contain in a var (not necissariy but makes it readable)
    Loot = OVERWRITE_LOOT[i]
    
    --for each change we want to do we are creating adding a new item to the ChangesToRewardTable
    ChangesToRewardTable[#ChangesToRewardTable + 1] = 
    {
        ["SPECIAL_KEY_WORDS"]   = {"Id", Loot},
        ["PRECEDING_KEY_WORDS"] = "GcRewardTableItem.xml",
		["REPLACE_TYPE"] = "ALL",
        ["REMOVE"] = "SECTION"
    }
    
    ChangesToRewardTable[#ChangesToRewardTable + 1] = 
    {
        ["SPECIAL_KEY_WORDS"]   = {"Id", Loot},
        ["VALUE_CHANGE_TABLE"]	=
        {
            {"RewardChoice", "SelectAlways"},
        }
    }
	
	for j = 1,#POSSIBLE_UPGRADES,1 do
		Upgrade = POSSIBLE_UPGRADES[j]
	
		ChangesToRewardTable[#ChangesToRewardTable + 1] = 
		{
			["SEC_EDIT"]	= "REWARD_ITEM",
			["VCT"] = {
				{"ProceduralProductCategory", Upgrade},
			},
		}

		ChangesToRewardTable[#ChangesToRewardTable + 1] = 
		{
			["SPECIAL_KEY_WORDS"] = {"Id", Loot},
			["PKW"] = {"List", "List"},
			["SEC_ADD_NAMED"]	= "REWARD_ITEM",
		}
	end
end