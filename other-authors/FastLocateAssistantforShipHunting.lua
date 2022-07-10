-- Ship Hunting Assistant // Will NOT affect default seeds!
-- Author: DarkScythe
-- Date Created: July 3, 2022
-- Last Updated: July 9, 2022
--------------------------------------------------------------------------------
modName		= "FastLocateAssistantforShipHunting"
modAuthor	= "DarkScythe"
modDesc		= "Speeds up ship hunting by filtering to specific types and increases spawn rates WITHOUT affecting default seeds so you get the same ships as vanilla players in every system. Helpful for players who want to share coordinates of interesting finds with others."
modVer		= "1.0."
scriptVer	= "a"
gameVer		= "3.93"
-- Credits --
-- Thanks to Lenni and Apex Fatality for the idea of isolating ship models.
-- Thanks to Gumsk for the idea of speeding up NPC spawns.

--[[
Toggle ship types to look for here (mix and match using true/false)
-----------------------------------------------------------------------------
If looking for Exotics, it is recommended to disable all other types as well.
If other types are enabled alongside Exotics, it is assumed the primary
target are the other types, and Exotics may take a while to spawn.

You can technically disable everything, but then nothing will spawn.
You can also enable everything and ship pools will be as normal, but with
extra spawns and boosted turnover at trading posts; However, AMUMSS will throw a
harmless warning because there will be nothing to modify in the first table.
--]]
huntExotics			= true	-- Extreme spawn rate boost if all others are disabled
huntExplorers		= false
huntFighters		= false
huntHaulers			= false
huntShuttles		= false	-- I don't know why anyone wants to, but if you do, go ahead
huntSolars			= false

--[[
Optional toggles for additional settings
-----------------------------------------------------------------------------
Note that enabling either of these will cause the mod to load additional files.
These files will then conflict with any other mod that alters those files.

Forcing S-Class will force *everything* in the system to be S-class
including Ships, Freighters, and Multitool Cabinets.
This may be unwanted if you're trying to share coordinates, as a cabinet may not
normally be an S class.

Spawn Frequency Multiplier can be adjusted as well, but it will also load
another file and potentially cause conflict with other mods using that file.
Honestly, I didn't notice much of a difference using it, so default is off.
--]]
forceSClass				= false
modSpawnFreqMultis		= false
spawnFreqMultiOverride	= 100	-- Only used if modSpawnFreqMultis is enabled
								-- Default values range from 0.5 to 5

---- **** END OF USER-ADJUSTABLE SETTINGS **** ----
-----------------------------------------------------------------------------
---- Alter following code only if this mod is no longer being maintained ----
-----------------------------------------------------------------------------

--[[
These are the files being used by this mod.
Adjust these if the filenames or directory structures ever change,
and the mod is no longer being maintained.

This mod will conflict with any other mod that alters these same files.
A spot for merging in code from conflicting mods is provided in the tables below.
Note that ONLY code from AMUMSS' EXML_CHANGE_TABLE blocks should be pasted there.

Two files are optional, and should only be active (and conflict with other mods)
if their associated optional toggles are enabled; Otherwise they shouldn't load.
Space for merging code for those two are in two separate functions at the bottom.
--]]

-- Main files being used by this mod
shipManagerFile		= "METADATA\SIMULATION\SPACE\AISPACESHIPMANAGER.MBIN"
spawnTableFile		= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"
shipGlobalFile		= "GCAISPACESHIPGLOBALS.GLOBAL.MBIN"

-- Optional files that should only be in use when their toggles are enabled
-- Will NOT conflict with other mods using these files if toggles remain disabled
inventoryTableFile	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN"
solargenGlobalFile	= "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"

-----------------------------------------------------------------------------
--
-- Begin Definition of Variables and Data
--
-----------------------------------------------------------------------------

--[[
Starting with information from AISPACESHIPMANAGER
-------------------------------------------------
Add/edit entries to/in this table if new ship types get added/modified.
Remember to add a new toggle at the top for new ship types.
Path to each model's Scene files should be exactly as found in the above file.
Ignoring Freighters and Living Ships because the latter doesn't spawn naturally.
--]]
shipInfo = {
	{shipActive = huntExotics,		shipFile = "MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN"},
	{shipActive = huntExplorers,	shipFile = "MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN"},
	{shipActive = huntFighters,		shipFile = "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN"},
	{shipActive = huntHaulers,		shipFile = "MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN"},
	{shipActive = huntShuttles,		shipFile = "MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN"},
	{shipActive = huntSolars,		shipFile = "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN"},
}

-- We need to find keywords that let us specify which code block to modify.
-- Still using AISPACESHIPMANAGER for these.
-- Alter these values if they ever change to something else at some point.
shipSection		= "Civilian"	-- We're not interested in Player/Pirate/Police factions
fileHandle		= "Filename"	-- In case they change this again in the future

-- Time to figure out what ship types we need to work with.
-- These two will be filled in automatically in a moment.
-- **** DO NOT CHANGE THESE ****
-- Breaking these and the next loop will break the whole mod
shipsToRemove	= {}
activeShipCount	= 0

--[[
This loop does a few things:
First, it checks our shipInfo table to see which ship types have been enabled.

Next, disabled ones have entries created for AMUMSS to overwrite their model files
with empty strings to effectively prevent the game from being able to load them.
These are loaded into the empty table we just declared and will be called within
the AMUMSS mod container itself later since that container doesn't exist yet.

Finally, it counts up how many enabled ship types there are and updates the
global counter so we can use it for spawn rate adjustments.
--]]
for i = 1, #shipInfo do
	if not shipInfo[i].shipActive then
		shipsToRemove[#shipsToRemove + 1] = {
			["PRECEDING_FIRST"]		= "TRUE",
			["PRECEDING_KEY_WORDS"]	= shipSection,
			["SPECIAL_KEY_WORDS"]	= {fileHandle, shipInfo[i].shipFile},
			["VALUE_CHANGE_TABLE"]	= {
				{fileHandle, ""}
			},
		}
	else
		activeShipCount = activeShipCount + 1
	end
end

--[[
Define some multipliers for various spawn rate numbers we need.
These values have been tested to give pretty good results as-is
but can be altered for specific needs.
--]]

-- Space generally has fewer spawns than on-planet, so we'll boost those more
spaceSpawnMulti		= 2
-- If Exotics are the ONLY ship type enabled, we need to boost spawns dramatically
-- since their natural spawn rate is so low, otherwise you'd likely see nothing at all
exoticSpawnMulti	= (huntExotics and not (huntExplorers or huntFighters or huntHaulers or huntShuttles or huntSolars)) and 10 or 1
-- If Exotics are not the only type enabled (or not at all) then we'll boost
-- max active spawns a bit to handle the more numerous regular ships spawning
maxSpawnMulti		= exoticSpawnMulti > 1 and 1 or 2

--[[
Define spawn count limits.
Min/Max counts are reduced as more ship types are enabled.
This is because there's a greater chance to spawn them instead of "empty" spawns.
Reducing the count alleviates absolute chaos with 50+ ships spawning in at once.
Max active increases instead, to handle more "successful" ship spawns.
--]]

-- Minimum spawn count between 3 to 8 (80 if only Exotic)
minSpawns		= (#shipInfo + 3 - activeShipCount) * exoticSpawnMulti
-- Maximum spawn count between 5 to 10 (100 if only Exotic)
maxSpawns		= (#shipInfo + 5 - activeShipCount) * exoticSpawnMulti
-- Maximum active spawns total between 104 to 124 (520 if only Exotic)
maxActiveSpawns	= (#shipInfo + 19 + activeShipCount) * spaceSpawnMulti * exoticSpawnMulti * maxSpawnMulti

--[[
The following table modifies entries from GCAISPACESHIPGLOBALS
--------------------------------------------------------------
Update these only if they change at some point in the future, or if new entries
related to ship spawning behaviors are added.

These settings are adjusted to make finding specific ships much faster.
--]]

-- This table will be inserted into the AMUMSS mod container table later
shipBehaviorAdjustments = {
	["VALUE_CHANGE_TABLE"]	= {
		-- These settings allow more ships to land
		-- Warning: Space Stations may fill up and not allow you inside
		{"MaxNumActiveTraders", maxActiveSpawns},	-- Default 15 // Modded 104~520 depending on ship types
		{"FillUpOutposts", true},					-- Default false

		-- These settings allow ships to cycle in and out faster
		{"MinimumCircleTimeBeforeLanding", 3},		-- Default 5
		{"MinimumTimeBetweenOutpostLandings", 1},	-- Default 3
		{"DockWaitMinTime", 15},					-- Default 20
		{"DockWaitMaxTime", 30},					-- Default 60
		
		-- These settings affect spawning controls
		{"SpaceStationTraderRequestTime", 1},		-- Default 20
		{"ShipSpawnStationRadius", 500},			-- Default 2000
		{"TraderArriveSpeed", 3000},				-- Default 300
		{"TraderArriveTime", 1},					-- Default 3

		-- Additional settings pending investigation
		{"TraderWantedTime", 10},					-- Default 20
		{"TraderRequestTime", 1},					-- Default 5
		{"TradingPostTraderRequestTime", 1},		-- Default 5
		{"TradingPostTraderRangeSpace", 1000},		-- Default 3000

		-- Any extra/new settings below if they don't require additional lookup
		-- Those that do will need to be added to the main Mod Container table

	},
}

-----------------------------------------------
---- BEGIN MAIN AMUMSS MOD CONTAINER TABLE ----
-----------------------------------------------
-- This is still just a Lua table at its core, so you can add to it later
-- See the if() blocks near the bottom for how to reference it
NMS_MOD_DEFINITION_CONTAINER	= {
	["MOD_FILENAME"]			= "__" .. modName .. "_v" .. modVer .. gameVer .. scriptVer .. ".pak",
	["MOD_DESCRIPTION"]			= modDesc,
	["MOD_AUTHOR"]				= modAuthor,
	["LUA_AUTHOR"]				= modAuthor,
	["NMS_VERSION"]				= gameVer,

	-- Actual mod container
	["MODIFICATIONS"]			= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					-- Modding AISPACESHIPMANAGER
					["MBIN_FILE_SOURCE"]	= shipManagerFile,
					["EXML_CHANGE_TABLE"]	= shipsToRemove
					--[[
					Additional changes to this file cannot be merged here directly.
					Either add another section with this file source again
					or use Lua to find and add directly to this section's
					EXML_CHANGE_TABLE with extra indices via another Lua table.

					Hint: Use the following:
					NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
					as the root, and its size + 1 for the next available index to insert into.
					--]]
				},
				{
					-- Modding EXPERIENCESPAWNTABLE
					-- Adjust the keywords if they ever change in future versions
					["MBIN_FILE_SOURCE"]	= spawnTableFile,
					["EXML_CHANGE_TABLE"]	= {
						{
							-- OutpostSpawns controls the waves bound for
							-- Planetary Trading posts
							["PRECEDING_KEY_WORDS"]	= {"OutpostSpawns", "Count"},
							["VALUE_CHANGE_TABLE"]	= {
								{"x", minSpawns},	-- "x" is used as the min
								{"y", maxSpawns},	-- "y" is used as the max
							},						-- Update if they ever change
						},
						{
							-- TraderSpawns controls the waves bound for
							-- Space Stations
							["PRECEDING_KEY_WORDS"]	= {"TraderSpawns", "Count"},
							["VALUE_CHANGE_TABLE"]	= {
								{"x", minSpawns * spaceSpawnMulti},
								{"y", maxSpawns * spaceSpawnMulti},
							},
						},
						{
							-- SpaceFlybySpawns controls the additional waves
							-- that spawn when you're flying around in space
							-- Used to help supplement the naturally lower
							-- spawns in space
							["PRECEDING_KEY_WORDS"]	= {"SpaceFlybySpawns", "GcAIShipSpawnData.xml", "Count"},
							["VALUE_CHANGE_TABLE"]	= {
								{"x", minSpawns * spaceSpawnMulti},
								{"y", maxSpawns * spaceSpawnMulti},
							},
						},
						----------------------------------------------------------------
						---- Merge additional changes to EXPERIENCESPAWNTABLE below ----
						----------------------------------------------------------------

					}
				},
				{
					-- Modding GCAISPACESHIPGLOBALS
					-- All of these changes were already defined earlier, so
					-- we'll just insert the table as-is here
					["MBIN_FILE_SOURCE"]	= shipGlobalFile,
					["EXML_CHANGE_TABLE"]	= {
						shipBehaviorAdjustments,
						----------------------------------------------------------------
						---- Merge additional changes to GCAISPACESHIPGLOBALS below ----
						----------------------------------------------------------------

					}
				},
			}
		}
	}
}
------------------------------------------------
---- END OF MAIN AMUMSS MOD CONTAINER TABLE ----
------------------------------------------------

---------------------------------------------------
-- Begin Lua functions for optional table additions
-- Do not modify unless you know what you are doing
---------------------------------------------------

--[[
This block is contained inside an IF condition to prevent the mod from
conflicting with other mods needing to use INVENTORYTABLE when its associated
toggle is not enabled.

Remember that enabling this will cause things besides ships to also be forced
to S-Class.

Merging to this table can be done directly below, but is not necessary unless
forceSClass is enabled.
--]]
if forceSClass then
	addExtraTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
	addExtraTable[#addExtraTable + 1] = {
		["MBIN_FILE_SOURCE"] = inventoryTableFile,
		["EXML_CHANGE_TABLE"] = {
			{
				-- Update this if the keyword ever changes in the future
				["PRECEDING_KEY_WORDS"]	= "ClassProbabilityData",
				["REPLACE_TYPE"]		= "ALL",
				["VALUE_CHANGE_TABLE"]	= {
					{"C", 0},
					{"B", 0},
					{"A", 0},
					{"S", 100},
				}
			},
			----------------------------------------------------------
			---- Merge additional changes to INVENTORYTABLE below ----
			----------------------------------------------------------

		}
	}
end

--[[
This block is similarly contained inside an IF condition to prevent the mod from
conflicting with other mods needing GCSOLARGENERATIONGLOBALS when its
associated toggle is not enabled.

Merging to this table can be done directly below, but is not necessary unless
modSpawnFreqMultis is enabled.

Bear in mind that any changes to this table that affect the overall distribution
of ships and such in the system WILL CHANGE THE SEEDS USED which may cause
other people not running the same mods to see different ships and make sharing
reliable coordinates impossible.

This one change to Spawn Frequency does not alter seeds.
--]]
if modSpawnFreqMultis then
	addExtraTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
	addExtraTable[#addExtraTable + 1] = {
		["MBIN_FILE_SOURCE"] = solargenGlobalFile,
		["EXML_CHANGE_TABLE"] = {
			{
				-- Update these keywords if they ever change in the future
				["PRECEDING_KEY_WORDS"]	= "SpaceshipSpawnFreqMultipliers",
				["MATH_OPERATION"]		= "*",
				["REPLACE_TYPE"]		= "ALL",
				["VALUE_CHANGE_TABLE"]	= {
					{"IGNORE", 0}
				}
			},
			{
				["PRECEDING_KEY_WORDS"]	= "SpaceshipSpawnFreqMultipliers",
				["MATH_OPERATION"]		= "+",
				["INTEGER_TO_FLOAT"]	= "FORCE",
				["REPLACE_TYPE"]		= "ALL",
				["VALUE_CHANGE_TABLE"]	= {
					{"IGNORE", spawnFreqMultiOverride}
				}
			},
			--------------------------------------------------------------------
			---- Merge additional changes to GCSOLARGENERATIONGLOBALS below ----
			--------------------------------------------------------------------

		}
	}
end