
--[[ Summery Description:
This will reduce the cost of portals by half...
]]--


NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "B_Half_Charge_Portal.pak",
    ["MOD_AUTHOR"]      = "Lenni", -- Altered by Copper B.
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = {"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN",},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {               -- Presumably, this will reduce the cost of portals by half... i don't really know if that's what this does...
                                            -- Testing would be needed... 
                                { "MinRandAmount",  "50" }, --Original "0"
                                { "MaxRandAmount",  "50" }, --Original "0"
                            }
                        }
                    }
                }
            }
        }
    }    
}    
