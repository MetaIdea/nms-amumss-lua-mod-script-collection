DIVISOR = "2"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "TinyCreatures-All.pak",
["MOD_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.22",
["MOD_DESCRIPTION"]         = "Reduces size for all creature types by ~50%",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["MATH_OPERATION"] = "/",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", DIVISOR},
                                {"MaxScale", DIVISOR},
                            },
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["MATH_OPERATION"] = "/",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxCreatureSize", DIVISOR},
                                {"MinRideSize",     "1"},
                            },
                        },
                    }
                },
            }
        },
    },
}