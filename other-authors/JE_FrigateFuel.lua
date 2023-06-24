Author = "Jaggid Edje"
ModName = "FrigateFuel"
ModNameSub = "JE"
BaseDescription = "Adjusts frigate fuel useage maximums to be the same as minimum for all frigate types"
GameVersion = "4.36"
-- ModVersion = "v4.36"
FileSource1 = "GCFLEETGLOBALS.GLOBAL.MBIN"




NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = ModNameSub.."_"..ModName..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = FileSource1,
                    ["EXML_CHANGE_TABLE"] = {
                        
						{
                            ["PRECEDING_KEY_WORDS"] = {"FuelBurnRate",}, 
                            ["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
                            {
                                {"Maximum", 8} -- 12
                            }
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats","FrigateClass","Support","Stats","FuelBurnRate",}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Maximum", 2} -- 5
                            }
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats","FrigateClass","DeepSpace","Stats","FuelBurnRate",}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 6},
								{"Maximum", 6} -- 8
                            }
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats","FrigateClass","DeepSpaceCommon","Stats","FuelBurnRate",}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 6}, -- 8
								{"Maximum", 6} -- 12
                            }
                        }
						
                    }
                }
            }
        }
    }
}