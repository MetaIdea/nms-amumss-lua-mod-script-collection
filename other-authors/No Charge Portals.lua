-- Configuration constants
local NMS_VERSION = "5.74"
local MOD_VERSION = "0"

NMS_MOD_DEFINITION_CONTAINER = {
   ["MOD_FILENAME"] = "No Charge Portals " .. NMS_VERSION .. "." .. MOD_VERSION,
   ["MOD_AUTHOR"] = "NilOutput",
   ["LUA_AUTHOR"] = "NilOutput",
   ["MOD_DESCRIPTION"] = "Portals don't require charging. Just enter the glyphs and go!",
   ["NMS_VERSION"] = NMS_VERSION,
   ["MODIFICATIONS"] = {
       {
           ["MBIN_CHANGE_TABLE"] = {
               {
                   ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN",
                   ["MXML_CHANGE_TABLE"] = {
                       {
                           ["VALUE_CHANGE_TABLE"] = {
                               {"AutoCompleteOnStart", "true"} -- Original Value: false
                           }
                       }
                   }
               }
           }
       }
   }
}