NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NoFreighterTechRoomNPC.pak",
["MOD_AUTHOR"]    = "lMonk",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCFREIGHTERBASEGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RoomID", "FRE_ROOM_TECH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SquadronPilot",  "0"},
                                {"FrigateCaptain", "0"},
                                {"WorkerTech",     "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}