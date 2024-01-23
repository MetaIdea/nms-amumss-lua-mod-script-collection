NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]             = "Test_WHERE_IN_SUBSECTION.pak",
["MOD_DESCRIPTION"]            = "",
["MOD_AUTHOR"]                = "Wbertro",
["NMS_VERSION"]                = "",
["MODIFICATIONS"]             = 
    {
        {
            ["MBIN_CHANGE_TABLE"]     = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]     = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]     = 
                    {
                        {
                            ["PRECEDING_FIRST"]    = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"PoliceSpawns",},
                            ["SPECIAL_KEY_WORDS"] = {"AIShipRole","Standard",},
                            ["SECTION_UP"] = 1,
                            ["WHERE_IN_SUBSECTION"] =  
                            {  
                                {"Count","Vector2f.xml",},  
                            },
                            ["REPLACE_TYPE"]        = "ALL",                            
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"x", "8"},
                                {"y", "40"},
                            },
                        },
                    },
                },
                { --testing multiple 'OR' conditions
                  ["MBIN_FILE_SOURCE"] = {
                      "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_SCIENTIFIC.SCENE.MBIN",
                      },
                  ["EXML_CHANGE_TABLE"] = {
                    {
                      --if anyone of these is TRUE than the section is chosen
                      ["WHERE_IN_SUBSECTION"] =
                      {
                        {"Name","NPCHIREABLE_"},
                        {"Name","NPCHIREABLE_1"},
                        {"Name","NPCHIREABLE_2"},
                        {"Name","NPCHIREABLE_3"},
                        {"Name","NPCHIREABLE_4"},
                        {"Name","NPCHIREABLE_5"},
                        {"Name","NPCHIREABLE_6"},
                        {"Name","NPCHIREABLE_7"},
                        {"Name","NPCHIREABLE_8"},
                        {"Name","NPCHIREABLE_9"},
                        {"Name","NPCHIREABLE_10"},
                        {"Name","NPCHIREABLE_11"},
                        {"Name","NPCHIREABLE_12"},
                        {"Name","NPCHIREABLE_13"},
                        {"Name","NPCHIREABLE_14"},
                      },
                      ["REMOVE"] = "SECTION",
                      ["REPLACE_TYPE"] = "ALL",
                    },
                  },
                },

            },
        },
    }, --20 global replacements
}