----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "HorrorsDropStuffNow"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "TEST"
METADATA_MOD_DESC       = "Biological Horrors and drop some Living Slime and Mordite when killed"



----------------------------------------------------------------------------------------------------
-- mod data
----------------------------------------------------------------------------------------------------

FILE_CREATUREGLOBALS =      "GCCREATUREGLOBALS.MBIN"

PROPERTY_DROP_BIOHORROR =
[[
<Property value="GcCreatureSubstanceList.xml">
    <Property name="CreatureType" value="FIEND" />
    <Property name="Item" value="SPACEGUNK4" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

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
                    ["MBIN_FILE_SOURCE"] = FILE_CREATUREGLOBALS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "KillingProducts",
                            ["ADD"] = PROPERTY_DROP_BIOHORROR,
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