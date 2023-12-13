
--[[ Summery Description:
While I have personally not noticed much of a change to this.
This mod is meant to change the distance at which you can interact with the ship... Like entering it.
Or maybe it's how far i can go from the ship before i can't interact with inventory of the ship cause on that note, i can go quite far.
So maybe that's what it does?
Yeah yeah yeah... I added a mod I wasn't fully aware of what does... Bite me!
]]--

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "B_Ship_Range_Increase.pak",
    ["MOD_AUTHOR"]      = "Mjjstral",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"ShipInteractRadius",  "500"} --Original "50"
                            }
                        }
                    }
                }
            }
        }
    }
}