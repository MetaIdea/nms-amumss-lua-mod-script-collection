NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MoreSettlements.pak",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.48",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Settlement_Hub", "GcBuildingDefinitionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Dead",                       "0.2"},  --original 0
                                {"Low",                        "0.2"},  --original 0.05
                                {"Mid",                        "0.2"},  --original 0.05
                                {"Full",                       "0.2"},  --original 0.05
                                {"Weird",                      "0.2"},  --original 0
                                {"HalfWeird",                  "0.2"},  --original 0
                                {"EnabledWhenPlanetHasNoNPCs", "True"}, --original False
                                {"NumOverridesToGenerate",     "1"},    --original 0
                            }
                        },
                    }
                },
            }
        },
    }
}
