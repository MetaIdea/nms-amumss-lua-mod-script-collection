NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "StartWithTardis.pak",
["MOD_AUTHOR"]    = "RemingtonRyder",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.47",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Invalid",    "GcDifficultySettingsData.xml"},
                                {"Custom",     "GcDifficultySettingsData.xml"},
                                {"Normal",     "GcDifficultySettingsData.xml"},
                                {"Relaxed",    "GcDifficultySettingsData.xml"},
                                {"Survival",   "GcDifficultySettingsData.xml"},
                                {"Permadeath", "GcDifficultySettingsData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TutorialEnabled", "False"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DEFAULTSAVEDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CurrentShip", "GcResourceElement.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CurrentShip", "GcResourceElement.xml", "Seed", "GcSeed.xml"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Seed", "69"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "MECH_BOOST"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
      <Property value="NMSString0x10.xml">
        <Property name="Value" value="T_SHIP_GREEN" />
      </Property>
]]
                        },
                    }
                },
            }
        }
    }
}