NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "MegaTerrainManipulator.pak",
    ["MOD_DESCRIPTION"]    = "Standalone Terrain Manipulator mod. ",
    ["MOD_AUTHOR"]        = "Sponchua",
    ["LUA_AUTHOR"]        = "DeathWrench",
    ["NMS_VERSION"]        = "3.8",
    ["MODIFICATIONS"]    = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCTERRAINGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TerrainEditBeamMaxRange", "1000000"},
                                {"TerrainEditsNormalCostFactor", "0"},
                                {"TerrainEditsSurvivalCostFactor", "0"},
                            }
                        },
}}}}}}