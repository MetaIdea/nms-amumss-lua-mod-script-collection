Author = "Jaggid Edje"
ModName = "FrigateFuel"
ModNameSub = "JE"
BaseDescription = "Adjusts frigate fuel useage maximums to be the same as minimum for all frigate types"
GameVersion = "5.12"

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
                    ["MBIN_FILE_SOURCE"] = "GCFLEETGLOBALS.GLOBAL.MBIN",
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
                                {"Minimum", 4},
								{"Maximum", 4} -- 8
                            }
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats","FrigateClass","DeepSpaceCommon","Stats","FuelBurnRate",}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 6}, -- 8
								{"Maximum", 6} -- 12
                            }
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats","FrigateClass","Normandy","Stats","FuelBurnRate",}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 6}, -- 8
								{"Maximum", 6} -- 12
                            }
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats","FrigateClass","Pirate","Stats","FuelBurnRate",}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Minimum", 6}, -- 8
								{"Maximum", 8} -- 12
                            }
                        },
						
                    }
                }
            }
        }
    }
}