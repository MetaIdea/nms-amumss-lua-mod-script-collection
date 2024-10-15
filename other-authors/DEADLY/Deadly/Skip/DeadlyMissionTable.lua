NewMissionBoardRewardOptions = [[
<Property value="TkIdArray.xml">
    <Property name="Array">
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
    </Property>
</Property>
<Property value="TkIdArray.xml">
    <Property name="Array">
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
    </Property>
</Property>
<Property value="TkIdArray.xml">
    <Property name="Array">
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_FIRST" />
        </Property>
    </Property>
</Property>
<Property value="TkIdArray.xml">
    <Property name="Array">
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
    </Property>
</Property>
<Property value="TkIdArray.xml">
    <Property name="Array">
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MED" />
        </Property>
    </Property>
</Property>
<Property value="TkIdArray.xml">
    <Property name="Array">
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MED" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MED" />
        </Property>
    </Property>
</Property>
<Property value="TkIdArray.xml">
    <Property name="Array">
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MED" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MED" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_HIGH" />
        </Property>
    </Property>
</Property>
<Property value="TkIdArray.xml">
    <Property name="Array">
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MED" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MED" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_HIGH" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_HIGH" />
        </Property>
    </Property>
</Property>
<Property value="TkIdArray.xml">
    <Property name="Array">
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MED" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MED" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_HIGH" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MEGA" />
        </Property>
    </Property>
</Property>
<Property value="TkIdArray.xml">
    <Property name="Array">
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MED" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_HIGH" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_HIGH" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MEGA" />
        </Property>
    </Property>
</Property>
<Property value="TkIdArray.xml">
    <Property name="Array">
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_LOW" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MED" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_HIGH" />
        </Property>
        <Property value="NMSString0x10.xml">
            <Property name="Value" value="R_MB_MEGA" />
        </Property>
    </Property>
</Property>
]]


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlyMissionTable.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Adjust Mission Board reward definitions.",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/REALITY/DEFAULTREALITY.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "MissionBoardRewardOptions", "TkIdArray.xml" },
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "MissionBoardRewardOptions", "TkIdArray.xml" },
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "MissionBoardRewardOptions", "TkIdArray.xml" },
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "MissionBoardRewardOptions", "TkIdArray.xml" },
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "MissionBoardRewardOptions", "TkIdArray.xml" },
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "MissionBoardRewardOptions", "TkIdArray.xml" },
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "MissionBoardRewardOptions", "TkIdArray.xml" },
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "MissionBoardRewardOptions", "TkIdArray.xml" },
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "MissionBoardRewardOptions", "TkIdArray.xml" },
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "MissionBoardRewardOptions", "TkIdArray.xml" },
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "MissionBoardRewardOptions", "TkIdArray.xml" },
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "MissionBoardRewardOptions" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = NewMissionBoardRewardOptions
                        },
                    }
                },
                --
                -- METADATA/SIMULATION/MISSIONS/NPCMISSIONTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/NPCMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- disable rewards override
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                -- { "MissionID", "BOUNTY_NEW1",     "Reward", "R_MB_LOW" },
                                -- { "MissionID", "BOUNTY_NEW2",     "Reward", "R_MB_LOW" },
                                -- { "MissionID", "BOUNTY_NEW3",     "Reward", "R_MB_LOW" },
                                { "MissionID", "SCAN_CRE",        "Reward", "R_MB_HIGH" },
                                { "MissionID", "SCAN_MIN",        "Reward", "R_MB_LOW" },
                                { "MissionID", "SCAN_TREE",       "Reward", "R_MB_MED" },
                                -- { "MissionID", "KILL_ROBOTS",     "Reward", "R_MB_MED" },
                                -- { "MissionID", "KILL_ROBOT_MED",  "Reward", "R_MB_HIGH" },
                                -- { "MissionID", "KILL_ROBOT_HARD", "Reward", "R_MB_MEGA" },
                                { "MissionID", "KILL_CREATURES",  "Reward", "R_MB_MED" },
                                { "MissionID", "KILL_PREDATORS",  "Reward", "R_MB_HIGH" },
                                { "MissionID", "DELIVER",         "Reward", "R_MB_LOW" },
                                -- { "MissionID", "DELIVER_HARD",    "Reward", "R_MB_MED" },
                                -- { "MissionID", "COLLECT1",        "Reward", "R_MB_MED" },
                                -- { "MissionID", "COLLECT2",        "Reward", "R_MB_HIGH" },
                                -- { "MissionID", "COLLECT3",        "Reward", "R_MB_MEGA" },
                                -- { "MissionID", "COLLECT4",        "Reward", "R_MB_HIGH" },
                                -- { "MissionID", "FACTORY_RAID",    "Reward", "R_MB_LOW" },
                                -- { "MissionID", "DEPOT_RAID",      "Reward", "R_MB_MED" },
                                -- { "MissionID", "FACT_RAID_MED",   "Reward", "R_MB_HIGH" },
                                -- { "MissionID", "FACT_RAID_HARD",  "Reward", "R_MB_MEGA" },
                                -- { "MissionID", "DEPOT_RAID_HARD", "Reward", "R_MB_HIGH" },
                                -- { "MissionID", "MISSING_PERSON",  "Reward", "R_MB_LOW" },
                                -- { "MissionID", "HIDE_SEEK_BRIBE", "Reward", "R_MB_HIGH" },
                                -- { "MissionID", "HIDE_SEEK_TIMED", "Reward", "R_MB_MEGA" },
                                -- { "MissionID", "REPAIR_1",        "Reward", "R_MB_HIGH" },
                                -- { "MissionID", "REPAIR_2",        "Reward", "R_MB_MEGA" },
                                -- { "MissionID", "REPAIR_3",        "Reward", "R_MB_HIGH" },
                                { "MissionID", "PHOTO_BIOME",     "Reward", "R_MB_MED" },
                                { "MissionID", "PHOTO_CRE",       "Reward", "R_MB_MED" },
                                { "MissionID", "PHOTO_BUILD",     "Reward", "R_MB_MED" },
                                { "MissionID", "FEED_CRE",        "Reward", "R_MB_MED" },
                                { "MissionID", "DIGGING",         "Reward", "R_MB_HIGH" },
                                { "MissionID", "KILL_FIENDS",     "Reward", "R_MB_HIGH" },
                            },
                            ["VALUE_MATCH"]        = "True",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "DoMissionBoardOverride", "False" }, -- True
                            }
                        },
                        -- BOUNTY_NEW1      "MinRank" value="1"     R_MB_LOW       MB_STAND_LOW
                        -- BOUNTY_NEW2      "MinRank" value="4"     R_MB_LOW       MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "BOUNTY_NEW2", "Reward", "R_MB_LOW" },
                            ["VALUE_MATCH"]        = "R_MB_LOW",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_MED" }, -- R_MB_LOW
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "BOUNTY_NEW2", "Reward", "MB_STAND_LOW" },
                            ["VALUE_MATCH"]        = "MB_STAND_LOW",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "MB_STAND_MED" }, -- MB_STAND_LOW
                            },
                        },
                        -- BOUNTY_NEW3      "MinRank" value="8"     R_MB_LOW        MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "BOUNTY_NEW3", "Reward", "R_MB_LOW" },
                            ["VALUE_MATCH"]        = "R_MB_LOW",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_MEGA" }, -- R_MB_LOW
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "BOUNTY_NEW3", "Reward", "MB_STAND_LOW" },
                            ["VALUE_MATCH"]        = "MB_STAND_LOW",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "MB_STAND_HIGH" }, -- MB_STAND_LOW
                            },
                        },
                        -- SCAN_CRE         "MinRank" value="5"     R_MB_HIGH       MB_STAND_MED
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "SCAN_CRE", "Reward", "R_MB_HIGH" },
                            ["VALUE_MATCH"]        = "R_MB_HIGH",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_MED" }, -- R_MB_HIGH
                            },
                        },
                        -- SCAN_MIN         "MinRank" value="0"     R_MB_LOW        MB_STAND_LOW
                        -- SCAN_TREE        "MinRank" value="1"     R_MB_MED        MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "SCAN_TREE", "Reward", "R_MB_MED" },
                            ["VALUE_MATCH"]        = "R_MB_MED",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_LOW" }, -- R_MB_MED
                            },
                        },
                        -- KILL_ROBOTS      "MinRank" value="0"     R_MB_MED        MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "KILL_ROBOTS", "Reward", "R_MB_MED" },
                            ["VALUE_MATCH"]        = "R_MB_MED",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_LOW" }, -- R_MB_MED
                            },
                        },
                        -- KILL_ROBOT_MED   "MinRank" value="5"     R_MB_HIGH       MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "KILL_ROBOT_MED", "Reward", "R_MB_HIGH" },
                            ["VALUE_MATCH"]        = "R_MB_HIGH",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_MED" }, -- R_MB_HIGH
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "KILL_ROBOT_MED", "Reward", "MB_STAND_LOW" },
                            ["VALUE_MATCH"]        = "MB_STAND_LOW",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "MB_STAND_MED" }, -- MB_STAND_LOW
                            },
                        },
                        -- KILL_ROBOT_HARD  "MinRank" value="8"     R_MB_MEGA       MB_STAND_MED
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "KILL_ROBOT_HARD", "Reward", "R_MB_MEGA" },
                            ["VALUE_MATCH"]        = "R_MB_MEGA",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_HIGH" }, -- R_MB_MEGA
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "KILL_ROBOT_HARD", "Reward", "MB_STAND_MED" },
                            ["VALUE_MATCH"]        = "MB_STAND_MED",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "MB_STAND_HIGH" }, -- MB_STAND_MED
                            },
                        },
                        -- KILL_CREATURES   "MinRank" value="0"     R_MB_MED        MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "KILL_CREATURES", "Reward", "R_MB_MED" },
                            ["VALUE_MATCH"]        = "R_MB_MED",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_LOW" }, -- R_MB_MED
                            },
                        },
                        -- KILL_PREDATORS   "MinRank" value="3"     R_MB_HIGH       MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "KILL_PREDATORS", "Reward", "R_MB_HIGH" },
                            ["VALUE_MATCH"]        = "R_MB_HIGH",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_MED" }, -- R_MB_HIGH
                            },
                        },
                        -- DELIVER          "MinRank" value="0"     R_MB_LOW        MB_STAND_LOW
                        -- DELIVER_HARD     "MinRank" value="6"     R_MB_MED        MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "DELIVER_HARD", "Reward", "MB_STAND_LOW" },
                            ["VALUE_MATCH"]        = "MB_STAND_LOW",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "MB_STAND_MED" }, -- MB_STAND_LOW
                            },
                        },
                        -- COLLECT1         "MinRank" value="0"     R_MB_MED        MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "COLLECT1", "Reward", "R_MB_MED" },
                            ["VALUE_MATCH"]        = "R_MB_MED",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_LOW" }, -- R_MB_MED
                            },
                        },
                        -- COLLECT2         "MinRank" value="5"     R_MB_HIGH       MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "COLLECT2", "Reward", "R_MB_HIGH" },
                            ["VALUE_MATCH"]        = "R_MB_HIGH",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_MED" }, -- R_MB_HIGH
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "COLLECT2", "Reward", "MB_STAND_LOW" },
                            ["VALUE_MATCH"]        = "MB_STAND_LOW",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "MB_STAND_MED" }, -- MB_STAND_LOW
                            },
                        },
                        -- COLLECT3         "MinRank" value="8"     R_MB_MEGA       MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "COLLECT3", "Reward", "R_MB_MEGA" },
                            ["VALUE_MATCH"]        = "R_MB_MEGA",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_HIGH" }, -- R_MB_MEGA
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "COLLECT3", "Reward", "MB_STAND_LOW" },
                            ["VALUE_MATCH"]        = "MB_STAND_LOW",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "MB_STAND_HIGH" }, -- MB_STAND_LOW
                            },
                        },
                        -- COLLECT4         "MinRank" value="3"     R_MB_HIGH       MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "COLLECT4", "Reward", "R_MB_HIGH" },
                            ["VALUE_MATCH"]        = "R_MB_HIGH",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_MED" }, -- R_MB_HIGH
                            },
                        },
                        -- FACTORY_RAID     "MinRank" value="1"     R_MB_LOW        MB_STAND_LOW
                        -- DEPOT_RAID       "MinRank" value="3"     R_MB_MED        MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "DEPOT_RAID", "Reward", "R_MB_MED" },
                            ["VALUE_MATCH"]        = "R_MB_MED",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_LOW" }, -- R_MB_MED
                            },
                        },
                        -- FACT_RAID_MED    "MinRank" value="6"     R_MB_HIGH       MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "FACT_RAID_MED", "Reward", "R_MB_HIGH" },
                            ["VALUE_MATCH"]        = "R_MB_HIGH",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_MED" }, -- R_MB_HIGH
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "FACT_RAID_MED", "Reward", "MB_STAND_LOW" },
                            ["VALUE_MATCH"]        = "MB_STAND_LOW",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "MB_STAND_MED" }, -- MB_STAND_LOW
                            },
                        },
                        -- FACT_RAID_HARD   "MinRank" value="8"     R_MB_MEGA       MB_STAND_MED
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "FACT_RAID_HARD", "Reward", "R_MB_MEGA" },
                            ["VALUE_MATCH"]        = "R_MB_MEGA",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_HIGH" }, -- R_MB_MEGA
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "FACT_RAID_HARD", "Reward", "MB_STAND_MED" },
                            ["VALUE_MATCH"]        = "MB_STAND_MED",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "MB_STAND_HIGH" }, -- MB_STAND_MED
                            },
                        },
                        -- DEPOT_RAID_HARD  "MinRank" value="5"     R_MB_HIGH       MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "DEPOT_RAID_HARD", "Reward", "R_MB_HIGH" },
                            ["VALUE_MATCH"]        = "R_MB_HIGH",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_MED" }, -- R_MB_HIGH
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "DEPOT_RAID_HARD", "Reward", "MB_STAND_LOW" },
                            ["VALUE_MATCH"]        = "MB_STAND_LOW",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "MB_STAND_MED" }, -- MB_STAND_LOW
                            },
                        },
                        -- MISSING_PERSON   "MinRank" value="0"     R_MB_LOW        MB_STAND_LOW
                        -- HIDE_SEEK_BRIBE  "MinRank" value="4"     R_MB_HIGH       MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "HIDE_SEEK_BRIBE", "Reward", "MB_STAND_LOW" },
                            ["VALUE_MATCH"]        = "MB_STAND_LOW",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "MB_STAND_MED" }, -- MB_STAND_LOW
                            },
                        },
                        -- HIDE_SEEK_TIMED  "MinRank" value="7"     R_MB_MEGA       MB_STAND_MED
                        -- REPAIR_1         "MinRank" value="8"     R_MB_HIGH       MB_STAND_LOW
                        -- REPAIR_2         "MinRank" value="8"     R_MB_MEGA       MB_STAND_LOW
                        -- REPAIR_3         "MinRank" value="3"     R_MB_HIGH       MB_STAND_LOW
                        -- PHOTO_BIOME      "MinRank" value="0"     R_MB_MED        MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "PHOTO_BIOME", "Reward", "R_MB_MED" },
                            ["VALUE_MATCH"]        = "R_MB_MED",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_LOW" }, -- R_MB_MED
                            },
                        },
                        -- PHOTO_CRE        "MinRank" value="3"     R_MB_MED        MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "PHOTO_CRE", "Reward", "R_MB_MED" },
                            ["VALUE_MATCH"]        = "R_MB_MED",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_LOW" }, -- R_MB_MED
                            },
                        },
                        -- PHOTO_BUILD      "MinRank" value="3"     R_MB_MED        MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "PHOTO_BUILD", "Reward", "R_MB_MED" },
                            ["VALUE_MATCH"]        = "R_MB_MED",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_LOW" }, -- R_MB_MED
                            },
                        },
                        -- FEED_CRE         "MinRank" value="4"     R_MB_MED        MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "FEED_CRE", "Reward", "R_MB_MED" },
                            ["VALUE_MATCH"]        = "R_MB_MED",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_LOW" }, -- R_MB_MED
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "FEED_CRE", "Reward", "MB_STAND_LOW" },
                            ["VALUE_MATCH"]        = "MB_STAND_LOW",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "MB_STAND_MED" }, -- MB_STAND_LOW
                            },
                        },
                        -- DIGGING          "MinRank" value="5"     R_MB_HIGH       MB_STAND_MED
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "DIGGING", "Reward", "R_MB_HIGH" },
                            ["VALUE_MATCH"]        = "R_MB_HIGH",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "R_MB_MED" }, -- R_MB_HIGH
                            },
                        },
                        -- KILL_FIENDS      "MinRank" value="8"     R_MB_HIGH       MB_STAND_LOW
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "MissionID", "KILL_FIENDS", "Reward", "MB_STAND_LOW" },
                            ["VALUE_MATCH"]        = "MB_STAND_LOW",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Reward", "MB_STAND_HIGH" }, -- MB_STAND_LOW
                            },
                        },
                    }
                }
            }
        }
    }
}
