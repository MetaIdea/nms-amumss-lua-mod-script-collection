----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "REALITY_TECHTREE"
METADATA_NMS_VERSION    = "DEV8"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for custom technology research tree. Modifies METADATA\\REALITY\\TABLES\\UNLOCKABLEITEMTREES.MBIN."



--------------------------------------------------
-- new technology research tree 
--------------------------------------------------

PROPERTY_TECHTREE = 
[[
<Property name="Test" value="GcUnlockableItemTrees.xml"><Property name="Title" value="TEXT_TREE_TITLE" /><Property name="Trees">
  
  <Property value="GcUnlockableItemTree.xml"><Property name="Title" value="TEXT_TREE_PAGE1" /><Property name="CostTypeID" value="COST_TOKEN" />
  <Property name="Root" value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="HYPERDRIVE" /><Property name="Children">
    
    <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="PHOTONIX_CORE" /><Property name="Children">
    
      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="LAUNCHER_SPEC" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="SHIPJUMP_SPEC" /><Property name="Children" /></Property>
      </Property></Property>
      
      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="HYPERDRIVE_SPEC" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="F_MEGAWARP" /><Property name="Children" /></Property>
      </Property></Property>

      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="T_SHIP_PIRATE" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="T_SHIP_ROGUE" /><Property name="Children" /></Property>
      </Property></Property>

    </Property></Property>

    <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_SHIELD" /><Property name="Children">

      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_PHOTON" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_SENTINEL" /><Property name="Children" /></Property>
      </Property></Property>
      
      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_SHOTGUN" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_ROCKET" /><Property name="Children" /></Property>
      </Property></Property>

      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_PHASE" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_CYCLO" /><Property name="Children" /></Property>
      </Property></Property>

    </Property></Property>

    <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_POLICE" /><Property name="Children">
      
      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_COMPUTER" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_TRANSFER" /><Property name="Children" /></Property>
      </Property></Property>

      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_LOCATOR" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_DISSONANT" /><Property name="Children" /></Property>
      </Property></Property>
      
      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_HYPERDRIVE" /><Property name="Children" /></Property>

    </Property></Property>

    <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_WHITE" /><Property name="Children">

      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_CYAN" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_ELECTRIC" /><Property name="Children" /></Property>
      </Property></Property>
      
      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_ORANGE" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_GLITCH" /><Property name="Children" /></Property>
      </Property></Property>

      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_PINK" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_PSYCHIC" /><Property name="Children" /></Property>
      </Property></Property>

    </Property></Property>

  </Property></Property></Property>
    
  <Property value="GcUnlockableItemTree.xml"><Property name="Title" value="TEXT_TREE_PAGE2" /><Property name="CostTypeID" value="COST_TOKEN" />
  <Property name="Root" value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="HYPERDRIVE" /><Property name="Children">
    
    <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_BOOSTL" /><Property name="Children">

      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_SOLAR" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_FRIGATE" /><Property name="Children" /></Property>
      </Property></Property>
      
      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_BLOB" /><Property name="Children" /></Property>
      
    </Property></Property>

    <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_BOOSTD" /><Property name="Children">

      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_CRYSDRONE" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_WALKER" /><Property name="Children" /></Property>
      </Property></Property>
      
      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_LAYLAPS" /><Property name="Children" /></Property>
      
    </Property></Property>

    <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_BOOSTS" /><Property name="Children">

      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_STONE" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_GRAVE" /><Property name="Children" /></Property>
      </Property></Property>
      
      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_AQUATIC" /><Property name="Children" /></Property>
      
    </Property></Property>

    <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_BOOSTW" /><Property name="Children">

      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_JELLYFISH" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_EGG" /><Property name="Children" /></Property>
      </Property></Property>
      
      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_WORM" /><Property name="Children" /></Property>
      
    </Property></Property>

    <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_BOOSTP" /><Property name="Children">

      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_SHROOM" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_SHARD" /><Property name="Children" /></Property>
      </Property></Property>
      
      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_STAR" /><Property name="Children" /></Property>
      
    </Property></Property>

    <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_BOOSTM" /><Property name="Children">

      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_GLOBE" /><Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_SHIELDGEN" /><Property name="Children" /></Property>
      </Property></Property>
      
      <Property value="GcUnlockableItemTreeNode.xml"><Property name="Unlockable" value="TECH_NEXUSORB" /><Property name="Children" /></Property>
      
    </Property></Property>

  </Property></Property></Property>
    
</Property></Property>
]]



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_REALITY_RESEARCHTREE = "METADATA\\REALITY\\TABLES\\UNLOCKABLEITEMTREES.MBIN"

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
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_RESEARCHTREE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- remove the default Test tech tree, put new Test tree in it's place (must be first!)
                        {   ["SKW"] = {"Test","GcUnlockableItemTrees.xml",},    ["REMOVE"] = "SECTION",   },
                        {   ["PKW"] = "Trees",    ["ADD"] = PROPERTY_TECHTREE,                            },

                        -- add new tokens as research cost
                        {   ["PKW"] = "CostTypes",            ["PKW_1"] = "TRUE",     ["SKW"] = {"CostTypeID","SALVAGE",},    ["SEC_SAVE_TO"] = "SEC_TREE_COST",              },
                        {   ["SEC_EDIT"] = "SEC_TREE_COST",   ["VCT"] = {{"CostTypeID","COST_TOKEN",},{"TypeID","ITEM_TOKEN",},{"CantAffordString","TEXT_TREE_WARNING",},},   },
                        {   ["PKW"] = "CostTypes",            ["SEC_ADD_NAMED"] = "SEC_TREE_COST",                                                                            },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------