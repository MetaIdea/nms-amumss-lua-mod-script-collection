NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]     = "Trade Buy Price Markup Mod X4",
["MOD_AUTHOR"]       = "Phantom7z1",
["LUA_AUTHOR"]       = "Babscoole",
["NMS_VERSION"]      = "7.01",
["MOD_DESCRIPTION"]  = "Changes BaseValue for 159 products in the product table",
["MODIFICATIONS"]    =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
			      {
			      	["SPECIAL_KEY_WORDS"] = {"Free", "GcDifficultyCurrencyCostOptionData"},
			      	["VALUE_CHANGE_TABLE"] =
			      	{
			      		{"TradeBuyPriceMarkupMod", "2.000000"},
			      	}
			      },
			      {
			      	["SPECIAL_KEY_WORDS"] = {"Cheap", "GcDifficultyCurrencyCostOptionData"},
			      	["VALUE_CHANGE_TABLE"] =
			      	{
			      		{"TradeBuyPriceMarkupMod", "2.000000"},
			      	}
			      },
			      {
			      	["SPECIAL_KEY_WORDS"] = {"Normal", "GcDifficultyCurrencyCostOptionData"},
			      	["VALUE_CHANGE_TABLE"] =
			      	{
			      		{"TradeBuyPriceMarkupMod", "24.000000"},
			      	}
			      },
			      {
			      	["SPECIAL_KEY_WORDS"] = {"Expensive", "GcDifficultyCurrencyCostOptionData"},
			      	["VALUE_CHANGE_TABLE"] =
			      	{
			      		{"TradeBuyPriceMarkupMod", "24.000000"},
			      	}
			      },
          },
        },
      },
    },
  },
}
