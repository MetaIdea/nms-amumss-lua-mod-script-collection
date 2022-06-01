--------------------------------
-- Max Upgrade Slots Settings --
--------------------------------

-- Multitool --
MULTITOOL_INV_C = "24" -- 12 - Numbers on the right are the default values
MULTITOOL_INV_B = "32" -- 16
MULTITOOL_INV_A = "40" -- 20
MULTITOOL_INV_S = "48" -- 24

-- Shuttle Ships --
SHUTTLE_INV_C		= "24" -- 24 - Shuttle Inventory Slots
SHUTTLE_INV_B		= "32" -- 32 - C, B, A, S are the different classes
SHUTTLE_INV_A		= "40" -- 40
SHUTTLE_INV_S		= "48" -- 48

SHUTTLE_TECH_C  = "24" -- 0  - Shuttle Technology Slots
SHUTTLE_TECH_B 	= "32" -- 7  
SHUTTLE_TECH_A  = "40" -- 14
SHUTTLE_TECH_S  = "48" -- 21

SHUTTLE_CARGO_C = "24" -- 6  - Shuttle Cargo Slots
SHUTTLE_CARGO_B = "32" -- 9
SHUTTLE_CARGO_A = "40" -- 14
SHUTTLE_CARGO_S = "48" -- 21

-- Fighter Ships --
FIGHTER_INV_C		= "24" -- 24
FIGHTER_INV_B		= "32" -- 32
FIGHTER_INV_A		= "40" -- 40
FIGHTER_INV_S		= "48" -- 48

FIGHTER_TECH_C  = "24" -- 0
FIGHTER_TECH_B 	= "32" -- 7
FIGHTER_TECH_A  = "40" -- 14
FIGHTER_TECH_S  = "48" -- 21

FIGHTER_CARGO_C = "24" -- 6
FIGHTER_CARGO_B = "32" -- 9
FIGHTER_CARGO_A = "40" -- 14
FIGHTER_CARGO_S = "48" -- 21

-- Explorer/Scientific Ships --
EXPLORER_INV_C	 = "24" -- 24
EXPLORER_INV_B	 = "32" -- 32
EXPLORER_INV_A	 = "40" -- 40
EXPLORER_INV_S	 = "48" -- 48

EXPLORER_TECH_C  = "24" -- 0
EXPLORER_TECH_B  = "32" -- 7
EXPLORER_TECH_A  = "40" -- 14
EXPLORER_TECH_S  = "48" -- 21

EXPLORER_CARGO_C = "24" -- 6
EXPLORER_CARGO_B = "32" -- 9
EXPLORER_CARGO_A = "40" -- 14
EXPLORER_CARGO_S = "48" -- 21

-- Hauler/Dropships Ships --
HAULER_INV_C	 = "24" -- 24
HAULER_INV_B	 = "32" -- 32
HAULER_INV_A	 = "40" -- 40
HAULER_INV_S	 = "48" -- 48

HAULER_TECH_C  = "24" -- 0
HAULER_TECH_B  = "32" -- 7
HAULER_TECH_A  = "40" -- 14
HAULER_TECH_S  = "48" -- 21

HAULER_CARGO_C = "24" -- 12
HAULER_CARGO_B = "32" -- 12
HAULER_CARGO_A = "40" -- 24
HAULER_CARGO_S = "48" -- 36

-- Royal/Exotic Ships --
ROYAL_INV_S		= "48" -- 48
ROYAL_TECH_S  = "48" -- 21
ROYAL_CARGO_S = "48" -- 21

-- Alien/Living Ships --
ALIEN_INV_S		= "48" -- 35
ALIEN_TECH_S  = "48" -- 48
ALIEN_CARGO_S = "48" -- 32

-- Solar/Sail Ships --
SOLAR_INV_C		= "24" -- 24
SOLAR_INV_B		= "32" -- 32
SOLAR_INV_A		= "40" -- 40
SOLAR_INV_S		= "48" -- 48

SOLAR_TECH_C  = "24" -- 0
SOLAR_TECH_B 	= "32" -- 7
SOLAR_TECH_A  = "40" -- 14
SOLAR_TECH_S  = "48" -- 21

SOLAR_CARGO_C = "24" -- 6
SOLAR_CARGO_B = "32" -- 9
SOLAR_CARGO_A = "40" -- 14
SOLAR_CARGO_S = "48" -- 21

-- Freighters --
FREIGHTER_INV_C  	= "24" -- 24
FREIGHTER_INV_B 	= "32" -- 32
FREIGHTER_INV_A  	= "40" -- 40
FREIGHTER_INV_S  	= "48" -- 48

FREIGHTER_TECH_C  = "14" -- 7
FREIGHTER_TECH_B 	= "14" -- 7
FREIGHTER_TECH_A  = "28" -- 14
FREIGHTER_TECH_S  = "42" -- 21

FREIGHTER_CARGO_C = "24" -- 24
FREIGHTER_CARGO_B = "32" -- 32
FREIGHTER_CARGO_A = "40" -- 40
FREIGHTER_CARGO_S = "48" -- 48

-- Exocrafts --
EXOCRAFT_SMALL  = "48" -- 16 - Nomad and Pilgrim -- IF LESS THAN 48 THE SLOTS WILL BE RANDOM WITH GAPS
EXOCRAFT_MEDIUM = "48" -- 28 - Roamer, Minotaur, and Nautilon
EXOCRAFT_LARGE  = "48" -- 42 - Colossus

-- Exosuit Normal Mode --
EXOSUIT_TECH_WIDTH 	 = "8" -- 7 -- Tech Rows - 8x6=48
EXOSUIT_TECH_HEIGHT  = "6" -- 2 -- Tech Columns
EXOSUIT_CARGO_WIDTH  = "8" -- 8 -- Cargo Rows
EXOSUIT_CARGO_HEIGHT = "6" -- 6 -- Cargo Columns

-- Exosuit Survival Mode --
EXOSUIT_SM_TECH_WIDTH 	= "8" -- 7
EXOSUIT_SM_TECH_HEIGHT  = "6" -- 2
EXOSUIT_SM_CARGO_WIDTH  = "8" -- 8
EXOSUIT_SM_CARGO_HEIGHT = "6" -- 6

-------------------------------------------------------------------
-- DONT EDIT ANYTHING BELOW THIS POINT OR THE SCRIPT MIGHT BREAK --
-------------------------------------------------------------------

-- File Settings --
FileName = "More Upgradeable Slots 1.1.pak" -- can be changed to the name you want the mod but make sure to keep .pak at the end
ModAuthor = "JustRuthless" -- only for reference
LuaAuthor = "JustRuthless" -- only for reference
NMS_Version = "Leviathan 3.91" -- only for reference

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"
FileSource2 = "METADATA/GAMESTATE/DEFAULTINVENTORYBALANCE.MBIN"
FileSource3 = "METADATA/GAMESTATE/DEFAULTINVENTORYBALANCESURVIVAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = FileName,
  ["MOD_AUTHOR"] = ModAuthor,
  ["LUA_AUTHOR"] = LuaAuthor,
  ["NMS_VERSION"] = NMS_Version,
  ["MODIFICATIONS"] =                     
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = {FileSource1},
					["EXML_CHANGE_TABLE"] =
					{
						{
              ["SPECIAL_KEY_WORDS"]   = {"WeaponInventoryMaxUpgradeSize", "GcWeaponInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"C",	MULTITOOL_INV_C},
								{"B",	MULTITOOL_INV_B},
								{"A",	MULTITOOL_INV_A},
								{"S",	MULTITOOL_INV_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Shuttle", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"24", SHUTTLE_INV_C},
								{"32", SHUTTLE_INV_B},
								{"40", SHUTTLE_INV_A},
								{"48", SHUTTLE_INV_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Shuttle", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"0", SHUTTLE_TECH_C},
								{"7", SHUTTLE_TECH_B},
								{"14", SHUTTLE_TECH_A},
								{"21", SHUTTLE_TECH_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Shuttle", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxCargoInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"6", SHUTTLE_CARGO_C},
								{"9", SHUTTLE_CARGO_B},
								{"14", SHUTTLE_CARGO_A},
								{"21", SHUTTLE_CARGO_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Fighter", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"24", FIGHTER_INV_C},
								{"32", FIGHTER_INV_B},
								{"40", FIGHTER_INV_A},
								{"48", FIGHTER_INV_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Fighter", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"0", FIGHTER_TECH_C},
								{"7", FIGHTER_TECH_B},
								{"14", FIGHTER_TECH_A},
								{"21", FIGHTER_TECH_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Fighter", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxCargoInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"6", FIGHTER_CARGO_C},
								{"9", FIGHTER_CARGO_B},
								{"14", FIGHTER_CARGO_A},
								{"21", FIGHTER_CARGO_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Scientific", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"24", EXPLORER_INV_C},
								{"32", EXPLORER_INV_B},
								{"40", EXPLORER_INV_A},
								{"48", EXPLORER_INV_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Scientific", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"0", EXPLORER_TECH_C},
								{"7", EXPLORER_TECH_B},
								{"14", EXPLORER_TECH_A},
								{"21", EXPLORER_TECH_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Scientific", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxCargoInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"6", EXPLORER_CARGO_C},
								{"9", EXPLORER_CARGO_B},
								{"14", EXPLORER_CARGO_A},
								{"21", EXPLORER_CARGO_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Dropship", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"24", HAULER_INV_C},
								{"32", HAULER_INV_B},
								{"40", HAULER_INV_A},
								{"48", HAULER_INV_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Dropship", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"0", HAULER_TECH_C},
								{"7", HAULER_TECH_B},
								{"14", HAULER_TECH_A},
								{"21", HAULER_TECH_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Dropship", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxCargoInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"12", HAULER_CARGO_C},
								{"12", HAULER_CARGO_B},
								{"24", HAULER_CARGO_A},
								{"36", HAULER_CARGO_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Royal", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"48", ROYAL_INV_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Royal", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"21", ROYAL_TECH_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Royal", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxCargoInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"21", ROYAL_CARGO_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Alien", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"35", ALIEN_INV_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Alien", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"48", ALIEN_TECH_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Alien", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxCargoInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"32", ALIEN_CARGO_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Sail", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"24", SOLAR_INV_C},
								{"32", SOLAR_INV_B},
								{"40", SOLAR_INV_A},
								{"48", SOLAR_INV_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Sail", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"0", SOLAR_TECH_C},
								{"7", SOLAR_TECH_B},
								{"14", SOLAR_TECH_A},
								{"21", SOLAR_TECH_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Sail", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxCargoInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"6", SOLAR_CARGO_C},
								{"9", SOLAR_CARGO_B},
								{"14", SOLAR_CARGO_A},
								{"21", SOLAR_CARGO_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Freighter", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"24", FREIGHTER_INV_C},
								{"32", FREIGHTER_INV_B},
								{"40", FREIGHTER_INV_A},
								{"48", FREIGHTER_INV_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Freighter", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxTechInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"7", FREIGHTER_TECH_C},
								{"7", FREIGHTER_TECH_B},
								{"14", FREIGHTER_TECH_A},
								{"21", FREIGHTER_TECH_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"Freighter", "GcShipInventoryMaxUpgradeCapacity.xml"},
							["PRECEDING_KEY_WORDS"] = {"MaxCargoInventoryCapacity"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"24", FREIGHTER_CARGO_C},
								{"32", FREIGHTER_CARGO_B},
								{"40", FREIGHTER_CARGO_A},
								{"48", FREIGHTER_CARGO_S},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"VehicleSmall", "GcInventoryLayoutGenerationDataEntry.xml"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"MinSlots", EXOCRAFT_SMALL},
								{"MaxSlots", EXOCRAFT_SMALL},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"VehicleMedium", "GcInventoryLayoutGenerationDataEntry.xml"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"MinSlots", EXOCRAFT_MEDIUM},
								{"MaxSlots", EXOCRAFT_MEDIUM},
							},
						},
						{
              ["SPECIAL_KEY_WORDS"]   = {"VehicleLarge", "GcInventoryLayoutGenerationDataEntry.xml"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"MinSlots", EXOCRAFT_LARGE},
								{"MaxSlots", EXOCRAFT_LARGE},
							},
						},
					}
				}
			}
		},	
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] 	= {FileSource2},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"PlayerPersonalInventoryTechWidth", EXOSUIT_TECH_WIDTH},
								{"PlayerPersonalInventoryTechHeight", EXOSUIT_TECH_HEIGHT},
								{"PlayerPersonalInventoryCargoWidth", EXOSUIT_CARGO_WIDTH},
								{"PlayerPersonalInventoryCargoHeight", EXOSUIT_CARGO_HEIGHT},
							},
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {FileSource3},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"PlayerPersonalInventoryTechWidth", EXOSUIT_SM_TECH_WIDTH},
								{"PlayerPersonalInventoryTechHeight", EXOSUIT_SM_TECH_HEIGHT},
								{"PlayerPersonalInventoryCargoWidth", EXOSUIT_SM_CARGO_WIDTH},
								{"PlayerPersonalInventoryCargoHeight", EXOSUIT_SM_CARGO_HEIGHT},
							},
						},
					}
				},
			}
		},
	}
}