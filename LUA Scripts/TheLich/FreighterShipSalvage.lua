REF_TO_REMOVE = {"RefLargeCrate9", "RefPallet13", "RefLargeCrate49", "RefLargeCrate50", "RefLargeCrate51", "RefLargeCrate52", "RefLargeCrate54",
                 "RefLargeCrate55", "RefLargeCrate56", "RefLargeCrate46", "RefLargeCrate45", "RefLargeCrate44", "RefLargeCrate43", "RefLargeCrate42",
                 "RefLargeCrate41", "RefPallet11", "RefLargeCrate40", "RefPallet16", "RefLargeCrate62", "RefLargeCrate63", "RefLargeCrate64",
                 "RefPallet17", "RefPallet18", "RefPallet19", "RefPallet20"}

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]            = "FreighterShipSalvage.pak",
["MOD_DESCRIPTION"]         = "",
["MOD_AUTHOR"]              = "TheLich",
["NMS_VERSION"]             = "3.75",
["MODIFICATIONS"]           = 
    {
        {
            ["PAK_FILE_SOURCE"]     = "NMSARC.4C482859.pak",
            ["MBIN_CHANGE_TABLE"]   = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARLAYOUT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]     = {"Name", "RefLargeCrate8"},
                            ["VALUE_CHANGE_TABLE"]    = 
                            {
                                {"Name", "RefSalvageTerminal1"},
                                {"TransX", 22.67009975},
                                {"TransZ", 8.323637},
                                {"RotY", 180},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIPSALVAGETERMINAL.SCENE.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]     = {"NameHash", "2851124114"},
                            ["REMOVE"]    = "LINE"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]     = {"Name", "RefLargeCrate47"},
                            ["VALUE_CHANGE_TABLE"]    = 
                            {
                                {"Name", "RefSalvageTerminal2"},
                                {"TransX", -22.67009975},
                                {"TransY", -4.312253},
                                {"TransZ", 8.323637},
                                {"RotY", 180},
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIPSALVAGETERMINAL.SCENE.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]     = {"NameHash", "269793516"},
                            ["REMOVE"]    = "LINE"
                        },
                    }
                },
            }
        }
    }   
}

local Change_Table_Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i=1,#REF_TO_REMOVE do
  local value = REF_TO_REMOVE[i]
  -- local word = "Table"
  local temp_table = 
            {
              ["SPECIAL_KEY_WORDS"]     = {"Name", value},
              ["REMOVE"]                = "SECTION"
            }
  Change_Table_Ref[#Change_Table_Ref + 1] = temp_table
end

--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE