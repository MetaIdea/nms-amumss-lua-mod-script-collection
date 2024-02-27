Author = "Syzzle"
ModName = "Unlockable Expedition Exclusive Techs"
GameVersion = "4.52"
--ModVersion = "v1.4"
Description = "Add the Expedition exclusive Ship Techs, Exosuit Techs, Freighter Tech and unavailable Multitool Tech to the Anomaly list to be unlocked."

-- SHIP BLUEPRINTS
UNLOCKABLEITEMTREES_WAVEFORM	=	[[
    <Property name="Children">
    <Property value="GcUnlockableItemTreeNode.xml">
      <Property name="Unlockable" value="SHIPJUMP_SPEC" />
      <Property name="Children" />
    </Property>
  </Property>
]]
UNLOCKABLEITEMTREES_PHOTONIX	=	[[
    <Property name="Children">
    <Property value="GcUnlockableItemTreeNode.xml">
      <Property name="Unlockable" value="PHOTONIX_CORE" />
      <Property name="Children" />
    </Property>
  </Property>
]]
UNLOCKABLEITEMTREES_CATAPULT	=	[[
    <Property name="Children">
    <Property value="GcUnlockableItemTreeNode.xml">
      <Property name="Unlockable" value="HYPERDRIVE_SPEC" />
      <Property name="Children" />
    </Property>
  </Property>
]]
UNLOCKABLEITEMTREES_ADVLAUNCH	=	[[
    <Property name="Children">
    <Property value="GcUnlockableItemTreeNode.xml">
      <Property name="Unlockable" value="LAUNCHER_SPEC" />
      <Property name="Children" />
    </Property>
  </Property>
]]

-- FREIGHTER BLUEPRINT
UNLOCKABLEITEMTREES_SINGULARITY	=	[[
    <Property name="Children">
    <Property value="GcUnlockableItemTreeNode.xml">
      <Property name="Unlockable" value="F_MEGAWARP" />
      <Property name="Children" />
    </Property>
  </Property>
]]

-- MULTITOOL BLUEPRINT
UNLOCKABLEITEMTREES_BOLTSM  = [[
    <Property name="Children">
    <Property value="GcUnlockableItemTreeNode.xml">
      <Property name="Unlockable" value="BOLT_SM" />
      <Property name="Children" />
    </Property>
  </Property>
]]
UNLOCKABLEITEMTREES_RESONATOR = [[
    <Property name="Children">
    <Property value="GcUnlockableItemTreeNode.xml">
      <Property name="Unlockable" value="LASER_XO" />
      <Property name="Children" />
    </Property>
  </Property>
]]

-- EXOSUIT BLUEPRINTS
UNLOCKABLEITEMTREES_VISCERAL  = [[
    <Property name="Children">
    <Property value="GcUnlockableItemTreeNode.xml">
      <Property name="Unlockable" value="WORMTECH" />
      <Property name="Children" />
    </Property>
  </Property>
]]
UNLOCKABLEITEMTREES_BYPASS  = [[
    <Property name="Children">
    <Property value="GcUnlockableItemTreeNode.xml">
      <Property name="Unlockable" value="WORMREADER" />
      <Property name="Children" />
    </Property>
  </Property>
]]

-- BASE PARTS BLUEPRINTS
UNLOCKABLEITEMTREES_PORTABLE  = [[
    <Property value="GcUnlockableItemTree.xml">
    <Property name="Title" value="UI_S9_BASEPARTS_TREE" />
    <Property name="CostTypeID" value="SALVAGE" />
    <Property name="Root" value="GcUnlockableItemTreeNode.xml">
      <Property name="Unlockable" value="S9_BUILDERTREE" />
      <Property name="Children">
        <Property value="GcUnlockableItemTreeNode.xml">
          <Property name="Unlockable" value="S9_EXOCRAFTTREE" />
          <Property name="Children" />
        </Property>
        <Property value="GcUnlockableItemTreeNode.xml">
          <Property name="Unlockable" value="S9_WEAPONTREE" />
          <Property name="Children" />
        </Property>
        <Property value="GcUnlockableItemTreeNode.xml">
          <Property name="Unlockable" value="S9_SUITTREE" />
          <Property name="Children" />
        </Property>
        <Property value="GcUnlockableItemTreeNode.xml">
          <Property name="Unlockable" value="S9_SHIPTREE" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName..".pak",
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
          ["EXML_CHANGE_TABLE"] 	= {
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_PULSESPEED"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["REMOVE"]	=	"LINE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_PULSESPEED"},
              ["ADD"]	=	UNLOCKABLEITEMTREES_WAVEFORM,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_SHIPDRIFT"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["REMOVE"]	=	"LINE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_SHIPDRIFT"},
              ["ADD"]	=	UNLOCKABLEITEMTREES_PHOTONIX,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","HDRIVEBOOST3"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["REMOVE"]	=	"LINE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","HDRIVEBOOST3"},
              ["ADD"]	=	UNLOCKABLEITEMTREES_CATAPULT,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_LAUNCHCHARGE"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["REMOVE"]	=	"LINE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_LAUNCHCHARGE"},
              ["ADD"]	=	UNLOCKABLEITEMTREES_ADVLAUNCH,
            },
            -- ADD NEW FREIGHTER BLUEPRINT
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","F_HDRIVEBOOST3"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["REMOVE"]	=	"LINE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","F_HDRIVEBOOST3"},
              ["ADD"]	=	UNLOCKABLEITEMTREES_SINGULARITY,
            },
            -- ADD NEW MULTITOOL BLUEPRINT
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_BOLTBOUNCE"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["REMOVE"]	=	"LINE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_BOLTBOUNCE"},
              ["ADD"]	=	UNLOCKABLEITEMTREES_BOLTSM,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_MINER"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["REMOVE"]	=	"LINE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_MINER"},
              ["ADD"]	=	UNLOCKABLEITEMTREES_RESONATOR,
            },
            -- ADD NEW EXOSUIT BLUEPRINTS
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_PROTECT"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["REMOVE"]	=	"LINE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_PROTECT"},
              ["ADD"]	=	UNLOCKABLEITEMTREES_VISCERAL,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_TRANSLATE3"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["REMOVE"]	=	"LINE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_TRANSLATE3"},
              ["ADD"]	=	UNLOCKABLEITEMTREES_BYPASS,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BaseParts","GcUnlockableItemTrees.xml"},
              ["PRECEDING_KEY_WORDS"] = {"Trees"},
              ["ADD"]	=	UNLOCKABLEITEMTREES_PORTABLE,
            },
          }
        },
        -- Modifies Core Techs to be able to dismantle them
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",	
          ["EXML_CHANGE_TABLE"] 	= 
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
                {"TechnologyRarity","Rare"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"RequiredTech","SHIPJUMP_SPEC","TechShopRarity","GcTechnologyRarity.xml",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"TechnologyRarity","Normal"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"RequiredTech","SHIPJUMP_SPEC",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",1000},
                {"WikiEnabled","True"},
              }
            },
            -- Photonix Core
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","PHOTONIX_CORE",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                --{"Core","False"},
                {"TechnologyRarity","Rare"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","PHOTONIX_CORE","TechShopRarity","GcTechnologyRarity.xml",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"TechnologyRarity","Normal"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","PHOTONIX_CORE",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",1000},
                {"WikiEnabled","True"},
              }
            },
            -- Frameshift Catapult
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","HYPERDRIVE_SPEC",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Core","False"},
                {"TechnologyRarity","Rare"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"RequiredTech","HYPERDRIVE_SPEC","TechShopRarity","GcTechnologyRarity.xml",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"TechnologyRarity","Normal"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"RequiredTech","HYPERDRIVE_SPEC",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",1000},
                {"WikiEnabled","True"},
              }
            },
            -- Advanced Launcher System
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","LAUNCHER_SPEC",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Core","False"},
                {"TechnologyRarity","Rare"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"RequiredTech","LAUNCHER_SPEC","TechShopRarity","GcTechnologyRarity.xml",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"TechnologyRarity","Normal"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"RequiredTech","LAUNCHER_SPEC",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",1000},
                {"WikiEnabled","True"},
              }
            },
            -- Singularity Engine
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","F_MEGAWARP",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"TechnologyRarity","Rare"},
              }
            },
            -- BOLTCASTER SM
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","BOLT_SM",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                --{"Core","False"},
                {"TechnologyRarity","Rare"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","BOLT_SM","TechShopRarity","GcTechnologyRarity.xml",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"TechnologyRarity","Normal"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","BOLT_SM",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",500},
                {"WikiEnabled","True"},
              }
            },
            -- PLASMA RESONATOR
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","LASER_XO",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                --{"Core","False"},
                {"TechnologyRarity","Rare"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","LASER_XO","TechShopRarity","GcTechnologyRarity.xml",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"TechnologyRarity","Normal"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","LASER_XO",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",300},
                {"WikiEnabled","True"},
              }
            },
            -- VISCERAL SYNTHESISER
            -- {
            --   ["SPECIAL_KEY_WORDS"]  = {"ID","WORMTECH",},
            --   ["VALUE_CHANGE_TABLE"]  =
            --   {
            --     --{"Core","False"},
            --     {"TechnologyRarity","Rare"},
            --   }
            -- },
            -- {
            --   ["SPECIAL_KEY_WORDS"]  = {"ID","WORMTECH","TechShopRarity","GcTechnologyRarity.xml",},
            --   ["VALUE_CHANGE_TABLE"]  =
            --   {
            --     {"TechnologyRarity","Normal"},
            --   }
            -- },
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","WORMTECH",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",500},
                --{"WikiEnabled","True"},
              }
            },
            -- ARCHIVE BYPASS IMPLANT
            -- {
            --   ["SPECIAL_KEY_WORDS"]  = {"ID","WORMREADER",},
            --   ["VALUE_CHANGE_TABLE"]  =
            --   {
            --     --{"Core","False"},
            --     {"TechnologyRarity","Rare"},
            --   }
            -- },
            -- {
            --   ["SPECIAL_KEY_WORDS"]  = {"ID","WORMREADER","TechShopRarity","GcTechnologyRarity.xml",},
            --   ["VALUE_CHANGE_TABLE"]  =
            --   {
            --     {"TechnologyRarity","Normal"},
            --   }
            -- },
            {
              ["SPECIAL_KEY_WORDS"]  = {"ID","WORMREADER",},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"FragmentCost",600},
                --{"WikiEnabled","True"},
              }
            },
          }
        },
        -- CHANGE PORTABLE STATIONS TREE
        {
          ["MBIN_FILE_SOURCE"] 	= "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          ["EXML_CHANGE_TABLE"] 	= 
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
      }
    }
  }	
}