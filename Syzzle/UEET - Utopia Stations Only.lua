Author = "Syzzle"
ModName = "UEET - Utopia Stations Only"
GameVersion = "6.04"
Description = "Add only the Utopua Stations to be unlocked at the Anomaly."

-- BASE PARTS BLUEPRINTS
UNLOCKABLEITEMTREES_PORTABLE  = [[
  <Property name="Trees" value="GcUnlockableItemTree">
    <Property name="Title" value="UI_S9_BASEPARTS_TREE" />
    <Property name="CostTypeID" value="SALVAGE" />
    <Property name="Root" value="GcUnlockableItemTreeNode">
      <Property name="Unlockable" value="S9_BUILDERTREE" />
      <Property name="Children">
        <Property value="GcUnlockableItemTreeNode">
          <Property name="Unlockable" value="S9_EXOCRAFTTREE" />
          <Property name="Children" />
        </Property>
        <Property value="GcUnlockableItemTreeNode">
          <Property name="Unlockable" value="S9_WEAPONTREE" />
          <Property name="Children" />
        </Property>
        <Property value="GcUnlockableItemTreeNode">
          <Property name="Unlockable" value="S9_SUITTREE" />
          <Property name="Children" />
        </Property>
        <Property value="GcUnlockableItemTreeNode">
          <Property name="Unlockable" value="S9_SHIPTREE" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
]]

-- ALLOW UTOPIA STATIONS TO BE BUILD ON FREIGHTERS 
FREIGHTERGROUP  = [[
  <Property name="Groups" value="GcBaseBuildingEntryGroup">
    <Property name="Group" value="FREIGHTER_TECH" />
    <Property name="SubGroupName" value="FRE_TECH_OTHER" />
    <Property name="SubGroup" value="0" />
  </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName,
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] 		= Description,
["MODIFICATIONS"] 			= 

  {
    {
      ["MBIN_CHANGE_TABLE"] 	= 
      { 
        -- Add new unlockable Blueprints
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN",
          ["MXML_CHANGE_TABLE"] 	= {
            {
              ["SPECIAL_KEY_WORDS"] = {"BaseParts","GcUnlockableItemTrees"},
              ["PRECEDING_KEY_WORDS"] = {"Trees"},
              ["ADD"]	=	UNLOCKABLEITEMTREES_PORTABLE,
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"UnlockableItemTree","S9ShipTech"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"UnlockableItemTree","ShipTech"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"UnlockableItemTree","S9ExoTech"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"UnlockableItemTree","ExocraftTech"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {  
            { 
              ["SPECIAL_KEY_WORDS"] = 
              {  
                {"ID","S9_BUILDERTREE",},
                {"ID","S9_EXOCRAFTTREE",},  
                {"ID","S9_WEAPONTREE",},  
                {"ID","S9_SUITTREE",},  
                {"ID","S9_SHIPTREE",},  
              },
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"BuildableOnFreighter","true"},
              },
            },
            { 
              ["SPECIAL_KEY_WORDS"] = 
              {  
                {"ID","S9_BUILDERTREE","Groups","GcBaseBuildingEntryGroup",},
                {"ID","S9_EXOCRAFTTREE","Groups","GcBaseBuildingEntryGroup",},  
                {"ID","S9_WEAPONTREE","Groups","GcBaseBuildingEntryGroup",},  
                {"ID","S9_SUITTREE","Groups","GcBaseBuildingEntryGroup",},  
                {"ID","S9_SHIPTREE","Groups","GcBaseBuildingEntryGroup",},  
              },
              ["ADD_OPTION"]  = "ADDafterSECTION",
              ["ADD"] = FREIGHTERGROUP
            },
          },
        },
      }
    }
  }	
}