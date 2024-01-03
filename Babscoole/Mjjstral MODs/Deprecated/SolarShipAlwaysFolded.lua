NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "SolarShipAlwaysFolded.pak",
["MOD_AUTHOR"]      = "Mjstral",
["MOD_MAINTENANCE"] = "Babscoole",
["NMS_VERSION"]     = "3.89",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_SHARED\ENTITIES\ROOTJNT.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "TAKEOFF"},
                            ["VALUE_CHANGE_TABLE"] = {{"Filename", ""},}
                        },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Anim", "LANDING"},
                            -- ["VALUE_CHANGE_TABLE"] = {{"Filename", ""},}
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "LOWALTITUDE"},
                            ["VALUE_CHANGE_TABLE"] = {{"Filename", ""},}
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "TURNLEFT"},
                            ["VALUE_CHANGE_TABLE"] = {{"Filename", ""},}
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "TURNRIGHT"},
                            ["VALUE_CHANGE_TABLE"] = {{"Filename", ""},}
                        },
                    }
                }
            }
        }
    }
}
