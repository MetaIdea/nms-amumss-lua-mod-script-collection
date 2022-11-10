ModName 								= "Free Ship Summoning "
Author										= "AcThPaU"
LuaAuthor									= "EchoTree"
ModDescription						=	"Removes Costs to Summon Ships"
GameVersion							=	"v4.06.0"
Build											= ".1"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 			= Author.."'s "..ModName..GameVersion..Build..".pak",
    ["MOD_DESCRIPTION"]		= ModDescription.."Compatible with NMS"..GameVersion,
    ["MOD_AUTHOR"]				= Author,
    ["LUA_AUTHOR"]					= LuaAuthor,
    ["NMS_VERSION"]				= GameVersion,
	["MODIFICATIONS"]			=
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{		--														GamePlay												1				--
                    ["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
						{
							["PRECEDING_KEY_WORDS"] = "ShipSummoningFuelCostMultipliers",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Low", "0"},
								{"Normal", "0"},
								{"High", "0"}
							}
						},
                    }
				},
			}
		},
	}
}