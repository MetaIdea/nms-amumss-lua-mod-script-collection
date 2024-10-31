NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "EngineSpinDoctor.pak",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.22",
["MOD_DESCRIPTION"] = "Change the spin rate for certain engines used in fighters and sailships",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHARED\ENTITIES\SHAREDSPIN_NORMAL.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Template", "TkRotationComponentData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "@*5"} -- Org 0.1
                            }
                        },
                    }
                },
            }
        }
    }
}