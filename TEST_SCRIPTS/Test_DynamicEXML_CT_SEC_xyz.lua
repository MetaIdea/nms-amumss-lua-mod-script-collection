-- Rerollable Upgrade Modules
-- Author: DarkScythe
-- Date Created: Sep 02, 2022
-- Last Updated: Aug 06, 2023
--------------------------------------------------------------------------------
modName		= "Test_DynamicEXML_CT_SEC_xyz"
batchName	= ""
modAuthor	= "DarkScythe/Wbertro"
modMaint	= "Wbertro"
modDesc		= "Testing of dynamically created EXML_CT and SEC_xyz usage"
modVer		= "1.0"
scriptVer	= ""
gameVer		= ""

reroll_G	= true	-- Glass/Sentinel Upgrades
reroll_X	= false	-- X-Class Upgrades
reroll_S	= false	-- S-Class Upgrades
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

if GUIF(inputPrompts.tweakSettings, 1) then
	reroll_G	= GUIF(inputPrompts.toggleG, 1)
	reroll_X	= GUIF(inputPrompts.toggleX, 1)
	reroll_S	= GUIF(inputPrompts.toggleS, 1)
	reroll_A	= GUIF(inputPrompts.toggleA, 1)
	reroll_B	= GUIF(inputPrompts.toggleB, 1)
	reroll_C	= GUIF(inputPrompts.toggleC, 1)
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

-- This table will be filled automatically based on the classes selected above
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
	MOD_DESCRIPTION	= modDesc,
	MOD_AUTHOR			= modAuthor,
	LUA_AUTHOR			= modAuthor,
	MOD_MAINTENANCE	= modMaint,
	NMS_VERSION			= gameVer,
	-- VCT function calls are sent as strings, so selene will complain about
	-- everything related to it being unused
	-- Selene also complains about the shorthand initialization of a table later
	AMUMSS_SUPPRESS_MSG	= "UNUSED_VARIABLE, UNDEFINED_VARIABLE",
	AMUMSS_SUPPRESS_MSG	= "UNUSED_VARIABLE",
	AMUMSS_SUPPRESS_MSG	= "UNDEFINED_VARIABLE",

	-- Actual mod container
	MODIFICATIONS		= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE	= procTechTable,
					EXML_CHANGE_TABLE	= {
						-- This table will be filled in automatically via a loop
					}
				},
				{
					MBIN_FILE_SOURCE	= prodTable,
					MBIN_FS_DISCARD		= "TRUE",
					EXML_CHANGE_TABLE	= {
						-- This table is only being read from, to copy some info
						-- Nothing is written to it, and it will be discarded
						-- Thus, there is no need to merge anything here
					}
				},
				{
					MBIN_FILE_SOURCE	= techTable,
					EXML_CHANGE_TABLE	= {
						{
							-- For each of the template entries to be modified
							-- they will need their Requirements section replaced
							-- Make a copy of such a section and save for later
							PKW = {"Requirements", "GcTechnologyRequirement.xml"},
							SEC_SAVE_TO = "reqSnippet",
						},
						{
							-- The first section found isn't for a product
							-- Update it now so we only have to do so once
							SEC_EDIT = "reqSnippet",
              SEC_KEEP = "TRUE",
							VCT = {
								{"InventoryType", "Product"},
								{"Amount", 1},
							},
						},
					}
				},
			}
		},
	} --18 global replacements
}
------------------------------------------------
---- END OF MAIN AMUMSS MOD CONTAINER TABLE ----
------------------------------------------------

-- We'll be referring to these often now to insert entries into them
-- Cache them into variables to make referencing easier and faster
local upgradeTable	= NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[1].EXML_CHANGE_TABLE
print("*** Script information ***")
printf("  type(upgradeTable) = %s",type(upgradeTable))
local moduleTable	= NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[2].EXML_CHANGE_TABLE
printf("   type(moduleTable) = %s",type(moduleTable))
local templateTable	= NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[3].EXML_CHANGE_TABLE
printf(" type(templateTable) = %s",type(templateTable))
print("")

-- local gIsLimitedArguments = false -- normal behavior = true

-- if not gIsLimitedArguments then
  -- print("")
  -- print("  =======>>>>>>>>>  TESTING the use of a table as My_func argument  <<<<<<<<<<=========")
  -- print("")

  MyTable = {}
-- end

-- This loop will be run when the script loads, before AMUMSS begins processing
-- It will add the first set of instructions for AMUMSS to begin scanning
for i = 1, #processClasses do
	-- If the class is selected, add a block to the first EXML_CHANGE_TABLE
	if processClasses[i].reroll then
    -- if not gIsLimitedArguments then
      MyTable[1] = i -- FOR TESTING, pass a table
    -- else
      -- MyTable = i -- pass an integer
    -- end
    
		upgradeTable[#upgradeTable + 1] = {
			-- For each eligible upgrade class, instruct AMUMSS to find
			-- all eligible upgrade modules of that class
			SKW = {"Quality", processClasses[i].classQual},
			REPLACE_TYPE = "ALL",

			-- Need to gather some information about the modules found
			-- Using VCT's ability to pass in custom functions to both save info
			-- and set up the next couple EXML_CHANGE_TABLE blocks
			-- A loop cannot be used to achieve this, nor can functions outside
			-- of this loop access the loop counter, so use VCT's 4th argument
			-- to pass it in 
			VCT = {
				{"ID", "saveTechID()", "", MyTable}, -- passing a table
				{"Template", "saveTempName()"},
			}
		}
	end
end

--[[
These are the functions necessary for saving information, and continuing to add
EXML_CHANGE_TABLE entries for each match as they are found

We cannot use a loop to do these because the loops will process BEFORE AMUMSS
can return any matching upgrade modules, and Lua will assume there are zero
entries to add

Lua is also only single-pass so it cannot "come back" to process loops after
AMUMSS has finished scanning for upgrades defined during the loop above

In that case, VCT's ability to run functions will allow it to add the entries
normally added via a loop to the next couple tables as each match is returned

Usually, these functions must be defined before being called, as in the loop above
But because VCT requires the calls be sent as strings, Lua doesn't think they've
been called yet, so we can define them here after the first loop instead
--]]

-- This is the first function called from VCT after SKW finds a match
-- All of these functions must be global, so that they can be called from AMUMSS
function saveTechID(propName, savedValue, unusedVal, classIndex)
	-- printf("        >>>>   propName = [%s]",tostring(propName))
	-- printf("        >>>> savedValue = [%s]",tostring(savedValue))
	-- printf("        >>>>  unusedVal = [%s]",tostring(unusedVal))
	-- printf("        >>>> classIndex = [%s]",tostring(classIndex))
  
  -- For each result, add/initialize a new subtable in the processUpgrades table
	processUpgrades[#processUpgrades + 1] = {uTech, uModule, uTemplate, uSuffix}

	-- Then save the name of the upgrade, and fetch/store the suffix for its class
	local newModule = processUpgrades[#processUpgrades]
	newModule.uTech = savedValue
	-- if type(classIndex) == "table" then
    -- classIndex = classIndex[1]
    -- printf("        >>>> classIndex = [%s]",tostring(classIndex))
  -- end
  newModule.uSuffix = processClasses[tonumber(classIndex[1])].classSuffix -- classIndex is a table

	-- We don't actually need to change anything after storing the information
	-- So tell AMUMSS to skip this line and move on
	return "IGNORE"
end

-- This is the second function called from VCT during the above SKW scan
-- Note that AMUMSS will process the previous function for ALL matches BEFORE
-- continuing to this one, meaning we cannot rely on the current size of
-- the processUpgrades table to sync up with each match calling this function
function saveTempName(propName, savedValue)
	-- Instead, a separate global counter must be used to track our index position
	-- SKW should return matches in the same order as before, at least
	tempIndex = tempIndex + 1
	local currentModule = processUpgrades[tempIndex]

	-- Once found, add the the template name to the associated subtable
	currentModule.uTemplate = savedValue

	-- Then call the function to add entries for this module to
	-- the next EXML_CHANGE_TABLE block (the second file) to find more info
	addProdTableEntry(tempIndex)

	-- Eventually need to point this upgrade to a modified template, so do it now
	return savedValue .. currentModule.uSuffix
end

-- This function will be called once per SKW result above
function addProdTableEntry(indexPos)
	-- Add an entry to the EXML_CHANGE_TABLE block of the second file
	-- This will find the last piece of info needed for each module
	moduleTable[#moduleTable + 1] = {
		-- Now that the upgrade name is available, it can be used for another search
		SKW = {"DeploysInto", processUpgrades[indexPos].uTech},
		REPLACE_TYPE = "ALL",

		-- Use VCT to call another function from here to save the info needed
		VCT = {
			{"ID", "saveModuleID()"},
		}
	}
end

-- This function will be called from the VCT in the second file, once per module
function saveModuleID(propName, savedValue)
	-- As before, we need another global counter to track the index position
	-- Although this occurs after the other one is no longer needed, there's
	-- not a clean way to reset it before this runs
	modIndex = modIndex + 1

	-- Once found, add the module name to the associated subtable
	processUpgrades[modIndex].uModule = savedValue

	-- With the subtable complete, call the function to add the final set of
	-- EXML_CHANGE_TABLE entries to the third and final file/block
	addTechTableEntry(modIndex)

	-- No change is necessary here, so tell AMUMSS to skip the line and move on
	return "IGNORE"
end

-- Final function called from the VCT entry for each module processed through
-- the second file
-- Will add all the blocks necessary to copy, modify, and insert the EXML to
-- create a new, customized template section into the original MBIN
function addTechTableEntry(indexPos)
	-- Cache the current module's subtable because of frequent referencing
	local currentModule = processUpgrades[indexPos]
	
	-- For each module, we must perform all of the following tasks

	templateTable[#templateTable + 1] = {
		-- Edit the saved Requirements section with the current module name
		SEC_EDIT = "reqSnippet",
		VCT = {
			{"ID", currentModule.uModule},
		}
	}

	templateTable[#templateTable + 1] = {
		-- Search for, and make a copy of the Template section, but only if
		-- a copy has not already been made, because upgrades of the same type
		-- share the same template, even for different classes

		-- We should only edit the copy; the original section needs to remain
		-- untouched, as upgrade classes not selected need to continue using it
		SEC_UNSAVED = currentModule.uTemplate .. "_Template",
    SEC_KEEP = "TRUE",
		SKW = {"ID", currentModule.uTemplate},
	}

	templateTable[#templateTable + 1] = {
		-- Editing the saved copy of the template
		SEC_EDIT = currentModule.uTemplate .. "_Template",

		-- We need to clear out the entire Requirements block
		PKW = "GcTechnologyRequirement.xml",
		REPLACE_TYPE = "ALL",
		REMOVE = "SECTION",
	}

	templateTable[#templateTable + 1] = {
		SEC_EDIT = currentModule.uTemplate .. "_Template",

		-- With the Requirements section cleared, there is now only a single ID
		-- field left, so we can blind-reassign it to our new template name
		-- This must match the one we changed each upgrade to point to earlier
		VCT = {
			{"ID", currentModule.uTemplate .. currentModule.uSuffix},
		}
	}

	templateTable[#templateTable + 1] = {
		SEC_EDIT = currentModule.uTemplate .. "_Template",

		-- Now add in the customized Requirements section previously saved
		PKW = "Requirements",
		SEC_ADD_NAMED = "reqSnippet",
	}

	templateTable[#templateTable + 1] = {
		-- Now search the original file for the original template section
		SKW = {"ID", currentModule.uTemplate},

		-- Add our new custom template immediately after it, completing the hookup
		SEC_ADD_NAMED = currentModule.uTemplate .. "_Template",
		ADD_OPTION = "ADDafterSECTION",
	}
end