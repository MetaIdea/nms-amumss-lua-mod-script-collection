-- Refiners Limits --
REFINER_SMALL  = "0" -- 0 - Original values on the right
REFINER_MEDIUM = "0" -- 3 - Unlimited = 0
REFINER_LARGE  = "0" -- 2
---------------------
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "More Refiners.pak",
["MOD_AUTHOR"]      = "Reikokuu & Babscoole",
["MOD_DESCRIPTION"] = "Removes the refiners building limits",
["NMS_VERSION"]     = "4.52",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BUILD_REFINER1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionLimit", REFINER_SMALL},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BUILD_REFINER2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionLimit", REFINER_MEDIUM},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BUILD_REFINER3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionLimit", REFINER_LARGE},
                            },
                        },
                    }
                },
            }
        },
    }
}