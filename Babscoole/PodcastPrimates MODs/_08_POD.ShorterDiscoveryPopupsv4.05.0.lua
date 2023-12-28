NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_08_POD.ShorterDiscoveryPopupsv4.05.0.pak",
["MOD_AUTHOR"]    = "PodcastPrimate",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.05",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DiscoverPlanetTotalTime",       "11"},
                                {"DiscoverPlanetMessageTime",     "1"},
                                {"EnableCraftingTree",            "False"},
                                {"DiscoverPlanetMessageTime",     "1"},
                                {"InfoPortalGuideCycleTime",      "5"},
                                {"InfoPortalMilestonesCycleTime", "5"},
                            }
                        },
                    }
                },
            }
        }
    }
}