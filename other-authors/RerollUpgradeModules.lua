-- Rerollable Upgrade Modules
-- Author: DarkScythe
-- Date Created: Sep 02, 2022
-- Last Updated: Aug 06, 2023
--------------------------------------------------------------------------------
modName		= "RerollUpgradeModules"
batchName	= ""
modAuthor	= "DarkScythe"
modMaint	= "DarkScythe"
modDesc		= "Returns upgrade modules on dismantling"
modVer		= "0.2"
scriptVer	= "a"
gameVer		= "4.38"

reroll_G	= true	-- Glass/Sentinel Upgrades
reroll_X	= true	-- X-Class Upgrades
reroll_S	= true	-- S-Class Upgrades
reroll_A	= false	-- A-Class Upgrades
reroll_B	= false	-- B-Class Upgrades
reroll_C	= false	-- C-Class Upgrades

procTechTable	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"
prodTable		= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"
techTable		= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

inputPrompts		= {
	tweakSettings	= {false,
[[	Would you like to customize the types of modules that are rerollable?
	Upgrade classes not set to be rerollable will instead return crafting materials as before.
	Pressing ENTER without a response to any question will use CURRENT settings from the Lua script.
]]},
	toggleG			= {reroll_G,
[[	[#1 / 6] Do you want rerollable Sentinel/Glass Shard upgrade modules?
	Default: Y | Current: >> ]] .. (reroll_G and "Y" or "N") .. [[ <<
]]},
	toggleX			= {reroll_X,
[[	[#2 / 6] Do you want rerollable X-Class upgrade modules?
	Default: Y | Current: >> ]] .. (reroll_X and "Y" or "N") .. [[ <<
]]},
	toggleS			= {reroll_S,
[[	[#3 / 6] Do you want rerollable S-Class upgrade modules?
	This includes S-Class Living Ship upgrade modules.
	Default: Y | Current: >> ]] .. (reroll_S and "Y" or "N") .. [[ <<
]]},
	toggleA			= {reroll_A,
[[	[#4 / 6] Do you want rerollable A-Class upgrade modules?
	This includes A-Class Living Ship upgrade modules.
	Default: N | Current: >> ]] .. (reroll_A and "Y" or "N") .. [[ <<
]]},
	toggleB			= {reroll_B,
[[	[#5 / 6] Do you want rerollable B-Class upgrade modules?
	This includes B-Class Living Ship upgrade modules.
	Default: N | Current: >> ]] .. (reroll_B and "Y" or "N") .. [[ <<
]]},
	toggleC			= {reroll_C,
[[	[#6 / 6] Do you want rerollable C-Class upgrade modules?
	This includes C-Class Living Ship upgrade modules.
	Default: N | Current: >> ]] .. (reroll_C and "Y" or "N") .. [[ <<
]]},
}

if GUIF(inputPrompts.tweakSettings, 20) then
	reroll_G	= GUIF(inputPrompts.toggleG, 10)
	reroll_X	= GUIF(inputPrompts.toggleX, 10)
	reroll_S	= GUIF(inputPrompts.toggleS, 10)
	reroll_A	= GUIF(inputPrompts.toggleA, 5)
	reroll_B	= GUIF(inputPrompts.toggleB, 5)
	reroll_C	= GUIF(inputPrompts.toggleC, 5)
end

assert(reroll_G or reroll_X or reroll_S or reroll_A or reroll_B or reroll_C,
	"ERROR: Zero upgrade classes selected for processing. Aborting script...")

processClasses = {
	{reroll = reroll_G,	classQual = "Sentinel",		classSuffix = "_G"},
	{reroll = reroll_X,	classQual = "Illegal",		classSuffix = "_X"},
	{reroll = reroll_S,	classQual = "Legendary",	classSuffix = "_S"},
	{reroll = reroll_A,	classQual = "Epic",			classSuffix = "_A"},
	{reroll = reroll_B,	classQual = "Rare",			classSuffix = "_B"},
	{reroll = reroll_C,	classQual = "Normal",		classSuffix = "_C"},
}

-- This table will be filled automatically based on the classes selected
processUpgrades = {}

-- We need these counters because we cannot rely on loops for part of the script
tempIndex = 0
modIndex = 0

-----------------------------------------------
---- BEGIN MAIN AMUMSS MOD CONTAINER TABLE ----
-----------------------------------------------
-- This is still just a Lua table at its core, so you can add to it later
-- In fact, the majority of this will be filled in via loops and functions
NMS_MOD_DEFINITION_CONTAINER	= {
	MOD_FILENAME		= table.concat({"__", modName, "_v", modVer, ".", gameVer, scriptVer, ".pak"}),
	MOD_BATCHNAME		= batchName ~= "" and (batchName .. ".pak") or nil,
	MOD_DESCRIPTION		= modDesc,
	MOD_AUTHOR			= modAuthor,
	LUA_AUTHOR			= modAuthor,
	MOD_MAINTENANCE		= modMaint,
	NMS_VERSION			= gameVer,
	-- VCT function calls are sent as strings, so selene will complain about
	-- everything related to it being unused
	AMUMSS_SUPPRESS_MSG	= "UNUSED_VARIABLE",

	-- Actual mod container
	MODIFICATIONS		= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE	= procTechTable,
					EXML_CHANGE_TABLE	= {
					}
				},
				{
					MBIN_FILE_SOURCE	= prodTable,
					MBIN_FS_DISCARD		= "TRUE",
					EXML_CHANGE_TABLE	= {
						-- This table is only being read from
						-- Nothing is written to it, and will be discarded
						-- Thus, there is no need to merge anything here
					}
				},
				{
					MBIN_FILE_SOURCE	= techTable,
					EXML_CHANGE_TABLE	= {
						{
							PKW = {"Requirements", "GcTechnologyRequirement.xml"},
							SEC_SAVE_TO = "reqSnippet",
						},
						{
							SEC_EDIT = "reqSnippet",
							VCT = {
								{"InventoryType", "Product"},
								{"Amount", 1},
							},
							-- SEC_KEEP = "TRUE",
						},
					}
				},
			}
		},
	}
}
------------------------------------------------
---- END OF MAIN AMUMSS MOD CONTAINER TABLE ----
------------------------------------------------

local upgradeTable	= NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[1].EXML_CHANGE_TABLE
local moduleTable	= NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[2].EXML_CHANGE_TABLE
local templateTable	= NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[3].EXML_CHANGE_TABLE

function saveTechID(propName, savedValue, unusedVal, classIndex)
	processUpgrades[#processUpgrades + 1] = {uTech, uModule, uTemplate, uSuffix}

	local newModule = processUpgrades[#processUpgrades]
	newModule.uTech = savedValue
	newModule.uSuffix = processClasses[tonumber(classIndex)].classSuffix

	return "IGNORE"
end

function saveTempName(propName, savedValue)
	tempIndex = tempIndex + 1
	local currentModule = processUpgrades[tempIndex]
	currentModule.uTemplate = savedValue

	addProdTableEntry(tempIndex)

	return savedValue .. currentModule.uSuffix
end

function saveModuleID(propName, savedValue)
	modIndex = modIndex + 1
	processUpgrades[modIndex].uModule = savedValue

	addTechTableEntry(modIndex)

	return "IGNORE"
end

function addProdTableEntry(indexPos)
	moduleTable[#moduleTable + 1] = {
		SKW = {"DeploysInto", processUpgrades[indexPos].uTech},
		REPLACE_TYPE = "ALL",
	-- for each module:
	-- save "value" of "ID" to processUpgrades[i]["uModule"]
		VCT = {
			{"ID", "saveModuleID()"},
		}
	}
end

function addTechTableEntry(indexPos)
	local currentModule = processUpgrades[indexPos]
		-- for each module:
	templateTable[#templateTable + 1] = {
	-- edit saved snippet
	-- VCT "ID", processUpgrades[i].uModule
		SEC_EDIT = "reqSnippet",
		VCT = {
			{"ID", currentModule.uModule},
		}
	}

	-- continue in templateTable
	templateTable[#templateTable + 1] = {
	-- SKW "ID", processUpgrades[i].uTemplate
	-- save entire section
		SEC_UNSAVED = currentModule.uTemplate .. "_Template",
		SKW = {"ID", currentModule.uTemplate},
		-- SEC_SAVE_TO = processUpgrades[indexPos].uTemplate .. "_Template",
		-- SEC_KEEP = "TRUE",
	}

	-- edit saved section (potentially make another copy to edit so we can reuse instead of looking it up again)
	templateTable[#templateTable + 1] = {
		SEC_EDIT = currentModule.uTemplate .. "_Template",
	-- VCT "ID", {:}processUpgrades[i].uSuffix to append the suffix to template name
	-- PKW "GcTechnologyRequirement.xml"
	-- REMOVE = "SECTION"
		PKW = "GcTechnologyRequirement.xml",
		REPLACE_TYPE = "ALL",
		REMOVE = "SECTION",
	}

	templateTable[#templateTable + 1] = {
		SEC_EDIT = currentModule.uTemplate .. "_Template",
		-- SKW = {"ID", processUpgrades[indexPos].uTemplate},
		VCT = {
			{"ID", currentModule.uTemplate .. currentModule.uSuffix},
		}
	}

	templateTable[#templateTable + 1] = {
		SEC_EDIT = currentModule.uTemplate .. "_Template",
	-- PKW "Requirements"
	-- SEC_ADD snippet
		PKW = "Requirements",
		SEC_ADD_NAMED = "reqSnippet",
	}

	templateTable[#templateTable + 1] = {
	-- SEC_ADD saved template
		SKW = {"ID", currentModule.uTemplate},
		SEC_ADD_NAMED = currentModule.uTemplate .. "_Template",
		ADD_OPTION = "ADDafterSECTION",
	}
end


for i = 1, #processClasses do
	if processClasses[i].reroll then
		-- look through upgradeTable
		-- use SKW "Quality" / classQual to find ALL modules
		upgradeTable[#upgradeTable + 1] = {
			SKW = {"Quality", processClasses[i].classQual},
			REPLACE_TYPE = "ALL",
		-- for each result:
		-- save "value" of "ID" to processUpgrades[#processUpgrades + 1]["uTech"]
		-- copy processClasses[i].classSuffix to processUpgrades[#processUpgrades + 1]["uSuffix"]

		-- save "value" of "Template" to processUpgrades[#processUpgrades + 1]["uTemplate"]
		-- VCT "Template", {:}uSuffix
			VCT = {
				{"ID", "saveTechID()", nil, i},
				{"Template", "saveTempName()"},
			}
		}
	end
end