ModName = "Example of VALUE_MATCH Patterns"

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = ModName..".pak",
    ["MOD_DESCRIPTION"] = ModName,
    ["MOD_AUTHOR"]      = "Wbertro",
    ["LUA_AUTHOR"] 	    = "Wbertro",
    ["NMS_VERSION"]     = "All",
    ["MODIFICATIONS"]    = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            COMMENT = [[Angle brackets <> are used to mark the VALUE_MATCH as a LUA regular expression
                                      This will match any value starting with DE_GEM_R_x for at least one where x is anything
                                      Notice the ^ to anchor to the beginning and the .+]],
                            ["VALUE_MATCH"] = "<^DE_GEM_R_.+>",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Id","MyNewId"},
                            }
                        },
                        {
                            COMMENT = [[Angle brackets <> are used to mark the VALUE_MATCH as a LUA regular expression
                                      This will match any value starting with SEC_STARMAPx for at least one where x is a number
                                      Notice the ^ to anchor to the beginning and the %d+]],
                            ["VALUE_MATCH"] = "<^SEC_STARMAP%d+>",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Id","MyNewId"},
                            }
                        },
                        {
                            COMMENT = [[Angle brackets <> are used to mark VALUE_MATCH as a LUA regular expression
                                      This will match any value ending in REPAIR.DDS (None will found here)
                                      Notice the %. to escape the dot and $ to anchor to the end]],
                            -- ["VALUE_MATCH"] = "TEXTURES/UI/LOADING/MIDDLEWAREPAIR.DDS",
                            ["VALUE_MATCH"] = "<REPAIR%.DDS$>",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value",""}
                            }
                        },
                        {
                            COMMENT = [[Angle brackets <> are used to mark VALUE_MATCH as a LUA regular expression
                                      This will match any value ending in POI.DDS
                                      Notice the %. to escape the dot and $ to anchor to the end]],
                            -- ["VALUE_MATCH"] = "TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.POI.DDS",
                            ["VALUE_MATCH"] = "<POI%.DDS$>",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Filename",""}
                            }
                        },
                    }
                }
            }
        }
    }
}