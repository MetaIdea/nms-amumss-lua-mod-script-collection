NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]       = "_01_POD.RandomStarterEquipmentv4.05.0.pak",
["MOD_DESCRIPTION"]    = "Start Game With Random Ship and Multitool",
["MOD_AUTHOR"]         = "PodcastPrimate",
["LUA Fix and Update"] = "Babscoole",
["NMS_VERSION"]        = "4.05",
["MODIFICATIONS"]      =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                              ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThirdPersonIsDefaultCameraForPlayer", "False"}, -- Original "True"
                                {"SkipIntro",                           "True"},  -- Original "False"
                                {"SkipLogos",                           "True"},  -- Original "False"
                                {"SkipPlanetDiscoverOnBoot",            "True"},  -- Original "False"
                                {"ForceInitialShip",                    "False"}, -- Original "True"
                                {"ForceInitialWeapon",                  "False"}, -- Original "True"
                            }
                        },
                    }
                },
            },
        },
    }
}
