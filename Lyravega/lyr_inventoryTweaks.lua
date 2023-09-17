local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Inventory Tweaks 1.7]]
local gameVersion = "4.21"

--[=============================================================================================================================[
	Every Lua script of mine requires 'lyr_methods.lua' to be located in the 'ModScripts\ModHelperScripts\' folder
	Otherwise none of them will work. Make sure that file is located there before using my scripts

	Below in the 'tweakStates' table are modification names and what they do is commented next to them
	Some modifications may be disabled by default; the double dashes '--' at the beginning of a line will cause it to get ignored

	Ways to disable a modification: 
		• RECOMMENDED: Add double dashes at the beginning of the line / ex: '--modification =...'
		• Set the value of the modification to false / ex: 'modification = false,'
		• Use the 'lyr_tweakOverrides.txt' file and disable modifications from there

	Ways to (re)enable a modification:
		• RECOMMENDED: Remove double dashes at the beginning of the line
		• Set the value of the modification to its original value
		• Use the 'lyr_tweakOverrides.txt' file and enable / change modifications from there

	Depending on their function and/or relevance, some modifications may have duplicates in my other scripts
	The third option for enabling / disabling modifications through 'lyr_tweakOverrides.txt' file will affect all
--]=============================================================================================================================]

local tweakStates = {
	swapTechAndCargo = true,				-- swaps the position of tech and cargo inventories like in pre-4.0
	hideInventoryHeaders = true,			-- hides the cargo and tech header labels and icons (they don't play nice with freighters)
	restoreItemBars = true,					-- pre-4.0 item bars are restored for items with X/X display wherever possible
	smallerLabeledIcons = true,				-- makes the icons for the picked items / items in transfer pop-ups smaller
	smallerItemAmountFonts = true,			-- slightly decreases the size of fonts for the item amounts
	noInventoryDamage = true,				-- disables the damage that the installed techs suffer (does not affect vehicles)
	sturdyVehicleTechs = true,				-- techs installed on vehicles withstand much more damage (duplicate option from 'lyr_vehicleTweaks.lua')
	passiveProtectionTechs = true,			-- changes active hazard protection tech upgrades to passive ones (S:4-7%, A:2-4%, B:1-2%)
--	maximizedTechs = true,					-- procedurally generated tech upgrades provide all possible improvements with maximum values (UI can display 4 at most)
--	sameGroupTechLimit = 4,					-- sets the limit of same type of techs (game default is 3; setting to 4 will allow you to add 1 more)
--	installTechInCargo = true,				-- allows tech to be installed in cargo slots (like in pre-4.0)
--	superchargedSlotBonus = 1.5,			-- sets the bonus of the supercharged slots (game default is 1.25)
	refineryOutputCapacityMult = 5,			-- refinery product output capacity is multiplied by the given value (setting to 5 will increase max product output to 50/50/25)
}

--#region METHODS

dofile("lyr_methods.lua")

--#endregion
-- END OF METHODS

--#region TWEAKS

local swapTechAndCargo = function()
	if not lyr:checkTweak("swapTechAndCargo") then return false end

	local tweak = {
		{
			mbinPaths = {
				"UI/INVENTORYPAGE.MBIN",
				"UI/BUYSCREEN.MBIN"
			},
			{
				specialKeyWords = {"DataFilename", "UI/COMPONENTS/INVENTORY/SQU_INV_BOXTECH.MBIN"},
				fields = {
					PositionX = {default = 2106, altered = 2106},
					PositionY = {default = 735, altered = 1250},
					Width = {default = 1012, altered = 1012},
					Height = {default = 290, altered = 290},
					WidthPercentage = {default = false, altered = false},
					HeightPercentage = {default = false, altered = false},
					ConstrainProportions = {default = false, altered = false},
					ConstrainAspect = {default = 1, altered = 1},
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"ID", "TECHHEADER"},
				fields = {
					PositionX = {default = 1095, altered = 1095},
					PositionY = {default = 701, altered = 1220}
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"DataFilename", "UI/COMPONENTS/INVENTORY/SQU_INV_BOXREGULAR.MBIN"},
				fields = {
					PositionX = {default = 2106, altered = 2106},
					PositionY = {default = 1060, altered = 735},
					Width = {default = 1012, altered = 1012},
					Height = {default = 480, altered = 480},
					WidthPercentage = {default = false, altered = false},
					HeightPercentage = {default = false, altered = false},
					ConstrainProportions = {default = false, altered = false},
					ConstrainAspect = {default = 1, altered = 1},
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"ID", "CARGOHEADER"},
				fields = {
					PositionX = {default = 1095, altered = 1095},
					PositionY = {default = 1030, altered = 705}
				},
				replaceAll = true
			}
		},
		["UI/COMPONENTS/INVENTORY/SQU_INV_BOXTECH.MBIN"] = {
			{
				specialKeyWords = {"ID", "SQU_INV_TECH"},
				fields = {
					PositionX = {default = 2106, altered = 2106},
					PositionY = {default = 735, altered = 1260},
					Width = {default = 1012, altered = 1012},
					Height = {default = 290, altered = 290},
					WidthPercentage = {default = false, altered = false},
					HeightPercentage = {default = false, altered = false},
					ConstrainProportions = {default = false, altered = false},
					ConstrainAspect = {default = 1, altered = 1},
				},
				replaceAll = true
			}
		},
		["UI/COMPONENTS/INVENTORY/SQU_INV_BOXREGULAR.MBIN"] = {
			{
				specialKeyWords = {"ID", "SQU_INV_REGULAR"},
				fields = {
					PositionX = {default = 2106, altered = 2106},
					PositionY = {default = 1070, altered = 735},
					Width = {default = 1012, altered = 1012},
					Height = {default = 480, altered = 480},
					WidthPercentage = {default = false, altered = false},
					HeightPercentage = {default = false, altered = false},
					ConstrainProportions = {default = false, altered = false},
					ConstrainAspect = {default = 1, altered = 1},
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"ID", "INVENTORY"},
				fields = {
					PositionX = {default = 0, altered = 0},
					PositionY = {default = 0, altered = 0},
					Width = {default = 1010, altered = 1010},
					Height = {default = 1000, altered = 1000},
					WidthPercentage = {default = false, altered = false},
					HeightPercentage = {default = false, altered = false},
					ConstrainProportions = {default = false, altered = false},
					ConstrainAspect = {default = 1.151079, altered = 1.151079},
				},
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.swapTechAndCargo = swapTechAndCargo

local hideInventoryHeaders = function()
	if not lyr:checkTweak("hideInventoryHeaders") then return false end

	local tweak = {
		["UI/INVENTORYPAGE.MBIN"] = {
			{
				specialKeyWords = {
					{"ID", "INV_MAIN_LABEL"},
					{"ID", "CARGOICON"},
					{"ID", "INV_TECH_LABEL"},
					{"ID", "TECHICON"}
				},
				selectLevel = 1,
				fields = {
					IsHidden = {default = false, altered = true},
					A = 0
				},
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.hideInventoryHeaders = hideInventoryHeaders

local restoreItemBars = function()
	if not lyr:checkTweak("restoreItemBars") then return false end

	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BigPickingUsesNumbers = {default = true, altered = false},
					ReplaceItemBarWithNumbers = {default = true, altered = false}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.restoreItemBars = restoreItemBars

local smallerLabeledIcons = function()
	if not lyr:checkTweak("smallerLabeledIcons") then return false end

	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BigPicking = {default = true, altered = false}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.smallerLabeledIcons = smallerLabeledIcons

local smallerItemAmountFonts = function()
	if not lyr:checkTweak("smallerItemAmountFonts") then return false end

	local tweak = {
		{
			mbinPaths = {
				"UI/COMPONENTS/INVENTORY/SQU_SLOT_ITEM.MBIN",
				"UI/SLOTS/SLOT_ITEM.MBIN"
			},
			{
				specialKeyWords = {
					{"ID", "TEXT_LONG"},
					{"ID", "TEXT"},
					{"ID", "TEXTLOW"},
					{"ID", "TEXTLOW_LONG"},
				},
				selectLevel = 1,
				fields = {
					FontHeight = 0.8,
					Height = 0.8
				},
				multiply = true,
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.smallerItemAmountFonts = smallerItemAmountFonts

local noInventoryDamage = function()
	if not lyr:checkTweak("noInventoryDamage") then return false end

	local tweak = {
		["GCPLAYERGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					InventoryDamage = {default = true, altered = false}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.noInventoryDamage = noInventoryDamage

local sturdyVehicleTechs = function()
	if not lyr:checkTweak("sturdyVehicleTechs") then return false end

	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					DamageTechNumHitsRequired = {default = 20, altered = 600},
					DamageTechMinHitIntervalSeconds = {default = 1, altered = 1}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.sturdyVehicleTechs = sturdyVehicleTechs

local passiveProtectionTechs = function()
	if not lyr:checkTweak("passiveProtectionTechs") then return false end

	local tweak = {
		["METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"] = {
			{
				specialKeyWords = {
					{"ID", "T_COLDPROT"},
					{"ID", "T_HOTPROT"},
					{"ID", "T_TOX"},
					{"ID", "T_RAD"},
					{"ID", "T_UNW"}
				},
				fields = {
					Upgrade = {default = false, altered = true},
					Chargeable = {default = true, altered = false},
					ChargeAmount = {default = 80, altered = 100}
				}
			},
			{
				precedingKeyWords = {"ChargeBy"},
				specialKeyWords = {
					{"ID", "T_COLDPROT"},
					{"ID", "T_HOTPROT"},
					{"ID", "T_TOX"},
					{"ID", "T_RAD"},
					{"ID", "T_UNW"}
				},
				removeSection = true
			}
		},
		["METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"] = {
			{
				specialKeyWords = {
					{"ID", "UP_COLD1"},
					{"ID", "UP_COLD2"},
					{"ID", "UP_COLD3"},
				},
				fields = {
					StatsType = {default = "Suit_Protection_Cold", altered = "Suit_Protection_ColdDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_HOT1"},
					{"ID", "UP_HOT2"},
					{"ID", "UP_HOT3"},
				},
				fields = {
					StatsType = {default = "Suit_Protection_Heat", altered = "Suit_Protection_HeatDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_TOX1"},
					{"ID", "UP_TOX2"},
					{"ID", "UP_TOX3"},
				},
				fields = {
					StatsType = {default = "Suit_Protection_Toxic", altered = "Suit_Protection_ToxDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_RAD1"},
					{"ID", "UP_RAD2"},
					{"ID", "UP_RAD3"},
				},
				fields = {
					StatsType = {default = "Suit_Protection_Radiation", altered = "Suit_Protection_RadDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_UNW1"},
					{"ID", "UP_UNW2"},
					{"ID", "UP_UNW3"},
				},
				fields = {
					StatsType = {default = "Suit_Underwater", altered = "Suit_Protection_WaterDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_COLD1"},
					{"ID", "UP_HOT1"},
					{"ID", "UP_TOX1"},
					{"ID", "UP_RAD1"},
					{"ID", "UP_UNW1"},
				},
				fields = {
					ValueMin = {default = 180, altered = 1.01},
					ValueMax = {default = 265, altered = 1.02}
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_COLD2"},
					{"ID", "UP_HOT2"},
					{"ID", "UP_TOX2"},
					{"ID", "UP_RAD2"},
					{"ID", "UP_UNW2"},
				},
				fields = {
					ValueMin = {default = 200, altered = 1.02},
					ValueMax = {default = 265, altered = 1.04}
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_COLD3"},
					{"ID", "UP_HOT3"},
					{"ID", "UP_TOX3"},
					{"ID", "UP_RAD3"},
					{"ID", "UP_UNW3"},
				},
				fields = {
					ValueMin = {default = 220, altered = 1.04},
					ValueMax = {default = 265, altered = 1.07}
				}
			},
		},
	}

	return tweak
end; lyr.tweakTables.passiveProtectionTechs = passiveProtectionTechs

local maximizedTechs = function()
	if not lyr:checkTweak("maximizedTechs") then return false end

	local tweak = {
		["GCPLAYERGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					LuckyWithTech = {default = false, altered = true}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.maximizedTechs = maximizedTechs

local sameGroupTechLimit = function()
	if not lyr:checkTweak("sameGroupTechLimit") then return false end

	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MaxNumSameGroupTech = {default = 3,	altered = math.max(1, math.floor(lyr.tweakStates.sameGroupTechLimit))}
				}
			}
		},
	}

	return tweak
end; lyr.tweakTables.sameGroupTechLimit = sameGroupTechLimit

local installTechInCargo = function()
	if not lyr:checkTweak("installTechInCargo") then return false end

	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					TechMustBeInTechInventory = {default = true, altered = false}
				}
			}
		},
	}

	return tweak
end; lyr.tweakTables.installTechInCargo = installTechInCargo

local superchargedSlotBonus = function()
	if not lyr:checkTweak("superchargedSlotBonus") then return false end

	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					SpecialTechSlotBonus = {default = 1.25, altered = math.max(0.5, lyr.tweakStates.superchargedSlotBonus)}
				}
			}
		},
	}

	return tweak
end; lyr.tweakTables.superchargedSlotBonus = superchargedSlotBonus

local refineryOutputCapacityMult = function()
	if not lyr:checkTweak("refineryOutputCapacityMult") then return false end

	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = "MaxProductStackSizes",
				fields = {
					MaintenanceObject = math.max(1, math.floor(lyr.tweakStates.refineryOutputCapacityMult))
				},
				multiply = true,
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.refineryOutputCapacityMult = refineryOutputCapacityMult

local smallerCargoIcons = function()	-- deprecated
	if not lyr:checkTweak("smallerCargoIcons") then return false end

	local tweak = {
		["UI/COMPONENTS/INVENTORY/SQU_INV_BOXREGULAR.MBIN"] = {
			{
				specialKeyWords = {"DataFilename", "UI/COMPONENTS/INVENTORY/SQU_INV_SLOT_LARGE.MBIN"},
				fields = {
					DataFilename = {default = "UI/COMPONENTS/INVENTORY/SQU_INV_SLOT_LARGE.MBIN", altered = "UI/COMPONENTS/INVENTORY/SQU_INV_SLOT_SMALL.MBIN"},
					Width = {default = 90, altered = 74},
					Height = {default = 90, altered = 74}
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"DataFilename", "UI/COMPONENTS/INVENTORY/SQU_SLOTFAKELARGE.MBIN"},
				fields = {
					DataFilename = {default = "UI/COMPONENTS/INVENTORY/SQU_SLOTFAKELARGE.MBIN", altered = "UI/COMPONENTS/INVENTORY/SQU_SLOTFAKESMALL.MBIN"},
					Width = {default = 90, altered = 74},
					Height = {default = 90, altered = 74}
				},
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.smallerCargoIcons = smallerCargoIcons

--#endregion
-- END OF TWEAKS

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_inventoryTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS, UNUSED_VARIABLE",
	ADD_FILES = lyr:processTweakFiles(),
	MODIFICATIONS =	lyr:processTweakTables()
}