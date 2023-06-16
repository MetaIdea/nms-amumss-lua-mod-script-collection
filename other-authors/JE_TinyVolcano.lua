Author = "Jaggid Edje"
ModName = "TinyVolcano"
ModNameSub = "__JE"
BaseDescription = "Makes Volcanos very small so they do not block POI's"
GameVersion = "4.34"
-- ModVersion = "v4.34"
FileSource1 = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL.MBIN"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = ModNameSub.."_"..ModName..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["NMS_VERSION"]        = GameVersion,
	["MODIFICATIONS"]             =
    {
        {
            ["MBIN_CHANGE_TABLE"]     =
            {
                {
                    ["MBIN_FILE_SOURCE"]     = FileSource1,
                    ["EXML_CHANGE_TABLE"]     =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							-- ["REPLACE_TYPE"] 		= "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"MaxScale",            "0.1"},     -- Original "2"
                                {"MaxScaleY",            "0.1"},    -- Original "1"
                            }
                        }
                    }
                }
            }
        }
    }    
}