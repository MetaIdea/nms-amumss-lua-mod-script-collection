--
-- Set your delay value here in seconds. For instance,
-- 30 minutes = 1800, 1 hour = 3600, 2 hours = 7200, 24 hours = 86400
--
DELAY_SECONDS = 7200

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "Delay_Tutorial_Messages_2h",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Delays Planetary Chart, Exosuit Upgrade Chart and others notifications.",
    ["NMS_VERSION"]     = "5.73",
    ["EXML_CREATE"]     = "true",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- METADATA/SIMULATION/MISSIONS/TABLES/TUTORIALMISSIONTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/TUTORIALMISSIONTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        { -- Exosuit Upgrade Chart "Upgrade the Exosuit at a Drop Pod to add inventory slots..."
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "INV_HINT_MAP", "Stage", "GcMissionSequenceShowHintMessage" },
                            ["VALUE_MATCH"]        = 90,
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 90
                            },
                        },
                        --#region Echo Locator Acquired "Use the Echo Locator to trace its harmonic origin..."
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "ROBOCHART_HINT", "Stage", "GcMissionSequenceShowHintMessage" },
                            ["VALUE_MATCH"]        = 175,
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 175
                            },
                        },
                        { -- show this notification only in corrupted systems only
                            ["SPECIAL_KEY_WORDS"]   = { "MissionID", "ROBOCHART_HINT", },
                            ["PRECEDING_KEY_WORDS"] = { "StartingConditions" },
                            ["ADD_OPTION"]          = "ADDendSECTION",
                            ["ADD"]                 = [[
<Property name="StartingConditions" value="GcMissionConditionGroup" _index="1">
    <Property name="GcMissionConditionGroup">
        <Property name="OnlyUsedForTextFormatting" value="false" />
        <Property name="ValueToReturnForTextFormatting" value="true" />
        <Property name="ConditionTest" value="GcMissionConditionTest">
            <Property name="ConditionTest" value="AllFalse" />
        </Property>
        <Property name="Conditions">
            <Property name="Conditions" value="GcMissionConditionSystemHasCorruptedPlanet" _index="0">
                <Property name="GcMissionConditionSystemHasCorruptedPlanet">
                    <Property name="AllowNexus" value="false" />
                </Property>
            </Property>
        </Property>
    </Property>
</Property>
]],
                        },
                        --#endregion
                        { -- Planetary Chart Received "The Treasure Ruin Chart contains directions to an ancient ruined site..."
                            -- As of 5.10, this notification seems to be appears only once per playthrough.
                            -- Once the chart has been used for very first time, you never see this notification again...
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "CHART_T_HINT", "Stage", "GcMissionSequenceShowHintMessage" },
                            ["VALUE_MATCH"]        = 60,
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 60
                            },
                        },
                        { -- Expedition rewards available "Exclusive Phase Rewards earned on expeditions are available to all saves"
                            -- this is regular notification, still may be useful for new/returned players
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "HINT_EXPED_R", "Stage", "GcMissionSequenceShowHintMessage" },
                            ["VALUE_MATCH"]        = 90,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", 600 }, -- 90
                            },
                        },
                        { -- Hazardous Environment Bonuses
                            -- it's okay notification, but cooldown is too small. a storm lasts about 5 minutes usually
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "STORM_HINTS", "MessageTitle", "UI_NOTIFY_STORM_TIP_TITLE" },
                            ["REPLACE_TYPE"]       = "ALL", -- 4 occurencies
                            ["VALUE_MATCH"]        = 70,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", 190 }, -- 70
                            },
                        },
                        --#region Nurturing New Companions "An egg is ready to hatch into a new companion!"
                        -- The thing is that the check "OnPlanetSurface" does not take into account any building.
                        -- This leads to infinite restart of this quest on trading posts, i.e. you get the notification bombing.
                        -- Conclusion. We could add another check "InBuilding" or "OnPlanet",
                        -- but, I won't see this notification even inside of bases.
                        -- Also, probably, there should be the check "InYourFreighter" too.
                        -- The modification below leaves the notification to appear at Anomaly on feet only.
                        {
                            ["SPECIAL_KEY_WORDS"] = { "MissionID", "HATCH_HINT", "MissionPlayerLocation", "OnPlanetSurface" },
                            ["SECTION_UP"]        = 1,
                            ["REMOVE"]            = "SECTION",
                        },
                        -- because this notification is appearing at Anomaly now, no need to change anything below
                        -- but if you would like...
                        -- {
                        --     ["SPECIAL_KEY_WORDS"]  = { "MissionID", "HATCH_HINT", "Stage", "GcMissionSequenceShowHintMessage" },
                        --     ["VALUE_MATCH"]        = 300,
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         { "SecondaryWaitTime", 30 }, -- 300
                        --     },
                        -- },
                        { -- Extreme Water Pressure Detected
                            -- it's okay notification, but cooldown is too small and became annoying after some time
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "DEEP_HAZ_HINT", "MessageTitle", "UI_SWIM_DEEP_HINT_TITLE" },
                            ["VALUE_MATCH"]        = 120.0,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", 1800.0 }, -- 120.0
                            },
                        },
                        { -- Collect Reward! (Twitch)
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "HINT_TWITCH_R", "Message", "UI_TWITCH_REWARD_MSG" },
                            ["VALUE_MATCH"]        = 95.0,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", 295.0 }, -- 95.0
                            },
                        },
                        { -- Collect Reward! (Regular)
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "HINT_SWITCH_R", "Message", "UI_SWITCH_REWARD_MSG" },
                            ["VALUE_MATCH"]        = 105.0,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", 545.0 }, -- 105.0
                            },
                        },
                        --#endregion
                    }
                },
                { -- METADATA/SIMULATION/MISSIONS/TABLES/PIRATEMISSIONTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/PIRATEMISSIONTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        --#region Reputation Management "Forged Passport acquired..."
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "REP_TOKEN_HINT", "Stage", "GcMissionSequenceShowHintMessage" },
                            ["VALUE_MATCH"]        = 300,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 300
                            },
                        },
                        { -- show this notification on space stations only
                            ["SPECIAL_KEY_WORDS"]   = { "MissionID", "REP_TOKEN_HINT", },
                            ["PRECEDING_KEY_WORDS"] = { "StartingConditions" },
                            ["ADD_OPTION"]          = "ADDendSECTION",
                            ["ADD"]                 = [[
<Property name="StartingConditions" value="GcMissionConditionGroup" _index="1">
    <Property name="GcMissionConditionGroup">
        <Property name="OnlyUsedForTextFormatting" value="false" />
        <Property name="ValueToReturnForTextFormatting" value="true" />
        <Property name="ConditionTest" value="GcMissionConditionTest">
            <Property name="ConditionTest" value="AllFalse" />
        </Property>
        <Property name="Conditions">
            <Property name="Conditions" value="GcMissionConditionLocation" _index="0">
                <Property name="GcMissionConditionLocation">
                    <Property name="MissionPlayerLocation" value="InSpaceStation" />
                </Property>
            </Property>
        </Property>
    </Property>
</Property>
]],
                        },
                        --#endregion
                    }
                },
                { -- METADATA/SIMULATION/MISSIONS/TABLES/SPACEPOIMISSIONTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/SPACEPOIMISSIONTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        { -- Exploration Opportunity Detected "Emergency Signal Scanner acquired To use it, locate the Receiver in the Inventory..."
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "ABAND_FIND_HINT", "Stage", "GcMissionSequenceShowHintMessage" },
                            ["VALUE_MATCH"]        = 60,
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 60
                            },
                        },
                        { -- Exploration Opportunity Detected "Space Station Scrap Dealer available"
                            -- this is the very first quest, no need to raise up to high delay
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "ABAND_FIRSTHINT", "Stage", "GcMissionSequenceShowHintMessage" },
                            ["VALUE_MATCH"]        = 80,
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", 600 }, -- 80
                            },
                        },
                        { -- Additional Salvage Opportunity "Speak with Iteration: Helios to learn of salvage opportunities"
                            -- this is somewhat important notification, no need to raise up to high delay
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "WEEKLY_FREI", "Stage", "GcMissionSequenceShowHintMessage" },
                            ["VALUE_MATCH"]        = 45,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", 345 }, -- 45
                            },
                        },
                    }
                },
            }
        }
    }
}
