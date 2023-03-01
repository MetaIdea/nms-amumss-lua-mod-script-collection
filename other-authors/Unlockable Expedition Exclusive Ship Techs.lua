Author = "Syzzle"
ModName = "Unlockable Expedition Exclusive Ship Techs"
GameVersion = "4.12"
ModVersion = "v1.4"
Description = "Add the Expedition 3 exclusive Ship Techs to the Anomaly list to be unlocked."

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
UNLOCKABLEITEMTREES_SINGULARITY	=	[[
                        <Property name="Children">
                          <Property value="GcUnlockableItemTreeNode.xml">
                            <Property name="Unlockable" value="F_MEGAWARP" />
                            <Property name="Children" />
                          </Property>
                        </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName.." "..GameVersion..ModVersion..".pak",
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
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE",	"IGNORE"},
							},
							["REMOVE"]	=	"LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_PULSESPEED"},
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE",	"IGNORE"},
							},
							["ADD"]	=	UNLOCKABLEITEMTREES_WAVEFORM,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_SHIPDRIFT"},
							["PRECEDING_KEY_WORDS"] = {"Children"},
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE",	"IGNORE"},
							},
							["REMOVE"]	=	"LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_SHIPDRIFT"},
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE",	"IGNORE"},
							},
							["ADD"]	=	UNLOCKABLEITEMTREES_PHOTONIX,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable","HDRIVEBOOST3"},
							["PRECEDING_KEY_WORDS"] = {"Children"},
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE",	"IGNORE"},
							},
							["REMOVE"]	=	"LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable","HDRIVEBOOST3"},
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE",	"IGNORE"},
							},
							["ADD"]	=	UNLOCKABLEITEMTREES_CATAPULT,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_LAUNCHCHARGE"},
							["PRECEDING_KEY_WORDS"] = {"Children"},
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE",	"IGNORE"},
							},
							["REMOVE"]	=	"LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable","UT_LAUNCHCHARGE"},
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE",	"IGNORE"},
							},
							["ADD"]	=	UNLOCKABLEITEMTREES_ADVLAUNCH,
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable","F_HDRIVEBOOST3"},
							["PRECEDING_KEY_WORDS"] = {"Children"},
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE",	"IGNORE"},
							},
							["REMOVE"]	=	"LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Unlockable","F_HDRIVEBOOST3"},
							["VALUE_CHANGE_TABLE"] 	= {
								{"IGNORE",	"IGNORE"},
							},
							["ADD"]	=	UNLOCKABLEITEMTREES_SINGULARITY,
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
					}
				},	
			}
		}
	}	
}