NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME = "Shops Sell Only S Class",
    MOD_DESCRIPTION = [[ 
    The station tech specialists and Iteration: Ares have been profiteering off
    a glut in the market of cheap upgrade modules. This mod takes those cheap 
    modules and throws them in the trash heap. Yes, even Ares who has, up to now,
    been mostly useless since nobody wants his junk now sells exclusively class
    S modules.
]],
    MOD_AUTHOR = "Bladehawke",
    NMS_VERSION = "6.0.4",
    MODIFICATIONS = {
        {
            MBIN_CHANGE_TABLE = {
                {
                    MBIN_FILE_SOURCE = [[METADATA/REALITY/DEFAULTREALITY.MBIN]],
                    MXML_CHANGE_TABLE = {
                        {
                            SPECIAL_KEY_WORDS = {"ShipTechSpecialist", "GcTradeData"},
                            PRECEDING_KEY_WORDS = {"AlwaysPresentProducts"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VALUE_CHANGE_TABLE = {
                                {"AlwaysPresentProducts", "MakeSClass()", "", nil}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"ShipTechSpecialist", "GcTradeData"},
                            PRECEDING_KEY_WORDS = {"OptionalProducts"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VALUE_CHANGE_TABLE = {
                                {"OptionalProducts", "MakeSClass()", "", nil}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"SuitTechSpecialist", "GcTradeData"},
                            PRECEDING_KEY_WORDS = {"AlwaysPresentProducts"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VALUE_CHANGE_TABLE = {
                                {"AlwaysPresentProducts", "MakeSClass()", "", nil}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"SuitTechSpecialist", "GcTradeData"},
                            PRECEDING_KEY_WORDS = {"OptionalProducts"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VALUE_CHANGE_TABLE = {
                                {"OptionalProducts", "MakeSClass()", "", nil}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"WeapTechSpecialist", "GcTradeData"},
                            PRECEDING_KEY_WORDS = {"AlwaysPresentProducts"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VALUE_CHANGE_TABLE = {
                                {"AlwaysPresentProducts", "MakeSClass()", "", nil}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"WeapTechSpecialist", "GcTradeData"},
                            PRECEDING_KEY_WORDS = {"OptionalProducts"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VALUE_CHANGE_TABLE = {
                                {"OptionalProducts", "MakeSClass()", "", nil}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"VehicleTechSpecialist", "GcTradeData"},
                            PRECEDING_KEY_WORDS = {"OptionalProducts"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VALUE_CHANGE_TABLE = {
                                {"OptionalProducts", "MakeSClass()", "", nil}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"NexusTechSpecialist", "GcTradeData"},
                            PRECEDING_KEY_WORDS = {"AlwaysPresentProducts"},
                            REPLACE_TYPE = "ALLINSECTION",
                            VALUE_CHANGE_TABLE = {
                                {"AlwaysPresentProducts", "MakeSClass()", "", nil}
                            }
                        }
                    }
                }
            }
        }
    }
}

-- luacheck: ignore unused
function MakeSClass(_property, CurVal, _NamedValue, _fourth)
    local retval

    retval = CurVal:gsub("%d", "4")

    if CurVal:match("U_UNW%d") then
        retval = CurVal:gsub("%d", "3")
    end
    if CurVal:match("U_RAD%d") then
        retval = CurVal:gsub("%d", "3")
    end
    if CurVal:match("U_TOX%d") then
        retval = CurVal:gsub("%d", "3")
    end
    if CurVal:match("U_ENERGY%d") then
        retval = CurVal:gsub("%d", "3")
    end
    if CurVal:match("U_COLDPROT%d") then
        retval = CurVal:gsub("%d", "3")
    end
    if CurVal:match("U_HOTPROT%d") then
        retval = CurVal:gsub("%d", "3")
    end


    return retval
end