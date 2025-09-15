Author = "Syzzle"
ModName = "Unlockable Expedition Exclusive Techs"
GameVersion = "6.04"
Description = "Add the Expedition exclusive Ship Techs, Exosuit Techs, Freighter Tech and unavailable Multitool Tech to the Anomaly list to be unlocked."

-- SHIP BLUEPRINTS
UNLOCKABLEITEMTREES_WAVEFORM	=	[[
  <Property name="Children" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="SHIPJUMP_SPEC" />
    <Property name="Children" />
  </Property>
]]
UNLOCKABLEITEMTREES_PHOTONIX	=	[[
  <Property name="Children" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="PHOTONIX_CORE" />
    <Property name="Children" />
  </Property>
]]
UNLOCKABLEITEMTREES_CATAPULT	=	[[
  <Property name="Children" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="HYPERDRIVE_SPEC" />
    <Property name="Children" />
  </Property>
]]
UNLOCKABLEITEMTREES_ADVLAUNCH	=	[[
  <Property name="Children" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="LAUNCHER_SPEC" />
    <Property name="Children" />
  </Property>
]]

-- FREIGHTER BLUEPRINT
UNLOCKABLEITEMTREES_SINGULARITY	=	[[
  <Property name="Children" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="F_MEGAWARP" />
    <Property name="Children" />
  </Property>
]]

-- MULTITOOL BLUEPRINT
UNLOCKABLEITEMTREES_BOLTSM  = [[
  <Property name="Children" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="BOLT_SM" />
    <Property name="Children" />
  </Property>
]]
UNLOCKABLEITEMTREES_RESONATOR = [[
  <Property name="Children" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="LASER_XO" />
    <Property name="Children" />
  </Property>
]]
  
-- EXOSUIT BLUEPRINTS
UNLOCKABLEITEMTREES_VISCERAL  = [[
  <Property name="Children" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="WORMTECH" />
    <Property name="Children" />
  </Property>
]]
UNLOCKABLEITEMTREES_BYPASS  = [[
  <Property name="Children" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="WORMREADER" />
    <Property name="Children" />
  </Property>
]]

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

-- ORBITAL UPLINK BLUEPRINT
ORBITALUPLINK = [[
  <Property name="Children" value="GcUnlockableItemTreeNode">
    <Property name="Unlockable" value="S19_TP" />
    <Property name="Children" />
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
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_PULSESPEED"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"]  = "TRUE",
              ["ADD"]	=	UNLOCKABLEITEMTREES_WAVEFORM,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_SHIPDRIFT"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"]  = "TRUE",
              ["ADD"]	=	UNLOCKABLEITEMTREES_PHOTONIX,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_QUICKWARP"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"]  = "TRUE",
              ["ADD"]	=	UNLOCKABLEITEMTREES_CATAPULT,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_LAUNCHCHARGE"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"]  = "TRUE",
              ["ADD"]	=	UNLOCKABLEITEMTREES_ADVLAUNCH,
            },
            -- ADD NEW FREIGHTER BLUEPRINT
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","F_HDRIVEBOOST3"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"]  = "TRUE",
              ["ADD"]	=	UNLOCKABLEITEMTREES_SINGULARITY,
            },
            -- ADD NEW MULTITOOL BLUEPRINT
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_BOLTBOUNCE"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"]  = "TRUE",
              ["ADD"]	=	UNLOCKABLEITEMTREES_BOLTSM,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_MINER"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"]  = "TRUE",
              ["ADD"]	=	UNLOCKABLEITEMTREES_RESONATOR,
            },
            -- ADD NEW EXOSUIT BLUEPRINTS
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_PROTECT"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"]  = "TRUE",
              ["ADD"]	=	UNLOCKABLEITEMTREES_VISCERAL,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_TRANSLATE3"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"]  = "TRUE",
              ["ADD"]	=	UNLOCKABLEITEMTREES_BYPASS,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BaseParts","GcUnlockableItemTrees"},
              ["PRECEDING_KEY_WORDS"] = {"Trees"},
              ["ADD"]	=	UNLOCKABLEITEMTREES_PORTABLE,
            },
            -- ADD ORBITAL UPLINK BLUEPRINT
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","ACCESS3"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOS"]  = "TRUE",
              ["ADD"]	=	ORBITALUPLINK,
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",	
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","SHIPJUMP1",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Core","False"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","LAUNCHER",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Core","False"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","HYPERDRIVE",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Core","False"},
              }
            },
            -- Modifies Expedition Tech to work
            -- Waveform Engine
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","SHIPJUMP_SPEC",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Core","False"},
                {"FragmentCost",1000},
              }
            },
            -- Photonix Core
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","PHOTONIX_CORE",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",1000},
              }
            },
            -- Frameshift Catapult
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","HYPERDRIVE_SPEC",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Core","False"},
                {"FragmentCost",1000},
              }
            },
            -- Advanced Launcher System
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","LAUNCHER_SPEC",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Core","False"},
                {"FragmentCost",1000},
              }
            },
            -- Singularity Engine
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","F_MEGAWARP",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",5},
              }
            },
            -- BOLTCASTER SM
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","BOLT_SM",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",500},
              }
            },
            -- PLASMA RESONATOR
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","LASER_XO",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",300},
              }
            },
            -- VISCERAL SYNTHESISER
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","WORMTECH",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",500},
              }
            },
            -- ARCHIVE BYPASS IMPLANT
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","WORMREADER",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",600},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] 	= 
          {
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","S19_TP",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"RecipeCost",2},
              }
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