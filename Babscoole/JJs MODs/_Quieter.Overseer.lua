NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Quieter.Overseer.V.1.3.pak",
["MOD_AUTHOR"]    = "JJhookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.71",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\BACK_SECTION_ORB.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "REFStationOrbEyeVFX", "Name", "SCENEGRAPH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "ODELS\EFFECTS\STATION\STATIONORBEYE.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "OrbData", "Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "ODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\BACK_SECTION_ORB\ENTITIES\ORBDATA.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TopVFX", "Name", "SCENEGRAPH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "ODELS\EFFECTS\STATION\STATIONORBTOP.SCENE.MBIN"},
                            }
                        },
                    }
                },
            }
        }
    },
}