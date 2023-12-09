----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "BETA11"
METADATA_MOD_DESC       = "TREE+WIKI"



----------------------------------------------------------------------------------------------------
-- tech tree + token cost property
----------------------------------------------------------------------------------------------------

PROPERTY_TECHTREE = 
[[
<Property name="Test" value="GcUnlockableItemTrees.xml">
  <Property name="Title" value="TEXT_TREE_T" />
  <Property name="Trees">
    <Property value="GcUnlockableItemTree.xml">
      <Property name="Title" value="TEXT_TREE_S" />
      <Property name="CostTypeID" value="COST_TOKEN" />
      <Property name="Root" value="GcUnlockableItemTreeNode.xml">
        <Property name="Unlockable" value="HYPERDRIVE" />
        <Property name="Children">

          <Property value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="SHIP_LIFESUP" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="PHOTONIX_CORE" />
                <Property name="Children"/>
              </Property>
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
            <Property name="Unlockable" value="TECH_COMPUTER" />
            <Property name="Children">
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
                <Property name="Unlockable" value="TECH_POLICE" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_TRANSFER" />
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

          <Property value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="TECH_GLOBE" />
            <Property name="Children">
              <Property value="GcUnlockableItemTreeNode.xml">
                <Property name="Unlockable" value="TECH_BLOB" />
                <Property name="Children">
                  <Property value="GcUnlockableItemTreeNode.xml">
                    <Property name="Unlockable" value="TECH_JELLYFISH" />
                    <Property name="Children">
                      <Property value="GcUnlockableItemTreeNode.xml">
                        <Property name="Unlockable" value="TECH_WALKER" />
                        <Property name="Children" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>

        </Property>
      </Property>
    </Property>
  </Property>
</Property>
]]

PROPERTY_COST_TOKEN = 
[[
<Property value="GcUnlockableTreeCostType.xml">
  <Property name="CostTypeID" value="COST_TOKEN" />
  <Property name="TypeOfCost" value="Product" />
  <Property name="CurrencyType" value="GcCurrency.xml">
    <Property name="Currency" value="Units" />
  </Property>
  <Property name="TypeID" value="ITEM_TOKEN" />
  <Property name="CantAffordString" value="TEXT_TREE_W" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- catalogue and guide property
----------------------------------------------------------------------------------------------------

PROPERTY_WIKI_TECH =
[[
<Property value="GcWikiCategory.xml">
  <Property name="CategoryID" value="TEXT_WIKI_ID" />
  <Property name="CategoryIDUpper" value="TEXT_WIKI_UP" />
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
  <Property name="Topics" />
  <Property name="Type" value="GcWikiTopicType.xml">
    <Property name="WikiTopicType" value="CustomTechnologyList" />
  </Property>
  <Property name="Items">
  
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_SCANNER" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_SHIELD" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_PHOTON" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_SENTINEL" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_SHOTGUN" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_ROCKET" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_PHASE" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_CYCLO" />
    </Property>

    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_COMPUTER" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_TRANSFER" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_POLICE" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_LOCATOR" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_DISSONANT" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_HYPERDRIVE" />
    </Property>

    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_WHITE" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_CYAN" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_ORANGE" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_PINK" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_ELECTRIC" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_GLITCH" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_PSYCHIC" />
    </Property>

    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_GLOBE" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_BLOB" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_JELLYFISH" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TECH_WALKER" />
    </Property>

  </Property>
  <Property name="UnseenCount" value="0" />
  <Property name="UnlockedCount" value="0" />
</Property>
]]



PROPERTY_WIKI_ITEMS =
[[
<Property value="GcWikiCategory.xml">
  <Property name="CategoryID" value="TEXT_WIKI_ID" />
  <Property name="CategoryIDUpper" value="TEXT_WIKI_UP" />
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
  <Property name="Topics" />
  <Property name="Type" value="GcWikiTopicType.xml">
    <Property name="WikiTopicType" value="CustomItemList" />
  </Property>
  <Property name="Items">

    <Property value="NMSString0x10.xml">
      <Property name="Value" value="ITEM_TOKEN" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="ITEM_PLATING" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="ITEM_FRAGMENT" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="ITEM_CIRCUIT" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="ITEM_CRYSTAL" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="ITEM_BYPASS" />
    </Property>

    <Property value="NMSString0x10.xml">
      <Property name="Value" value="ITEM_BOXA" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="ITEM_BOXB" />
    </Property>
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="ITEM_BOXC" />
    </Property>

  </Property>
  <Property name="UnseenCount" value="0" />
  <Property name="UnlockedCount" value="0" />
</Property>
]]



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_WIKI_TECH =            "METADATA\\REALITY\\CATALOGUECRAFTING.MBIN"
FILE_WIKI_ITEMS =           "METADATA\\REALITY\\CATALOGUEMATERIALS.MBIN"
FILE_RESEARCHTREE =         "METADATA\\REALITY\\TABLES\\UNLOCKABLEITEMTREES.MBIN"



NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
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
                    ["MBIN_FILE_SOURCE"] = FILE_RESEARCHTREE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- remove the default Test tech tree
                            ["SKW"] = {"Test","GcUnlockableItemTrees.xml",},
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            -- put new Test tree in it's place (must be first!)
                            ["PKW"] = "Trees",
                            ["ADD"] = PROPERTY_TECHTREE,
                        },

                        {
                            -- add new cost type based on the token item
                            ["PKW"] = "CostTypes",
                            ["ADD"] = PROPERTY_COST_TOKEN,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_WIKI_TECH,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"CategoryID","UI_PORTAL_CAT_TECH_WEIRD",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PROPERTY_WIKI_TECH,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_WIKI_ITEMS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"CategoryID","UI_PORTAL_CAT_MAT_COOK",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PROPERTY_WIKI_ITEMS,
                        },
                    },
                }
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------