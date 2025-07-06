----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ModCatalogueFramework"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "558"
METADATA_MOD_DESC       = ""



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- files affected by the mod
local FILE_METADATA_STORIESTABLE = "METADATA\REALITY\TABLES\STORIESTABLE.MBIN"

local PROPERTY_MODDING_SECTION =
[[
<Property name="Robots" value="GcStoryCategory">
    <Property name="CategoryID" value="UI_MODCATALOGUE_CATEGORY" />
    <Property name="CategoryIDUpper" value="UI_MODCATALOGUE_UPPER" />
    <Property name="IconOn" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.CRAFTEDPROD.ON.DDS" />
        <Property name="ResHandle" value="GcResource">
            <Property name="ResourceID" value="0" />
        </Property>
    </Property>
    <Property name="IconOff" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.CRAFTEDPROD.OFF.DDS" />
        <Property name="ResHandle" value="GcResource">
            <Property name="ResourceID" value="0" />
        </Property>
    </Property>
    <Property name="Pages">

        <Property name="Pages" value="GcStoryPage">
            <Property name="InteractionType" value="GcInteractionType">
                <Property name="InteractionType" value="None" />
            </Property>
            <Property name="Stat" value="DIST_WALKED" />
            <Property name="StatIsBitmask" value="false" />
            <Property name="Icon" value="TkTextureResource">
                <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/WIKI/SURVIVALBASICS.DDS" />
                <Property name="ResHandle" value="GcResource">
                    <Property name="ResourceID" value="0" />
                </Property>
            </Property>
            <Property name="ID" value="UI_MODCATALOGUE_PAGE0_ID" />
            <Property name="Entries">
                <Property name="Entries" value="GcStoryEntry">
                    <Property name="Title" value="UI_MODCATALOGUE_PAGE0_TITLE1" />
                    <Property name="Entry" value="UI_MODCATALOGUE_PAGE0_ENTRY1" />
                    <Property name="BranchedEntries" />
                    <Property name="AlienText" value="" />
                    <Property name="AutoPrefixWithAlienText" value="true" />
                    <Property name="AlienTextForceRace" value="GcAlienRace">
                        <Property name="AlienRace" value="None" />
                    </Property>
                </Property>
                <Property name="Entries" value="GcStoryEntry">
                    <Property name="Title" value="UI_MODCATALOGUE_PAGE0_TITLE2" />
                    <Property name="Entry" value="UI_MODCATALOGUE_PAGE0_ENTRY2" />
                    <Property name="BranchedEntries" />
                    <Property name="AlienText" value="" />
                    <Property name="AutoPrefixWithAlienText" value="true" />
                    <Property name="AlienTextForceRace" value="GcAlienRace">
                        <Property name="AlienRace" value="None" />
                    </Property>
                </Property>
                <Property name="Entries" value="GcStoryEntry">
                    <Property name="Title" value="UI_MODCATALOGUE_PAGE0_TITLE3" />
                    <Property name="Entry" value="UI_MODCATALOGUE_PAGE0_ENTRY3" />
                    <Property name="BranchedEntries" />
                    <Property name="AlienText" value="" />
                    <Property name="AutoPrefixWithAlienText" value="true" />
                    <Property name="AlienTextForceRace" value="GcAlienRace">
                        <Property name="AlienRace" value="None" />
                    </Property>
                </Property>
            </Property>
            <Property name="UseGridType" value="false" />
            <Property name="WikiGridType" value="GcWikiTopicType">
                <Property name="WikiTopicType" value="Substances" />
            </Property>
        </Property>

        <Property name="Pages" value="GcStoryPage">
            <Property name="InteractionType" value="GcInteractionType">
                <Property name="InteractionType" value="None" />
            </Property>
            <Property name="Stat" value="DIST_WALKED" />
            <Property name="StatIsBitmask" value="false" />
            <Property name="Icon" value="TkTextureResource">
                <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/WIKI/EXPLORATION7.DDS" />
                <Property name="ResHandle" value="GcResource">
                    <Property name="ResourceID" value="0" />
                </Property>
            </Property>
            <Property name="ID" value="UI_MODCATALOGUE_PAGE1_ID" />
            <Property name="Entries">
                <Property name="Entries" value="GcStoryEntry">
                    <Property name="Title" value="UI_MODCATALOGUE_PAGE1_TITLE1" />
                    <Property name="Entry" value="UI_MODCATALOGUE_PAGE1_ENTRY1" />
                    <Property name="BranchedEntries" />
                    <Property name="AlienText" value="" />
                    <Property name="AutoPrefixWithAlienText" value="true" />
                    <Property name="AlienTextForceRace" value="GcAlienRace">
                        <Property name="AlienRace" value="None" />
                    </Property>
                </Property>
                <Property name="Entries" value="GcStoryEntry">
                    <Property name="Title" value="" />
                    <Property name="Entry" value="UI_MODCATALOGUE_PAGE1_ENTRY2" />
                    <Property name="BranchedEntries" />
                    <Property name="AlienText" value="" />
                    <Property name="AutoPrefixWithAlienText" value="true" />
                    <Property name="AlienTextForceRace" value="GcAlienRace">
                        <Property name="AlienRace" value="None" />
                    </Property>
                </Property>
                <Property name="Entries" value="GcStoryEntry">
                    <Property name="Title" value="UI_MODCATALOGUE_PAGE1_TITLE3" />
                    <Property name="Entry" value="UI_MODCATALOGUE_PAGE1_ENTRY3" />
                    <Property name="BranchedEntries" />
                    <Property name="AlienText" value="" />
                    <Property name="AutoPrefixWithAlienText" value="true" />
                    <Property name="AlienTextForceRace" value="GcAlienRace">
                        <Property name="AlienRace" value="None" />
                    </Property>
                </Property>
            </Property>
            <Property name="UseGridType" value="false" />
            <Property name="WikiGridType" value="GcWikiTopicType">
                <Property name="WikiTopicType" value="Substances" />
            </Property>
        </Property>

    </Property>
</Property>
]]



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION,
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_STORIESTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Robots","GcStoryCategory",},
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            ["SKW"] = {"Explorers","GcStoryCategory",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PROPERTY_MODDING_SECTION,
                        },
                    }
                },
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------