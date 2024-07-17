NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Bodie420.BaseBuilding.2.0.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["MOD_VERSION"]     = "2.3",
["MODIFICATIONS"]   =
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
                                {"CanLeaveDialogs",                   "True"}, --Original "False"
                                {"RevealAllTitles",                   "True"}, --Original "False"
                                {"UnlockAllTitles",                   "True"}, --Original "False"
                                {"MultiplePlayerFreightersInASystem", "True"}, --Original "False"
                                {"DisableLimits",                     "True"}, --Original "False"
                                {"DisableBaseBuildingLimits",         "True"}, --Original "False"
                                {"AllowGlobalPartSnapping",           "True"}, --Original "False"
                                {"BaseDownloadTimeout",               "1"},    --Original "40"
                                {"DisableBasePowerRequirements",      "True"}, --Original "False"
                            }
                        },
                    }
                }
            }
        }
    }
}