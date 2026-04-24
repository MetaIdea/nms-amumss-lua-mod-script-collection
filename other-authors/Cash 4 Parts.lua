-- Configuration constants
local NMS_VERSION = "6.34"
local MOD_VERSION = "0"

NMS_MOD_DEFINITION_CONTAINER = {
   ["MOD_FILENAME"] = string.format("Cash 4 Parts %s.%s", NMS_VERSION, MOD_VERSION),
   ["MOD_AUTHOR"] = "NilOutput",
   ["LUA_AUTHOR"] = "NilOutput",
   ["MOD_DESCRIPTION"] = "Bartering is for chumps. You have money, so why not use it? Buy bones and Corvette parts with your hard-earned units.",
   ["NMS_VERSION"] = NMS_VERSION,
   ["MODIFICATIONS"] = {
       {
           ["MBIN_CHANGE_TABLE"] = {
               {
                   ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/DEFAULTREALITY.MBIN",
                   ["MXML_CHANGE_TABLE"] = {
                       {
                           ["SPECIAL_KEY_WORDS"] = {"BoneShop", "GcTradeData"},
                           ["VALUE_CHANGE_TABLE"] = {
                               {"UseBarterForBuy", "false"}
                           }
                       },
                       {
                           ["SPECIAL_KEY_WORDS"] = {"BiggsBarterShop", "GcTradeData"},
                           ["VALUE_CHANGE_TABLE"] = {
                               {"UseBarterForBuy", "false"}
                           }
                       }
                   }
               }
           }
       }
   }
}