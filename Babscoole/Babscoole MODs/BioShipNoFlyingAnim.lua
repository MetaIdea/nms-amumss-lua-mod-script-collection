NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BioShipNoFlyingAnim.pak",
["MOD_AUTHOR"]      = "Babscoole & Mjstral",
["NMS_VERSION"]     = "4.23",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\COCKPIT\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "FLYINGIDLE"},
                            ["VALUE_CHANGE_TABLE"] = {{"Filename", ""},}
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "IDLE"},
                            ["VALUE_CHANGE_TABLE"] = {{"Filename", ""},}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\ENGINE\ENGINE_A\ENTITIES\ENGINEA.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "FLYINGIDLE"},
                            ["VALUE_CHANGE_TABLE"] = {{"Filename", ""},}
                        },
                    }
                },
            }
        }
    }
}
