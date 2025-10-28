MOD_FILENAME	= "Buyable Relics"
MOD_AUTHOR		= "ShadowHybriX"
LUA_AUTHOR		= "ShadowHybriX"
MOD_DESCRIPTION = "Makes all Relics buyable instead of Bartering for them."
NMS_VERSION		= "_6.10"
MOD_VERSION		= "_1.1"
--MOD_BATCHNAME	= ""
--===============================================================================
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= MOD_FILENAME..NMS_VERSION..MOD_VERSION..".pak",
["MOD_AUTHOR"]				= MOD_AUTHOR,
["AMUMSS_SUPPRESS_MSG"] 	= "MULTIPLE_STATEMENTS, UNUSED_VARIABLE, MIXED_TABLE",
["LUA_AUTHOR"]				= LUA_AUTHOR,
["MOD_DESCRIPTION"]			= MOD_DESCRIPTION,
["NMS_VERSION"]				= NMS_VERSION,
["EXML_CREATE"] 			= "TRUE",
--["MOD_BATCHNAME"] 			= MOD_BATCHNAME,
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"]	=
			{
				{ -- DEFAULT REALITY --
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\DEFAULTREALITY.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"BoneShop", "GcTradeData"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BarterPriceMultiplier",	"1"},	-- 2.500000
								{"UseBarterForBuy",			"false"},	-- true
								
							}
						},
					}
				},
			}
		},
	}
}