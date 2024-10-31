NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "More Suit Terminal Upgrades.pak",
["MOD_AUTHOR"]      = "Reikokuu & Babscoole",
["MOD_DESCRIPTION"] = "Lets you buy more than one suit upgrade at space stations, space anomaly, and outlaw space stations",
["NMS_VERSION"]     = "5.22",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {-- files for suit terminal on legacy and B stations
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\CRYOCHAMBER\ENTITIES\CRYOCHAMBERINTERACTION.ENTITY.MBIN",
                        "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\SHOPS\SUITSHOP_SUITSLOTPOINTB\ENTITIES\SUITSLOTPOINTTYPEB.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {-- makes it possible to interact with suit terminal more than once
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RepeatInteraction",        "True"},
                                {"ReseedAfterRewardSuccess", "True"},
                            },
                        },
                        {-- removes backpack hologram close animation after buying an upgrade
                            ["SPECIAL_KEY_WORDS"] = {"StateID", "INTERACTOPTION"},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
            }
        },
    }
}