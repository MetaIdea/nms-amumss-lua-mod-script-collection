NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Cup0.pak",
["MOD_AUTHOR"]    = "CMK",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.12",
["DESCRIPTION"]   = "Save by cup",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\ENTITIES\DECORATIONNOCOLLIDE.ENTITY.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\CUP0\ENTITIES\CUP0.ENTITY.MBIN", "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SAVEPOINT\ENTITIES\SAVEPOINT.ENTITY.MBIN",
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Template", "GcSimpleInteractionComponentData.xml"},
                            ["SECTION_UP"] = 1,
                            ["SEC_SAVE_TO"] = "GCSimpleGet",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Template", "GcTriggerActionComponentData.xml"},
                            ["SECTION_UP"] = 1,
                            ["SEC_SAVE_TO"] = "GCTriggerGet",
                        },
                        {
                            ["SEC_EMPTY"] = "GetCombo",
                        },
                        {
                            ["SEC_EDIT"] = "GetCombo",
                            ["SEC_ADD_NAMED"] = "GCTriggerGet",
                        },
                        {
                            ["SEC_EDIT"] = "GetCombo",
                            ["SEC_ADD_NAMED"] = "GCSimpleGet",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\CUP0\ENTITIES\CUP0.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "GetCombo",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\CUP0.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Cup0", "Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\CUP0\ENTITIES\CUP0.ENTITY.MBIN"},
                            }
                        },
                    }
                },
            }
        }
    }
}