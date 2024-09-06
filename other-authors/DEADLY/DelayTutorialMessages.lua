DELAY_SECONDS = 7200

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "DelayTutorialMessages.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Delays Planetary Chart, Exosuit Upgrade Chart and others notifications.",
    ["NMS_VERSION"]     = "5.10",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/SIMULATION/MISSIONS/TABLES/TUTORIALMISSIONTABLE.MBIN
                --
                {
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
                    }
                },
                --
                -- METADATA/SIMULATION/MISSIONS/TABLES/PIRATEMISSIONTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/PIRATEMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- Reputation Management "Forged Passport acquired..."
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "REP_TOKEN_HINT", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["VALUE_MATCH"]        = 300,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SecondaryWaitTime", DELAY_SECONDS }, -- 300
                            },
                        },
                        { -- show this notification only on station ; we should not worry about it in the amazing space
                            ["SPECIAL_KEY_WORDS"]   = { "MissionID", "REP_TOKEN_HINT", "Stage", "GcMissionSequenceGroup.xml" },
                            ["PRECEDING_KEY_WORDS"] = { "Stages" },
                            ["ADD_OPTION"]          = "ADDendSECTION",
                            ["ADD"]                 = [[
<Property value="GcGenericMissionStage.xml">
  <Property name="Versions" />
  <Property name="Stage" value="GcMissionSequenceWaitForConditions.xml">
    <Property name="Message" value="" />
    <Property name="ConditionTest" value="GcMissionConditionTest.xml">
      <Property name="ConditionTest" value="AnyTrue" />
    </Property>
    <Property name="Conditions">
      <Property value="GcMissionConditionLocation.xml">
        <Property name="MissionPlayerLocation" value="InSpaceStation" />
      </Property>
    </Property>
    <Property name="AllowedToFormatObjectives" value="True" />
    <Property name="ForceAllowMissionRestart" value="False" />
    <Property name="ForceAllowMissionRestartEvent" value="" />
    <Property name="DebugText" value="get back in space station" />
    <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup.xml">
      <Property name="MissionMarkup" value="None" />
    </Property>
  </Property>
</Property>
]],
                        },
                    }
                },
                --
                -- METADATA/SIMULATION/MISSIONS/TABLES/SPACEPOIMISSIONTABLE.MBIN
                --
                {
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
                        -- this is the very first quest, no need to raise up to high delay
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "ABAND_FIRSTHINT", "Stage", "GcMissionSequenceShowHintMessage.xml" },
                            ["VALUE_MATCH"]        = 80,
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
