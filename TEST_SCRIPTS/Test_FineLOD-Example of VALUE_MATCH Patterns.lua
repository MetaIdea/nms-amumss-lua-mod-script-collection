Author = "Prof Horatio Hafnaugels"
LUAAuthor = "Droseran"
ModName = "Fine LOD - Example of VALUE_MATCH Patterns"
ModNameSub = ""
BaseDescription = "EXTRACT from: Ground textures fix + water level fix + spawn delay reduction + farther LOD switch"
GameVersion = "3.67"
ModVersion = ""

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = ModName.." for NMS "..GameVersion..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["LUA_AUTHOR"] 	= LUAAuthor,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"]    = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\BOOTLOGOPC.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            COMMENT = [[Using pattern to match the line
                            with "TEXTURES/UI/LOADING/MIDDLEWAREPAIR.DDS"]],
                            ["VALUE_MATCH"] = "{.-REPAIR%.DDS$}", -- use of a regular expression (lua pattern)
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Value",""}
                            }
                        },
                        {
                            COMMENT = [[NOTICE: integer value is PRESERVEd]],
                            ["MATH_OPERATION"] = "*",
                            ["LINE_OFFSET"] = "+1",
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
    }	--5 global replacements
}