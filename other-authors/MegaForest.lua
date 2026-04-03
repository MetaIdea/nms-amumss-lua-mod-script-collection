-- ============================================================
-- C-Verse MegaForest Dense Forest
-- Increases forest patch size and vegetation density on
-- lush, paradise, jungle and rainforest planets.
--
-- Created in collaboration with Claude (Anthropic AI)
-- ============================================================

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "MegaForest.pak",
    ["MOD_DESCRIPTION"] = "Massive dense forests on lush-type planets",
    ["MOD_AUTHOR"]      = "C-Verse",
    ["NMS_VERSION"]     = "5.5",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\PLACEMENTVALUES\SPAWNDENSITYLIST.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        -- FOREST is at _index="14"
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DensityList"},
                            ["SECTION_ACTIVE"]      = {14},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"PatchSize",   "2000"},
                                {"RegionScale", "25"},
                            }
                        },
                        -- JUNGLEGRASS is at _index="43"
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DensityList"},
                            ["SECTION_ACTIVE"]      = {43},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"PatchSize",   "60"},
                                {"RegionScale", "15"},
                            }
                        },
                        -- GRASS is at _index="13"
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DensityList"},
                            ["SECTION_ACTIVE"]      = {13},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"RegionScale", "10"},
                            }
                        },
                        -- FLORACLUMP is at _index="25"
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DensityList"},
                            ["SECTION_ACTIVE"]      = {25},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"PatchSize",   "15"},
                                {"RegionScale", "12"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLACEMENTGLOBALS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        -- Increase max density so trees stand closer together
                        {
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MaxDensity", "0.9"},
                            }
                        },
                    }
                },
            }
        },
    }
}