Author = "Prof Horatio Hafnaugels"
LUAAuthor = "Droseran"
ModName = "Fine LOD - Example of VALUE_MATCH Patterns"
BaseDescription = "EXTRACT from: Ground textures fix + water level fix + spawn delay reduction + farther LOD switch"
GameVersion = "3.67"

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = ModName.." for NMS "..GameVersion..".pak",
    ["MOD_DESCRIPTION"] = BaseDescription,
    ["MOD_AUTHOR"]      = Author,
    ["LUA_AUTHOR"] 	    = LUAAuthor,
    ["NMS_VERSION"]     = GameVersion,
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\BOOTLOGOPC.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            -- ["VALUE_MATCH"] = "TEXTURES/UI/LOADING/MIDDLEWAREPAIR.DDS",
                            ["VALUE_MATCH"] = "{REPAIR%.DDS$}",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value",""}
                            }
                        },
                        {
                            ["MATH_OPERATION"] = "*",
                            ["LINE_OFFSET"] = "+1",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"DisplayTime", 0.3}
                            }
                        },
                        {
                            ["MATH_OPERATION"] = "*",
                            ["LINE_OFFSET"] = "+2",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"DisplayTime", 0}
                            }
                        },
                        {
                            ["MATH_OPERATION"] = "*",
                            ["LINE_OFFSET"] = "+3",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"DisplayTime", 0}
                            }
                        },
                        {
                            ["MATH_OPERATION"] = "*",
                            ["LINE_OFFSET"] = "+4",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"DisplayTime", 0}
                            }
                        }
                    }
                }
            }
        }
    }
}
--NOTE: ANYTHING NOT referenced in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED