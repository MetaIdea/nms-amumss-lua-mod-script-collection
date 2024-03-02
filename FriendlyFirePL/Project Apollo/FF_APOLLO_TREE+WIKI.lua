----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "TREE+WIKI"
METADATA_NMS_VERSION    = "452_SEC"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for research tree and Catalogue and Guide section. Modifies files in METADATA\\REALITY."



--------------------------------------------------
-- tech tree data
--------------------------------------------------

PROPERTY_TECHTREE = 
[[
<Property name="Test" value="GcUnlockableItemTrees.xml">
  <Property name="Title" value="TEXT_TREE_TITLE" />
  <Property name="Trees">

    <Property value="GcUnlockableItemTree.xml">
      <Property name="Title" value="TEXT_TREE_PAGE1" />
      <Property name="CostTypeID" value="COST_TOKEN" />
      <Property name="Root" value="GcUnlockableItemTreeNode.xml">
        <Property name="Unlockable" value="HYPERDRIVE" />
        <Property name="Children">

          <Property value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="PHOTONIX_CORE" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="LAUNCHER_SPEC" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="SHIPJUMP_SPEC" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="HYPERDRIVE_SPEC" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="F_MEGAWARP" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="T_SHIP_PIRATE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="T_SHIP_ROGUE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>

          <Property value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="TECH_SHIELD" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_PHOTON" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_SENTINEL" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_SHOTGUN" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_ROCKET" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_PHASE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_CYCLO" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>

          <Property value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="TECH_POLICE" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_COMPUTER" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_TRANSFER" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_LOCATOR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_DISSONANT" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_HYPERDRIVE" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>

          <Property value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="TECH_WHITE" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_CYAN" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_ELECTRIC" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_ORANGE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_GLITCH" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_PINK" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_PSYCHIC" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>

    <Property value="GcUnlockableItemTree.xml">
      <Property name="Title" value="TEXT_TREE_PAGE2" />
      <Property name="CostTypeID" value="COST_TOKEN" />
      <Property name="Root" value="GcUnlockableItemTreeNode.xml">
        <Property name="Unlockable" value="HYPERDRIVE" />
        <Property name="Children">

          <Property value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="TECH_BOOSTL" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_SOLAR" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_FRIGATE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_BLOB" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>

          <Property value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="TECH_BOOSTD" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_CRYSDRONE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_WALKER" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_LAYLAPS" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>

          <Property value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="TECH_BOOSTS" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_STONE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_GRAVE" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_AQUATIC" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>

          <Property value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="TECH_BOOSTW" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_JELLYFISH" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_EGG" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_WORM" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>

          <Property value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="TECH_BOOSTP" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_SHROOM" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_SHARD" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_STAR" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>

          <Property value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="TECH_BOOSTM" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_GLOBE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_SHIELDGEN" />
                    <Property name="Children" />
                  </Property>
                </Property>
              </Property>
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_NEXUSORB" />
                <Property name="Children" />
              </Property>
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>

  </Property>
</Property>
]]



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



--------------------------------------------------
-- catalogue and guide - technologies and items
--------------------------------------------------

LIST_CUSTOM_TECH_IDS =
{
    "TECH_SCANNER",
    "TECH_SHIELD","TECH_PHOTON","TECH_SENTINEL","TECH_SHOTGUN","TECH_ROCKET","TECH_PHASE","TECH_CYCLO",
    "TECH_COMPUTER","TECH_TRANSFER","TECH_POLICE","TECH_LOCATOR","TECH_DISSONANT","TECH_HYPERDRIVE",
    "TECH_BOOSTL","TECH_BOOSTD","TECH_BOOSTS","TECH_BOOSTW","TECH_BOOSTP","TECH_BOOSTM",
    "TECH_WHITE","TECH_CYAN","TECH_ORANGE","TECH_PINK","TECH_ELECTRIC","TECH_GLITCH","TECH_PSYCHIC",
}

LIST_CUSTOM_ITEM_IDS =
{
    "ITEM_TOKEN",
    "ITEM_PLATING","ITEM_FRAGMENT","ITEM_CIRCUIT",
    "ITEM_BOXA","ITEM_DICTIONARY",
    "ITEM_BOXB","ITEM_CRYSTAL",
    "ITEM_BOXC","ITEM_BYPASS",
}

function BuildWikiListProperty(list)

  local ListStart = [[<Property name="Items">]]
  local ListEnd = [[</Property>]]
  local EntryStart = [[<Property value="NMSString0x10.xml"><Property name="Value" value="]]
  local EntryEnd = [[" /></Property>]]
  local ListEntries = {}

  for i=1,#list do
    ListEntries[#ListEntries+1] = EntryStart .. list[i] .. EntryEnd
  end

  return ListStart .. table.concat(ListEntries) .. ListEnd

end



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_REALITY_CATALOGUE_TECH =           "METADATA\\REALITY\\CATALOGUECRAFTING.MBIN"
FILE_REALITY_CATALOGUE_ITEMS =          "METADATA\\REALITY\\CATALOGUEMATERIALS.MBIN"

FILE_REALITY_STORIESTABLE =             "METADATA\\REALITY\\TABLES\\STORIESTABLE.MBIN"
FILE_REALITY_RESEARCHTREE =             "METADATA\\REALITY\\TABLES\\UNLOCKABLEITEMTREES.MBIN"



--------------------------------------------------
-- mod container
--------------------------------------------------

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
                    -- research trees file
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_RESEARCHTREE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- remove the default Test tech tree, put new Test tree in it's place (must be first!)
                        {   ["SKW"] = {"Test","GcUnlockableItemTrees.xml",},    ["REMOVE"] = "SECTION",   },
                        {   ["PKW"] = "Trees",    ["ADD"] = PROPERTY_TECHTREE,    },

                        -- research cost object
                        {   ["PKW"] = "CostTypes",            ["PKW_1"] = "TRUE",     ["SKW"] = {"CostTypeID","SALVAGE",},    ["SEC_SAVE_TO"] = "SEC_TREE_COST",              },
                        {   ["SEC_EDIT"] = "SEC_TREE_COST",   ["VCT"] = {{"CostTypeID","COST_TOKEN",},{"TypeID","ITEM_TOKEN",},{"CantAffordString","TEXT_TREE_WARNING",},},   },
                        {   ["PKW"] = "CostTypes",            ["SEC_ADD_NAMED"] = "SEC_TREE_COST",                                                                            },
                    },
                },

                {
                    --------------------------------------------------
                    -- catalogue and guide - technology
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_CATALOGUE_TECH,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add section for Apollo tech
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_TECH_WEIRD",},   ["SEC_SAVE_TO"] = "SEC_WIKI_TECH",                                                                                                },
                        {   ["SEC_EDIT"] = "SEC_WIKI_TECH",   ["VCT"] ={{"CategoryID","TEXT_WIKI_BUTTON_MAIN",},{"CategoryIDUpper","TEXT_WIKI_LABEL_MAIN",},},                                                        },
                        {   ["SEC_EDIT"] = "SEC_WIKI_TECH",   ["SKW"] = {"IconOn","TkTextureResource.xml",},    ["VCT"] ={{"Filename","TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.BUILD.POWER.ON.DDS",},},                  },
                        {   ["SEC_EDIT"] = "SEC_WIKI_TECH",   ["SKW"] = {"IconOff","TkTextureResource.xml",},   ["VCT"] ={{"Filename","TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.BUILD.POWER.OFF.DDS",},},                 },
                        {   ["SEC_EDIT"] = "SEC_WIKI_TECH",   ["PKW"] = "Items",    ["REMOVE"] = "SECTION",                                                                                                           },
                        {   ["SEC_EDIT"] = "SEC_WIKI_TECH",   ["SKW"] = {"WikiTopicType","CustomTechnologyList",},    ["ADD_OPTION"] = "ADDafterSECTION",   ["ADD"] = BuildWikiListProperty(LIST_CUSTOM_TECH_IDS),    },
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_TECH_WEIRD",},   ["ADD_OPTION"] = "ADDafterSECTION",   ["SEC_ADD_NAMED"] = "SEC_WIKI_TECH",                                                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- catalogue and guide - items
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_CATALOGUE_ITEMS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add section for Apollo items
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_MAT_COOK",},   ["SEC_SAVE_TO"] = "SEC_WIKI_ITEMS",   },
                        {   ["SEC_EDIT"] = "SEC_WIKI_ITEMS",   ["VCT"] ={{"CategoryID","TEXT_WIKI_BUTTON_MAIN",},{"CategoryIDUpper","TEXT_WIKI_LABEL_MAIN",},},                                                 },
                        {   ["SEC_EDIT"] = "SEC_WIKI_ITEMS",   ["SKW"] = {"IconOn","TkTextureResource.xml",},    ["VCT"] ={{"Filename","TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.BUILD.POWER.ON.DDS",},},           },
                        {   ["SEC_EDIT"] = "SEC_WIKI_ITEMS",   ["SKW"] = {"IconOff","TkTextureResource.xml",},   ["VCT"] ={{"Filename","TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.BUILD.POWER.OFF.DDS",},},          },
                        {   ["SEC_EDIT"] = "SEC_WIKI_ITEMS",   ["PKW"] = "Items",    ["REMOVE"] = "SECTION",                                                                                                    },
                        {   ["SEC_EDIT"] = "SEC_WIKI_ITEMS",   ["SKW"] = {"WikiTopicType","CustomItemList",},    ["ADD_OPTION"] = "ADDafterSECTION",   ["ADD"] = BuildWikiListProperty(LIST_CUSTOM_ITEM_IDS),   },
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_MAT_COOK",},   ["ADD_OPTION"] = "ADDafterSECTION",   ["SEC_ADD_NAMED"] = "SEC_WIKI_ITEMS",                                                   },

                        -- merge 2 "raw materials" sections into one to make place for Apollo section
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_MAT_RAW2",},   ["PKW"] = "Items",    ["SEC_SAVE_TO"] = "SEC_RESOURCES",                                                                    },
                        {   ["SEC_EDIT"] = "SEC_RESOURCES",    ["REMOVE"] = "HBOS",                                                                                                                           },
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_MAT_RAW1",},   ["PKW"] = "Items",    ["ADD_OPTION"] = "ADDafterSECTION",   ["LINE_OFFSET"] = -1,   ["SEC_ADD_NAMED"] = "SEC_RESOURCES",    },
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_MAT_RAW1",},   ["VCT"] ={{"CategoryID","UI_GUIDE_HEADING_SUB_CATA",},{"CategoryIDUpper","UI_GUIDE_HEADING_SUB_CATA_U",},},                 },     
                        {   ["SKW"] = {"CategoryID","UI_PORTAL_CAT_MAT_RAW2",},   ["REMOVE"] = "SECTION",                                                                                                     },
                    },
                },

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