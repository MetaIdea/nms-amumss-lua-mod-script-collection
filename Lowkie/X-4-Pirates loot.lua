
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'X-Pirates loot.pak',
	MOD_AUTHOR			= 'Lowkie',
    MOD_BATCHNAME	    = "X-Signal Booster Pirate Rewards",
	NMS_VERSION			= 4.00,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
        {
            MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
            EXML_CHANGE_TABLE	=
                    {            --AddNewRewardsToChangeTable()--this should update as much as possible
                        {
							["SPECIAL_KEY_WORDS"]  = {"Id", "KILLED_CIV"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "STD_DEC_EXP"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "STD_DEC_TRA"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Id", "STD_DEC_WAR"},
							["REMOVE"] = "SECTION",
						},
                    }
        },
        {
            MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN',
            EXML_CHANGE_TABLE	= 
            {
                {--MAKE
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PLANET_FLYBY'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'PIRATELOOT'},
                        {'RewardCount',		'2'},--MaX 8 unless added to
                    }
                },
                {--MAKE
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PIRATE_EASY'},
                    VALUE_CHANGE_TABLE	= 
                    {
                       {'RewardCount',		'3'},--Max 8
                    }
                },
                {--GOOD RAID_DOGFIGHT-RAID_BUILDING Give Pirate loot or trader loot-
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'RAID_BUILDING'},
                    VALUE_CHANGE_TABLE	=  {
                        {'Reward',		'PIRATELOOT'},
                        {'RewardCount',		'4'},--Max 8
                    }
                },
                {--GOOD RAID_DOGFIGHT-RAID_BUILDING Give Pirate loot or trader loot-
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'RAID_DOGFIGHT'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'PIRATELOOT'},
                        {'RewardCount',		'4'},--Max 8
                    }
                },
                {--Good
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PIRATE'},
                    VALUE_CHANGE_TABLE	= {
                        {'RewardCount',		'6'},--Max 8
                    }
                },
                {--MAKE
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PIRATE_HARD'},
                    VALUE_CHANGE_TABLE	= {
                        {'RewardCount',		'8'},--Max 8
                    }
                },
                {--GOOD
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'POLICE'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'POLICELOOT'},
                        {'RewardCount',		'4'},--MaX 4 unless added to
                    }
                },
                {--GOOD
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'PLANET_FLYBY'},--change from pirate drops
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'PIRATELOOT'},
                        {'RewardCount',		'4'},--MaX 8
                    }
                },
                {--GOOD
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'TRADER'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'TRADERLOOT'},
                        {'RewardCount',		'8'},--Will need to add at least 10 when updating
                    }
                },
                {--GOOD
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'TRADER_ESCORT'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'TRADERLOOT'},
                        {'RewardCount',		'4'},--Max 10
                    }
                },
                {--GOOD trader loot?
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'SQUADRON_C'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'TRADERLOOT'},
                        {'RewardCount',		'4'},--Max 10
                    }
                },
                {--GOOD trader loot?
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'SQUADRON_B'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'TRADERLOOT'},
                        {'RewardCount',		'5'},--Max 10
                    }
                },
                {--GOOD trader loot?
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'SQUADRON_A'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'TRADERLOOT'},
                        {'RewardCount',		'6'},--Max 10
                    }                
                },
                {   --GOOD trader loot?
                    PRECEDING_FIRST		= true,
                    PRECEDING_KEY_WORDS = 'Definitions',
                    SPECIAL_KEY_WORDS	= {'Id', 'SQUADRON_S'},
                    VALUE_CHANGE_TABLE	= {
                        {'Reward',		'TRADERLOOT'},--trader loot
                        {'RewardCount',		'8'},--Max 10
                    }
                },
            }
        }
    }
}}
}
-- local function R_ProcTechRange(item)
	-- local exml = [[
		-- <Property name="Group" value="]]..item.id..[[ "/>
		-- <Property name="WeightedChanceNormal" value="55" />
		-- <Property name="WeightedChanceRare" value="25" />
		-- <Property name="WeightedChanceEpic" value="15" />
		-- <Property name="WeightedChanceLegendary" value="5" />
		-- <Property name="ForceRelevant" value="False" />
		-- <Property name="ForceQualityRelevant" value="False" />
	-- ]]
	-- return R_TableItem(item, exml, 'GcRewardProcTechProduct.xml')
-- end
-- local function R_ProcTechNormal(item)
	-- local exml = [[
		-- <Property name="Group" value="]]..item.id..[[ "/>
		-- <Property name="WeightedChanceNormal" value="100" />
		-- <Property name="WeightedChanceRare" value="0" />
		-- <Property name="WeightedChanceEpic" value="0" />
		-- <Property name="WeightedChanceLegendary" value="0" />
		-- <Property name="ForceRelevant" value="False" />
		-- <Property name="ForceQualityRelevant" value="False" />
	-- ]]
	-- return R_TableItem(item, exml, 'GcRewardProcTechProduct.xml')
-- end
-- local function R_ProcTechRare(item)
	-- local exml = [[
		-- <Property name="Group" value="]]..item.id..[[ "/>
		-- <Property name="WeightedChanceNormal" value="0" />
		-- <Property name="WeightedChanceRare" value="100" />
		-- <Property name="WeightedChanceEpic" value="0" />
		-- <Property name="WeightedChanceLegendary" value="0" />
		-- <Property name="ForceRelevant" value="False" />
		-- <Property name="ForceQualityRelevant" value="False" />
	-- ]]
	-- return R_TableItem(item, exml, 'GcRewardProcTechProduct.xml')
-- end
-- local function R_ProcTechEpic(item)
	-- local exml = [[
		-- <Property name="Group" value="]]..item.id..[[ "/>
		-- <Property name="WeightedChanceNormal" value="0" />
		-- <Property name="WeightedChanceRare" value="0" />
		-- <Property name="WeightedChanceEpic" value="100" />
		-- <Property name="WeightedChanceLegendary" value="0" />
		-- <Property name="ForceRelevant" value="False" />
		-- <Property name="ForceQualityRelevant" value="False" />
	-- ]]
	-- return R_TableItem(item, exml, 'GcRewardProcTechProduct.xml')
-- end
-- local function R_ProcTechLegendary(item)
	-- local exml = [[
		-- <Property name="Group" value="]]..item.id..[[ "/>
		-- <Property name="WeightedChanceNormal" value="0" />
		-- <Property name="WeightedChanceRare" value="0" />
		-- <Property name="WeightedChanceEpic" value="0" />
		-- <Property name="WeightedChanceLegendary" value="100" />
		-- <Property name="ForceRelevant" value="False" />
		-- <Property name="ForceQualityRelevant" value="False" />
	-- ]]
	-- return R_TableItem(item, exml, 'GcRewardProcTechProduct.xml')
-- end