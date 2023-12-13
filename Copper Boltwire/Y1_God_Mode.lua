
--[[ Summery Description:
It's better if you read the comments below.

But to make it simple: You can't die...
]]--

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Y1_God_Mode.pak",
["MOD_AUTHOR"]				= "Mjjstral", --Commented by Copper
["NMS_VERSION"]				= "4.46",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GodMode",						"True"}, 	-- Original "False". Speaks for it self, no?
                                --{"TakeNoDamage",                "False"},   -- Original "False". I assume this turns on/off the effect of taking damage?
								--{"AlwaysHaveFocus",				"True"}, 	-- Original "False". No damn clue what this is
								--{"MapWarpCheckIgnoreFuel",		"True"}, 	-- Original "False".
								--{"MapWarpCheckIgnoreDrive",		"True"}, 	-- Original "False".
								--{"EverythingIsFree",			"True"}, 	-- Original "False".
								--{"EverythingIsKnown",			"True"}, 	-- Original "False". Lets NOT enable this... ruins the fun.
								{"EverythingIsStar",			"True"}, 	-- Original "False". Sell high, buy low
								{"IgnoreMissionRank",			"True"}, 	-- Original "False".
                                {"InfiniteStamina",             "True"},    -- Original "False". Run Forest, RUN!
                                
							}
						}
					} --8 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE