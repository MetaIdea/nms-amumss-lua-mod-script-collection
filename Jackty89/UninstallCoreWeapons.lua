ModeName = "UninstallCoreWeapons"
Author = "Jackty89"

GCTechnologyTablePath = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
ExtraChanges = false
InputExtraChanges = {ExtraChanges,
[[
    Do you also wish to make the change to  the hyperdrive and pulse drive (also for sentinel ship)?
    Default = N | Current = >> ]] .. (ExtraChanges and "Y" or "N") .. [[ <<
]]}

ExtraChanges = GUIF(InputExtraChanges, 10)

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModeName..".pak",
    ["MOD_DESCRIPTION"] = ModeName,
    ["MOD_AUTHOR"] = Author,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = GCTechnologyTablePath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            --this isnt in base game now leaving it in case HG changes it
                            ["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Core", "False"}
                            }
                        },
                        {
                            --this isnt in base game now leaving it in case HG changes it
                            ["SPECIAL_KEY_WORDS"] = {"ID","SHIPGUN_ROBO"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Core", "False"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","LASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Core", "False"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","SENT_LASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Core", "False"}
                            }
                        }
                    }
                }
            }
        }
    }
}

local ChangesToTechnologyTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
if ExtraChanges then
    ChangesToTechnologyTable[#ChangesToTechnologyTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID","SHIPJUMP1"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Core", "False"}
        }
    }
    ChangesToTechnologyTable[#ChangesToTechnologyTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID","HYPERDRIVE"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Core", "False"}
        }
    }
    ChangesToTechnologyTable[#ChangesToTechnologyTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID","HYPERDRIVE_ROBO"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Core", "False"}
        }
    }
    ChangesToTechnologyTable[#ChangesToTechnologyTable +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID","SHIPJUMP_ROBO"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Core", "False"}
        }
    }
end