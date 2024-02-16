DELAY_SECONDS = 7200

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "DelayTutorialMessages.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Delays Planetary Chart, Exosuit Upgrade Chart and others notifications.",
    ["NMS_VERSION"]     = "4.50",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/SIMULATION/MISSIONS/TUTORIALMISSIONTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TUTORIALMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "INV_HINT_MAP", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 90
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "ROBOCHART_HINT", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 175
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "CHART_T_HINT", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 60
                            },
                        },
                    }
                },
                --
                -- METADATA/SIMULATION/MISSIONS/PIRATEMISSIONTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/PIRATEMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- Forged Passport
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "REP_TOKEN_HINT", "StartConditionTest", "GcMissionConditionTest.xml" },
                            ["VALUE_MATCH"]        = "AnyFalse",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "ConditionTest", "AllTrue" }, -- AnyFalse
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "MissionID", "REP_TOKEN_HINT" },
                            ["PRECEDING_KEY_WORDS"] = { "StartingConditions" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = [[
<Property value="GcMissionConditionLocation.xml">
    <Property name="MissionPlayerLocation" value="InSpaceStation" />
</Property>
                            ]]
                        },
                    }
                },
                --
                -- METADATA/SIMULATION/MISSIONS/SPACEPOIMISSIONTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/SPACEPOIMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "ABAND_FIND_HINT", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 60
                            },
                        },
                        -- this is the very first quest, no need to raise up to high delay
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "ABAND_FIRSTHINT", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["MATH_OPERATION"]     = "+",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", 600 }, -- 80
                            },
                        },
                    }
                },
            }
        }
    }
}
