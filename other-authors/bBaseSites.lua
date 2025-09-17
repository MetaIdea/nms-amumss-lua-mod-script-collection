NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME = "bBetter Base Sites",
    MOD_DESCRIPTION = [[ 
    Allows you to find good base sites with Secure Sites planetary maps.
    These sites have a base computer in the centre of a fairly large flat 
    area, facilitating easy base construction.  Based on work by XenonS at
    https://nomansskymods.com/mods/easy-base-building/.
]],
    MOD_AUTHOR = "Bladehawke",
    NMS_VERSION = "5.5.8", -- Changes in files made this change necessary
    -- UPDATE_LINK = "https://pastebin.com/raw/UkVFmagZ",
    MODIFICATIONS = {
        {
            MBIN_CHANGE_TABLE = {
                {
                    MBIN_FILE_SOURCE = [[METADATA/SIMULATION/SCANNING/SCANEVENTTABLEPLANET.MBIN]],
                    MXML_CHANGE_TABLE = {
                        {
                            SPECIAL_KEY_WORDS = {"Events", "GcScanEventData", "Name", "HARVESTER"},
                            SEC_COPY = "Base",
                            SEC_KEEP = "TRUE"
                        },
                        {
                            SEC_EDIT = "Base",
                            VALUE_CHANGE_TABLE = {
                                {"Name", "BASE"},
                                {"TooltipMessage", "TIP_BASE"},
                                {"OSDMessage", "SIGNAL_BASE"},
                                {"BuildingClass", "Base"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Events", "GcScanEventData", "Name", "ROBOT_CAMP"},
                            EXML_FLAGS = "ADDNEWSECTION",
                            ADD_OPTION = "ADDafterSECTION",
                            SEC_ADD_NAMED = "Base"
                        }
                    }
                },
                {
                    MBIN_FILE_SOURCE = "METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN",
                    MXML_CHANGE_TABLE = {
                        {
                            SPECIAL_KEY_WORDS = {"Events", "GcScanEventData", "Name", "UW_RUIN"},
                            EXML_FLAGS = "ADDNEWSECTION",
                            ADD_OPTION = "ADDafterSECTION",
                            SEC_ADD_NAMED = "Base"
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Name", "BASE"},
                            VALUE_CHANGE_TABLE = {
                                {"ForceWideRandom", "False"}
                            }
                        }
                    }
                },
                {
                    MBIN_FILE_SOURCE = [[METADATA/SIMULATION/ENVIRONMENT/PLANETBUILDINGTABLE.MBIN]],
                    MXML_CHANGE_TABLE = {
                        {
                            SPECIAL_KEY_WORDS = {"Base", "GcBuildingDefinitionData"},
                            REPLACE_TYPE = "ONCE",
                            VALUE_CHANGE_TABLE = {
                                {"ClusterLayout", "SINGLE_WAYPOINT"}
                            }
                        }
                    }
                },
                {
                    MBIN_FILE_SOURCE = [[METADATA/REALITY/TABLES/REWARDTABLE.MBIN]],
                    MXML_CHANGE_TABLE = {
                        {
                            SPECIAL_KEY_WORDS = {
                                "SpecialRewardTable",
                                "GcGenericRewardTableEntry",
                                "Id",
                                "R_STARCHART_A"
                            },
                            REPLACE_TYPE = "ALL",
                            VALUE_CHANGE_TABLE = {
                                {"PercentageChance", "25.000000"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                "SpecialRewardTable",
                                "GcGenericRewardTableEntry",
                                "Id",
                                "RANDOM_SCAN_A"
                            },
                            REPLACE_TYPE = "ALL",
                            VALUE_CHANGE_TABLE = {
                                {"PercentageChance", "25.000000"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                "SpecialRewardTable",
                                "GcGenericRewardTableEntry",
                                "Id",
                                "R_STARCHART_A",
                                "LabelID",
                                "Harvester"
                            },
                            SEC_COPY = "Base"
                        },
                        {
                            SEC_EDIT = "Base",
                            VALUE_CHANGE_TABLE = {
                                {"LabelID", "Base"},
                                {"Event", "BASE"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                "SpecialRewardTable",
                                "GcGenericRewardTableEntry",
                                "Id",
                                "R_STARCHART_A",
                                "List",
                                "GcRewardTableItem"
                            },
                            SECTION_UP = 1,
                            EXML_FLAGS = "ADDNEWSECTION",
                            ADD_OPTION = "ADDEndSECTION",
                            SEC_ADD_NAMED = "Base"
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                "SpecialRewardTable",
                                "GcGenericRewardTableEntry",
                                "Id",
                                "RANDOM_SCAN_A",
                                "List",
                                "GcRewardTableItem"
                            },
                            SECTION_UP = 1,
                            EXML_FLAGS = "ADDNEWSECTION",
                            ADD_OPTION = "ADDEndSECTION",
                            SEC_ADD_NAMED = "Base"
                        }
                    }
                }
            }
        }
    }
}
