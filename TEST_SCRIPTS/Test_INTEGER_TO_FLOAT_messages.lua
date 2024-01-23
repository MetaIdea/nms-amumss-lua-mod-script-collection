LOD_0_DISTANCE = 1000

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] = "TestINTEGER_TO_FLOAT_messages.pak",
["MOD_AUTHOR"] = "Ignacio/Wbertro",
["NMS_VERSION"] = "4.45",
MOD_DESCRIPTION = "Testing of INTEGER_TO_FLOAT messages",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                          COMMENT = [[THESE ARE NOT MATH_OPERATIONS
                             the values are calculated during the script loading and the resulting floats are used in the script
                             making AMUMSS issue a WARNING (not a NOTICE like below)
                             look at TOOLS\ModScriptCheck\ObjectsFromSpace.serial.lua to see what AMUMSS sees of your script]],
                          ["REPLACE_TYPE"] = "ALL",
                          ["INTEGER_TO_FLOAT"] = "PRESERVE", -- this is IGMORED in code
                          ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetLodSwitch0", LOD_0_DISTANCE},               -- no WARNING as 1000 == 1000.0
                                {"PlanetLodSwitch0Elevation", LOD_0_DISTANCE},      -- no WARNING as 1000 == 1000.0
                                {"PlanetLodSwitch1", LOD_0_DISTANCE * (2^1)},       -- no WARNING as 2000 == 2000.0
                                {"PlanetLodSwitch2", LOD_0_DISTANCE * (2^2)},       -- no WARNING as 4000 == 4000.0
                                {"PlanetLodSwitch3", LOD_0_DISTANCE * (2^3) + 0.1}, -- added + 0.1 to force the WARNING to show
                            },
                        },
                        {  
                           COMMENT = [[THIS uses a MATH_OPERATION and, without INTEGER_TO_FLOAT, the NOTICE message appears
                             NOTE: altered value and operation to create a float using ^ operator]],
                           ["REPLACE_TYPE"] = "ALL",
                           -- ["INTEGER_TO_FLOAT"] = "PRESERVE",
                           ["MATH_OPERATION"] = "^F:PlanetLodSwitch3", -- using ^
                           ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetObjectSwitch",          0.333},
                            },
                        },
                        {
                           COMMENT = [[THIS uses MATH_OPERATION and INTEGER_TO_FLOAT works, no NOTICE appears
                             NOTE: altered value and operation to create a float using  ^ operator]],
                           ["REPLACE_TYPE"] = "ALL",
                           ["INTEGER_TO_FLOAT"] = "PRESERVE", -- this prevents the NOTICE message
                           ["MATH_OPERATION"] = "^F:PlanetLodSwitch3", -- using ^
                           ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetObjectSwitch",          1.333},
                            },
                        },
                    },
                },
            },
        },
    }, --14 global replacements
}
