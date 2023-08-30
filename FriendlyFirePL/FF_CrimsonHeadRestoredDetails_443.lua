----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "CrimsonHeadRestoredDetails"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "443"
METADATA_MOD_DESC       = "This mod restores the Painted Details section for Construct Head: Crimson."



----------------------------------------------------------------------------------------------------
-- mod data
----------------------------------------------------------------------------------------------------

FILE_CUSTOMIZERUI = "METADATA\\UI\\CHARACTERCUSTOMISATIONUIDATA.MBIN"

PROPERTY_DETAILS_SECTION =
[[
<Property value="GcCustomisationTextureGroup.xml">
    <Property name="GroupID" value="" />
    <Property name="Title" value="UI_TIP_HEAD_MARK_BUI_NAME" />
    <Property name="TextureOptionGroup" value="HEAD_BUI" />
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
                    ["MBIN_FILE_SOURCE"] = FILE_CUSTOMIZERUI,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"DescriptorOption","HEAD_ASTBOT1","TextureOptionGroup","EYES_BUILDER",},
                            ["ADD"] = PROPERTY_DETAILS_SECTION,
                            ["ADD_OPTION"]  = "ADDafterSECTION",
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