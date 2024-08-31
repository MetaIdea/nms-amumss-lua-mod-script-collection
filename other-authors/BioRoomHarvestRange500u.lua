Range = 500;

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BioRoomHarvestRange"..Range.."U.pak",
["MOD_AUTHOR"]      = "KuroPeach",
["LUA_AUTHOR"]      = "KuroPeach",
["NMS_VERSION"]     = "5.0.5",
["MOD_DESCRIPTION"] = "",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM\ENTITIES\INTERACTION.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StateID","HARVEST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius",Range}
                            }
                        }
                    }
                }
            }
        }
    }
}