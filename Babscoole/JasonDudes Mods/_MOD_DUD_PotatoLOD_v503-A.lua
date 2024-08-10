NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_DUD_PotatoLOD_v503-A.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\COMBATFRIGATE\ENTITIES\LODCOMBATDATA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\DIPLOMATICFRIGATE\ENTITIES\LODDIPLOMATICDATA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\GHOSTSHIPFRIGATE\ENTITIES\LODGHOSTSHIPDATA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\INDUSTRIALFRIGATE\ENTITIES\LODINDUSTRIALDATA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\LIVINGFRIGATE\ENTITIES\LODLIVINGFRIGATEDATA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\NORMANDYFRIGATE\ENTITIES\LODNORMANDYDATA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\SCIENCEFRIGATE\ENTITIES\LODSCIENCEDATA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\SUPPORTFRIGATE\ENTITIES\LODSUPPORTDATA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\SHARED\ENTITIES\LODDATA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SHARED\ENTITIES\SHAREDLODDISTANCES.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "200"},
                                {"IGNORE", "400"},
                                {"IGNORE", "800"},
                                {"IGNORE", "4300"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\SHARED\ENTITIES\LODDATA.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "200"},
                                {"IGNORE", "400"},
                                {"IGNORE", "600"},
                                {"IGNORE", "5000"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHARED\ENTITIES\SHAREDLODDISTANCES.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "30"},
                                {"IGNORE", "50"},
                                {"IGNORE", "80"},
                                {"IGNORE", "500"},
                            }
                        },
                    },
                },
            },
        },
    },
}