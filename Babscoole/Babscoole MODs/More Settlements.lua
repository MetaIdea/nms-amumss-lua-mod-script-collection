NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "More Settlements",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Allows more settlements to spawn on various planet types",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Settlement_Hub",          "GcBuildingDefinitionData"},
                {"Settlement_Hub_Builders", "GcBuildingDefinitionData"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead",                       "0.200000"},  --original 0
                {"Low",                        "0.200000"},  --original 0.05
                {"Mid",                        "0.200000"},  --original 0.05
                {"Full",                       "0.200000"},  --original 0.05
                {"Weird",                      "0.200000"},  --original 0
                {"HalfWeird",                  "0.200000"},  --original 0
                -- {"Waterworld",                 "0.200000"},  --original 0
                {"GasGiant",                   "0.200000"},  --original 0
                -- {"EnabledWhenPlanetHasNoNPCs", "true"}, --original false
                {"NumOverridesToGenerate",     "1"},    --original 0
              }
            },
          }
        },
      }
    },
  }
}