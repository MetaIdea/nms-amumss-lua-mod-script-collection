local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Inventory Tweaks 5.20]]
local gameVersion = 131597

--[=============================================================================================================================[
	Every Lua script of mine requires a few other files to be located in the 'ModScripts\ModHelperScripts\' folder
	Extract the archive to 'ModScripts\' as is and remove/adjust scripts after. Avoid those in 'ModHelperScripts\'

	Below in the 'tweakStates' table are modification names and what they do is commented next to them
	Some modifications may be disabled by default; the double dashes '--' at the beginning of a line will cause it to get ignored

	Ways to disable a modification: 
		• RECOMMENDED: Add double dashes at the beginning of the line / ex: '--modification =...'
		• Set the value of the modification to false / ex: 'modification = false,'
		• Use the 'lyr_tweakOverrides.lua' file and disable modifications from there

	Ways to (re)enable a modification:
		• RECOMMENDED: Remove double dashes from the beginning of the line
		• Set the value of the modification to its original value
		• Use the 'lyr_tweakOverrides.lua' file and enable / change modifications from there

	Depending on their function and/or relevance, some modifications may have duplicates in my other scripts
	The third option for enabling / disabling modifications through 'lyr_tweakOverrides.lua' file will affect all

	If the mentioned file ('lyr_tweakOverrides.lua') is missing, you may get harmless warnings from AMUMSS
	It's advised to keep the file around even if it will not be utilized, just to avoid unwanted warning messages
--]=============================================================================================================================]

local tweakStates = {
	swapTechAndCargo = true,					-- swaps the position of tech and cargo inventories like in pre-4.0
	hideInventoryHeaders = true,				-- hides the cargo and tech header labels and icons (they don't play nice with freighters)
	restoreItemBars = true,						-- pre-4.0 item bars are restored for items with X/X display wherever possible
	smallerLabeledIcons = true,					-- makes the icons for the picked items / items in transfer pop-ups smaller
	smallerItemAmountFonts = true,				-- slightly decreases the size of fonts for the item amounts
--	inventoryBackground = "black",				-- options: "black"/"red"/"green"/"blue"/"purple"/"orange"/"yellow"; simple colour shift for the inventory background
--	popupScale = 0.75,							-- needs 'Enlarged UI Text' in 'Accessibility' enabled; inventory pop-ups (and only the pop-ups!) are smaller
	passiveProtectionTechs = true,				-- changes active hazard protection tech upgrades to passive ones (S:6-10%, A:3-5%, B:1-2%)
--	maximizedTechs = true,						-- procedurally generated tech upgrades provide all possible improvements with maximum values (UI can display 4 at most)
--	sameGroupTechLimit = 4,						-- sets the limit of same type of techs (game default is 3; setting to 4 will allow you to add 1 more)
--	installTechInCargo = true,					-- allows tech to be installed in cargo slots (like in pre-4.0)
--	superchargedSlotBonus = 1.5,				-- sets the bonus of the supercharged slots (game default is 1.25)
	refineryOutputCapacityMult = 5,				-- refinery product output capacity is multiplied by the given value
	silentPlayerRefinery = true,				-- removes the looping sound from personal refinery
	advancedPersonalRefiner = true,				-- options: true/"mk3"; former adds another slot to refiner mk1&mk2, latter adds a new mk3 technology 
	personalRefinerFuel = 10,					-- personal refiner fuel duration (value is in minutes; 10 means 10 minutes)
}

--#region METHODS

dofile("lyr_amumss/lyr_amumss.lua")

--#endregion
-- END OF METHODS

--#region TWEAKS

local swapTechAndCargo = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = {
				"UI/INVENTORYPAGE.MBIN",
				"UI/BUYSCREEN.MBIN"
			},
			{
				specialKeyWords = {"DataFilename", "UI/COMPONENTS/INVENTORY/SQU_INV_BOXTECH.MBIN"},
				fields = {
					PositionX = {default = 2106, 2106},
					PositionY = {default = 735, 1250},
					Width = {default = 1012, 1012},
					Height = {default = 290, 290},
					WidthPercentage = {default = false, false},
					HeightPercentage = {default = false, false},
					ConstrainProportions = {default = false, false},
					ConstrainAspect = {default = 1, 1},
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"ID", "TECHHEADER"},
				fields = {
					PositionX = {default = 1095, 1095},
					PositionY = {default = 701, 1220}
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"DataFilename", "UI/COMPONENTS/INVENTORY/SQU_INV_BOXREGULAR.MBIN"},
				fields = {
					PositionX = {default = 2106, 2106},
					PositionY = {default = 1060, 735},
					Width = {default = 1012, 1012},
					Height = {default = 480, 480},
					WidthPercentage = {default = false, false},
					HeightPercentage = {default = false, false},
					ConstrainProportions = {default = false, false},
					ConstrainAspect = {default = 1, 1},
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"ID", "CARGOHEADER"},
				fields = {
					PositionX = {default = 1095, 1095},
					PositionY = {default = 1030, 705}
				},
				replaceAll = true
			}
		},
		["UI/COMPONENTS/INVENTORY/SQU_INV_BOXTECH.MBIN"] = {
			{
				specialKeyWords = {"ID", "SQU_INV_TECH"},
				fields = {
					PositionX = {default = 2106, 2106},
					PositionY = {default = 735, 1260},
					Width = {default = 1012, 1012},
					Height = {default = 290, 290},
					WidthPercentage = {default = false, false},
					HeightPercentage = {default = false, false},
					ConstrainProportions = {default = false, false},
					ConstrainAspect = {default = 1, 1},
				},
				replaceAll = true
			}
		},
		["UI/COMPONENTS/INVENTORY/SQU_INV_BOXREGULAR.MBIN"] = {
			{
				specialKeyWords = {"ID", "SQU_INV_REGULAR"},
				fields = {
					PositionX = {default = 2106, 2106},
					PositionY = {default = 1070, 735},
					Width = {default = 1012, 1012},
					Height = {default = 480, 480},
					WidthPercentage = {default = false, false},
					HeightPercentage = {default = false, false},
					ConstrainProportions = {default = false, false},
					ConstrainAspect = {default = 1, 1},
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"ID", "INVENTORY"},
				fields = {
					PositionX = {default = 0, 0},
					PositionY = {default = 0, 0},
					Width = {default = 1010, 1010},
					Height = {default = 1000, 1000},
					WidthPercentage = {default = false, false},
					HeightPercentage = {default = false, false},
					ConstrainProportions = {default = false, false},
					ConstrainAspect = {default = 1.151079, 1.151079},
				},
				replaceAll = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.swapTechAndCargo = swapTechAndCargo

local hideInventoryHeaders = function(tweakName, tweakState)
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
					IsHidden = {default = false, true},
					A = 0
				},
				replaceAll = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.hideInventoryHeaders = hideInventoryHeaders

local restoreItemBars = function(tweakName, tweakState)
	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BigPickingUsesNumbers = {default = true, false},
					ReplaceItemBarWithNumbers = {default = true, false}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.restoreItemBars = restoreItemBars

local smallerLabeledIcons = function(tweakName, tweakState)
	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BigPicking = {default = true, false}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.smallerLabeledIcons = smallerLabeledIcons

local smallerItemAmountFonts = function(tweakName, tweakState)
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
					FontHeight = "@*"..0.8,
					Height = "@*"..0.8
				},
				replaceAll = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.smallerItemAmountFonts = smallerItemAmountFonts

local inventoryBackground = function(tweakName, tweakState)
	local option = lyr:checkTweak("inventoryBackground"); if not option then return false end; option = option:lower()
	local options = {
		black = true,
		red = true,
		green = true,
		blue = true,
		purple = true,
		orange = true,
		yellow = true,
	}; if not options[option] then return false end

	local files = {
		{[[\lyr_files\inventoryBackground\]]..option..[[.DDS]], [[\TEXTURES\UI\FRONTEND\BACKGROUNDS\INVENTORYBG.DDS]]}
	}

	return files
end
lyr.tweakFiles.inventoryBackground = inventoryBackground

local popupScale = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 0.75 or math.min(math.max(0.25, tweakState), 1)

	local tweak = {
		{
			mbinPaths = [[GCUIGLOBALS.GLOBAL.EXML]],
			{
				fields = {
					AccessibleUIPopupScale = tweakState,
					AccessibleUIHUDPopupScale = tweakState
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.popupScale = popupScale

local passiveProtectionTechs = function(tweakName, tweakState)
	local targetSections = {
		{"StatsType", "Suit_Protection_Cold"},
		{"StatsType", "Suit_Protection_Heat"},
		{"StatsType", "Suit_Protection_Toxic"},
		{"StatsType", "Suit_Protection_Radiation"},
		{"StatsType", "Suit_Underwater"},
	}

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
					Upgrade = {default = false, true},
					Chargeable = {default = true, false},
					ChargeAmount = {default = 80, 100}
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
					{"ID", "UP_HOT1"},
					{"ID", "UP_TOX1"},
					{"ID", "UP_RAD1"},
					{"ID", "UP_UNW1"},
				},
				pkw = "GcProceduralTechnologyStatLevel.xml",
				findSections = targetSections,
				fields = {
					ValueMin = {default = 200, 1.01},
					ValueMax = {default = 300, 1.02}
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
				pkw = "GcProceduralTechnologyStatLevel.xml",
				findSections = targetSections,
				fields = {
					ValueMin = {default = 240, 1.03},
					ValueMax = {default = 320, 1.05}
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
				pkw = "GcProceduralTechnologyStatLevel.xml",
				findSections = targetSections,
				fields = {
					ValueMin = {default = 280, 1.06},
					ValueMax = {default = 360, 1.10}
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_COLD1"},
					{"ID", "UP_COLD2"},
					{"ID", "UP_COLD3"},
				},
				pkw = "GcProceduralTechnologyStatLevel.xml",
				findSections = targetSections,
				fields = {
					StatsType = {default = "Suit_Protection_Cold", "Suit_Protection_ColdDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_HOT1"},
					{"ID", "UP_HOT2"},
					{"ID", "UP_HOT3"},
				},
				pkw = "GcProceduralTechnologyStatLevel.xml",
				findSections = targetSections,
				fields = {
					StatsType = {default = "Suit_Protection_Heat", "Suit_Protection_HeatDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_TOX1"},
					{"ID", "UP_TOX2"},
					{"ID", "UP_TOX3"},
				},
				pkw = "GcProceduralTechnologyStatLevel.xml",
				findSections = targetSections,
				fields = {
					StatsType = {default = "Suit_Protection_Toxic", "Suit_Protection_ToxDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_RAD1"},
					{"ID", "UP_RAD2"},
					{"ID", "UP_RAD3"},
				},
				pkw = "GcProceduralTechnologyStatLevel.xml",
				findSections = targetSections,
				fields = {
					StatsType = {default = "Suit_Protection_Radiation", "Suit_Protection_RadDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_UNW1"},
					{"ID", "UP_UNW2"},
					{"ID", "UP_UNW3"},
				},
				pkw = "GcProceduralTechnologyStatLevel.xml",
				findSections = targetSections,
				fields = {
					StatsType = {default = "Suit_Underwater", "Suit_Protection_WaterDrain"},
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.passiveProtectionTechs = passiveProtectionTechs

local maximizedTechs = function(tweakName, tweakState)
	local tweak = {
		["GCPLAYERGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					LuckyWithTech = {default = false, true}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.maximizedTechs = maximizedTechs

local sameGroupTechLimit = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 4 or math.max(1, math.floor(tweakState))

	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MaxNumSameGroupTech = {default = 3,	tweakState}
				}
			}
		},
	}

	return tweak
end
lyr.tweakTables.sameGroupTechLimit = sameGroupTechLimit

local installTechInCargo = function(tweakName, tweakState)
	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					TechMustBeInTechInventory = {default = true, false}
				}
			}
		},
	}

	return tweak
end
lyr.tweakTables.installTechInCargo = installTechInCargo

local superchargedSlotBonus = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 1.25 or math.max(1.25, tweakState)

	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					SpecialTechSlotBonus = {default = 1.25, tweakState}
				}
			}
		},
	}

	return tweak
end
lyr.tweakTables.superchargedSlotBonus = superchargedSlotBonus

local refineryOutputCapacityMult = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 5 or math.floor(tweakState)

	local tweak = {
		["METADATA\\GAMESTATE\\DIFFICULTYCONFIG.MBIN"] = {
			{
				precedingKeyWords = "MaxProductStackSizes",
				fields = {
					UIPopup = "@*"..math.max(1, math.min(9999, tweakState))
				},
				replaceAll = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.refineryOutputCapacityMult = refineryOutputCapacityMult

local smallerCargoIcons = function(tweakName, tweakState)	-- deprecated
	local tweak = {
		["UI/COMPONENTS/INVENTORY/SQU_INV_BOXREGULAR.MBIN"] = {
			{
				specialKeyWords = {"DataFilename", "UI/COMPONENTS/INVENTORY/SQU_INV_SLOT_LARGE.MBIN"},
				fields = {
					DataFilename = {default = "UI/COMPONENTS/INVENTORY/SQU_INV_SLOT_LARGE.MBIN", "UI/COMPONENTS/INVENTORY/SQU_INV_SLOT_SMALL.MBIN"},
					Width = {default = 90, 74},
					Height = {default = 90, 74}
				},
				replaceAll = true
			},
			{
				specialKeyWords = {"DataFilename", "UI/COMPONENTS/INVENTORY/SQU_SLOTFAKELARGE.MBIN"},
				fields = {
					DataFilename = {default = "UI/COMPONENTS/INVENTORY/SQU_SLOTFAKELARGE.MBIN", "UI/COMPONENTS/INVENTORY/SQU_SLOTFAKESMALL.MBIN"},
					Width = {default = 90, 74},
					Height = {default = 90, 74}
				},
				replaceAll = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.smallerCargoIcons = smallerCargoIcons

local silentPlayerRefinery = function()
	local noSound, audioPath = [[\lyr_files\noSound.wem]], [[\AUDIO\WINDOWS\]]

	-- Obj_PortableRefinery_Start
	local files = {"939615957"}

	---@diagnostic disable-next-line: assign-type-mismatch
	for k, v in next, files do files[k] = {noSound, audioPath..v..".WEM"} end

	return files
end
lyr.tweakFiles.silentPlayerRefinery = silentPlayerRefinery

local advancedPersonalRefiner = {}
advancedPersonalRefiner.files = function(tweakName, tweakState)
	if tweakState ~= "mk3" then return false end

	local files = {
		{[[\lyr_files\advancedPersonalRefiner\LYR_PERSONALREFINER.DDS]], [[\LYR\TEXTURES\]]},
	}

	return files
end
advancedPersonalRefiner.tweaks = function(tweakName, tweakState)
	local tweak = tweakState == "mk3" and {
		{
			mbinPaths = [[METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.EXML]],
			{
				skw = [[<Property name="ID" value="SUIT_REFINER2" />]],
				copySection = true
			},
			{
				editSection = true,
				fields = {
					ID = "SUIT_REFINER3",
					Name = [[PERSONAL REFINER MK 3]],
					NameLower = [[Personal Refiner Mk 3]],
					Subtitle = [[Self-Mounted Advanced Refiner]],
					Description = [[Ultimate portable refinery technology, bringing &lt;TECHNOLOGY&gt;Large Refiner&lt;&gt; capabilities directly to the user's Exosuit.&#xA;&#xA;Unit requires &lt;FUEL&gt;fuel&lt;&gt; and is able to refine more complex recipes than the standard personal refiner unit.]],
					FileName = [[LYR/TEXTURES/LYR_PERSONALREFINER.DDS]],
					FragmentCost = 800,
				}
			},
			{
				editSection = true,
				pkw = "Requirements",
				fields = {
					Amount = "@*2"
				},
				replaceAll = true
			},
			{
				editSection = true,
				pkw = "StatBonuses",
				fields = {
					Bonus = 3,
					Level = 5
				}
			},
			{
				skw = [[<Property name="ID" value="SUIT_REFINER2" />]],
				pasteSectionAfter = true
			}
		},
		{
			mbinPaths = [[METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.EXML]],
			{
				skw = [[<Property name="Unlockable" value="SUIT_REFINER2" />]],
				copySection = true,
			},
			{
				editSection = true,
				fields = {
					Unlockable = "SUIT_REFINER3"
				}
			},
			{
				skw = [[<Property name="Unlockable" value="SUIT_REFINER2" />]],
				pkw = "Children",
				pasteSection = true
			}
		}
	} or {
		{
			mbinPaths = [[METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.EXML]],
			{
				skw = {
					[[<Property name="ID" value="SUIT_REFINER" />]],
					[[<Property name="ID" value="SUIT_REFINER2" />]]
				},
				pkw = "StatBonuses",
				fields = {
					Bonus = "@+1",
					Level = "@+1"
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.advancedPersonalRefiner = advancedPersonalRefiner.tweaks
lyr.tweakFiles.advancedPersonalRefiner = advancedPersonalRefiner.files

local personalRefinerFuel = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 600 or math.max(300, tweakState*60)

	local tweak = {
		{
			mbinPaths = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.EXML]],
			{
				skw = [[<Property name="Id" value="MAINT_FUEL1" />]],
				fields = {
					AmountEmptyTimePeriod = tweakState
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.personalRefinerFuel = personalRefinerFuel

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
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS, UNUSED_VARIABLE, MIXED_TABLE, NUMBERtoSTRING",
	ADD_FILES = lyr:processTweakFiles(),
	MODIFICATIONS =	lyr:processTweakTables()
}