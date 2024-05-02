----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "REALITY_STORIES"
METADATA_NMS_VERSION    = "465"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for the lore section of Catalogue and Guide. Modifies METADATA\\REALITY\\TABLES\\STORIESTABLE.MBIN."



--------------------------------------------------
-- catalogue and guide - stories
--------------------------------------------------

PROPERTY_WIKI_STORY =
[[
<Property name="Exotics" value="GcStoryCategory.xml">
  <Property name="CategoryID" value="TEXT_WIKI_BUTTON_MAIN" />
  <Property name="CategoryIDUpper" value="TEXT_WIKI_LABEL_MAIN" />
  <Property name="IconOn" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.BUILD.POWER.ON.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="IconOff" value="TkTextureResource.xml">
    <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.BUILD.POWER.OFF.DDS" />
    <Property name="ResHandle" value="GcResource.xml">
      <Property name="ResourceID" value="0" />
    </Property>
  </Property>
  <Property name="Pages">

    <Property value="GcStoryPage.xml">
      <Property name="InteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="None" />
      </Property>
      <Property name="Stat" value="DIST_WALKED" />
      <Property name="StatIsBitmask" value="False" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/MISSION/MAIN.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="ID" value="TEXT_WIKI_BUTTON_QUEST" />
      <Property name="Entries">
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="" />
          <Property name="Entry" value="TEXT_MISSION_MAIN_DESC" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_QUEST_TITLE1" />
          <Property name="Entry" value="TEXT_WIKI_QUEST_ENTRY1" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_QUEST_TITLE2" />
          <Property name="Entry" value="TEXT_WIKI_QUEST_ENTRY2" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_QUEST_TITLE3" />
          <Property name="Entry" value="TEXT_WIKI_QUEST_ENTRY3" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_QUEST_TITLE4" />
          <Property name="Entry" value="TEXT_WIKI_QUEST_ENTRY4" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_QUEST_TITLE5" />
          <Property name="Entry" value="TEXT_WIKI_QUEST_ENTRY5" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_QUEST_TITLE6" />
          <Property name="Entry" value="TEXT_WIKI_QUEST_ENTRY6" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_QUEST_TITLE7" />
          <Property name="Entry" value="TEXT_WIKI_QUEST_ENTRY7" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
      </Property>
      <Property name="UseGridType" value="False" />
      <Property name="WikiGridType" value="GcWikiTopicType.xml">
        <Property name="WikiTopicType" value="Substances" />
      </Property>
    </Property>

    <Property value="GcStoryPage.xml">
      <Property name="InteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="None" />
      </Property>
      <Property name="Stat" value="DIST_WALKED" />
      <Property name="StatIsBitmask" value="False" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/MISSION/MEMORY.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="ID" value="TEXT_WIKI_BUTTON_MEMORY" />
      <Property name="Entries">
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="" />
          <Property name="Entry" value="TEXT_WIKI_MEMORY_ENTRY0" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_MEMORY_TITLE1" />
          <Property name="Entry" value="TEXT_WIKI_MEMORY_ENTRY1" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_MEMORY_TITLE2" />
          <Property name="Entry" value="TEXT_WIKI_MEMORY_ENTRY2" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_MEMORY_TITLE3" />
          <Property name="Entry" value="TEXT_WIKI_MEMORY_ENTRY3" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
      </Property>
      <Property name="UseGridType" value="False" />
      <Property name="WikiGridType" value="GcWikiTopicType.xml">
        <Property name="WikiTopicType" value="Substances" />
      </Property>
    </Property>

    <Property value="GcStoryPage.xml">
      <Property name="InteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="None" />
      </Property>
      <Property name="Stat" value="DIST_WALKED" />
      <Property name="StatIsBitmask" value="False" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/MISSION/INFO.DDS" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="ID" value="TEXT_WIKI_BUTTON_ABOUT" />
      <Property name="Entries">
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_ABOUT_TITLE1" />
          <Property name="Entry" value="TEXT_WIKI_ABOUT_ENTRY1" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_ABOUT_TITLE2" />
          <Property name="Entry" value="TEXT_WIKI_ABOUT_ENTRY2" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_ABOUT_TITLE3" />
          <Property name="Entry" value="TEXT_WIKI_ABOUT_ENTRY3" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_ABOUT_TITLE4" />
          <Property name="Entry" value="TEXT_WIKI_ABOUT_ENTRY4" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_ABOUT_TITLE5" />
          <Property name="Entry" value="TEXT_WIKI_ABOUT_ENTRY5" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
        <Property value="GcStoryEntry.xml">
          <Property name="Title" value="TEXT_WIKI_ABOUT_TITLE6" />
          <Property name="Entry" value="TEXT_WIKI_ABOUT_ENTRY6" />
          <Property name="BranchedEntries" />
          <Property name="AlienText" value="" />
          <Property name="AutoPrefixWithAlienText" value="True" />
          <Property name="AlienTextForceRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
          </Property>
        </Property>
      </Property>
      <Property name="UseGridType" value="False" />
      <Property name="WikiGridType" value="GcWikiTopicType.xml">
        <Property name="WikiTopicType" value="Substances" />
      </Property>
    </Property>

  </Property>
</Property>
]]



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_REALITY_STORIESTABLE = "METADATA\\REALITY\\TABLES\\STORIESTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- catalogue and guide - knowledge
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_STORIESTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- remove unused story section, add Apollo story section in its place
                        {   ["SKW"] = {"Exotics","GcStoryCategory.xml",},     ["REMOVE"] = "SECTION",   },
                        {   ["SKW"] = {"Diplomats","GcStoryCategory.xml",},   ["ADD_OPTION"] = "ADDafterSECTION",    ["ADD"] = PROPERTY_WIKI_STORY,   },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------