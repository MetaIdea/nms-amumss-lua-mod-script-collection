--
-- Set your delay value here in seconds. For instance,
-- 30 minutes = 1800, 1 hour = 3600, 2 hours = 7200, 24 hours = 86400
--
DELAY_SECONDS = 7200

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "DelayTutorialMessages2h.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Delays Planetary Chart, Exosuit Upgrade Chart and others notifications.",
    ["NMS_VERSION"]     = "5.10",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- METADATA/SIMULATION/MISSIONS/TABLES/TUTORIALMISSIONTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/TUTORIALMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        { -- Exosuit Upgrade Chart "Upgrade the Exosuit at a Drop Pod to add inventory slots..."
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "INV_HINT_MAP", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["VALUE_MATCH"]        = 90,
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 90
                            },
                        },
                        { -- Echo Locator Acquired "Use the Echo Locator to trace its harmonic origin..."
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "ROBOCHART_HINT", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["VALUE_MATCH"]        = 175,
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 175
                            },
                        },
                        { -- Planetary Chart Received "The Treasure Ruin Chart contains directions to an ancient ruined site..."
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "CHART_T_HINT", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["VALUE_MATCH"]        = 60,
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 60
                            },
                        },
                        { -- Expedition rewards available "Exclusive Phase Rewards earned on expeditions are available to all saves"
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "HINT_EXPED_R", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["VALUE_MATCH"]        = 90,
                            ["VALUE_CHANGE_TABLE"] = {
                                -- this is regular notification, still may be useful for new/returned players
                                { "SecondaryWaitTime", 600 }, -- 90
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
                            ["REMOVE"]            = "SECTION",
                        },
                        -- because this notification is appearing at Anomaly now, no need to change anything below
                        -- but if you would like...
                        -- {
                        --     ["SPECIAL_KEY_WORDS"]  = { "MissionID", "HATCH_HINT", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                        --     ["VALUE_MATCH"]        = 300,
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         { "SecondaryWaitTime", 30 }, -- 300
                        --     },
                        -- },
                        --#endregion
                    }
                },
                { -- METADATA/SIMULATION/MISSIONS/TABLES/PIRATEMISSIONTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/PIRATEMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        --#region Reputation Management "Forged Passport acquired..."
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "REP_TOKEN_HINT", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["VALUE_MATCH"]        = 300,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 300
                            },
                        },
                        -- show this notification on space station only ; we should not worry about it in the amazing space
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "MissionID", "REP_TOKEN_HINT", },
                            ["PRECEDING_KEY_WORDS"] = { "StartingConditions" },
                            ["ADD_OPTION"]          = "ADDendSECTION",
                            ["ADD"]                 = [[
<Property value="GcMissionConditionGroup.xml">
    <Property name="OnlyUsedForTextFormatting" value="False" />
    <Property name="ValueToReturnForTextFormatting" value="True" />
    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
        <Property name="ConditionTest" value="AllFalse" />
    </Property>
    <Property name="Conditions">
        <Property value="GcMissionConditionLocation.xml">
            <Property name="MissionPlayerLocation" value="InSpaceStation" />
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
                    ["EXML_CHANGE_TABLE"] = {
                        { -- Exploration Opportunity Detected "Emergency Signal Scanner acquired To use it, locate the Receiver in the Inventory..."
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "ABAND_FIND_HINT", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["VALUE_MATCH"]        = 60,
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 60
                            },
                        },
                        { -- Exploration Opportunity Detected "Space Station Scrap Dealer available"
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "ABAND_FIRSTHINT", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["VALUE_MATCH"]        = 80,
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                -- this is the very first quest, no need to raise up to high delay
                                { "SecondaryWaitTime", 600 }, -- 80
                            },
                        },
                        { -- Additional Salvage Opportunity "Speak with Iteration: Helios to learn of salvage opportunities"
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "WEEKLY_FREI", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["VALUE_MATCH"]        = 45,
                            ["VALUE_CHANGE_TABLE"] = {
                                -- this is somewhat important notification, no need to raise up to high delay
                                { "SecondaryWaitTime", 345 }, -- 45
                            },
                        },
                    }
                },
            }
        }
    }
}
