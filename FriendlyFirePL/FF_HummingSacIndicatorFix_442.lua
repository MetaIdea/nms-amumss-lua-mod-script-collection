----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "HummingSacIndicatorFix"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "442"
METADATA_MOD_DESC       = "Fixed a bug where Humming Sacs had a wrong texture assigned for indicator, causing it to get strechted and appear as low-res arrow in game HUD and compass."



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

FILE_SCANNERICONS = "METADATA\\UI\\HUD\\SCANNERICONS.MBIN"


NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_SCANNERICONS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"RareEgg","GcScannerIcon.xml",},
                            ["VCT"] = {{"Filename","TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.RAREEGG.DDS",},},
                        },
                    },
                },
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------