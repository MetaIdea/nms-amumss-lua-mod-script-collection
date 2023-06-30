Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various evironmental elements."
FileSource01 = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
TerrainFadeTime = 1			-- Amount of time it takes for terrain to fade in/out of different detail modes | 2 | 333
TerrainFadeTimeInShip = 1	-- Amount of time it takes for terrain to fade in/out of different detail modes while in a ship | 2 | 
CreatureFadeTime = 1.0		-- Amount of time it takes for creatures to fade in/out of different detail modes | 1.5 | 
FloraFadeTimeMin = 1.0		-- Minimum amount of time to take for all flora to fade in/out of different detail modes | 0.6 | 
FloraFadeTimeMax = 1.5		-- Max amount of time to take for all flora to fade in/out of different detail modes | 2.25 | 

--## Step ##
AnimationScale = 15			-- Determines how fast the clouds morph | 50 | 234
WindOffsetX = 0.25			-- Determines the speed of the clouds along the X axis | 0.5 | 236
WindOffsetY = 0.25			-- Determines the speed of the clouds along the Y axis | 0.5 | 237

Cloud01X = 0.09				-- Determines max cloud size along the X axis | 0.1 | 248
Cloud01Y = 0.1				-- Determines max cloud size along the Y axis | 0.15 | 249
Cloud01Z = 0.13				-- Determines max cloud size along the Z axis | 0.15 | 250
Cloud01T = 0.15				--  | 0.2 | 251

Cloud02X = 0				-- '' | 0 | 254
Cloud02Y = 0.12				-- '' | 0.1 | 255
Cloud02Z = 0.2				-- '' | 0.3 | 256
Cloud02T = 0.25				--  | 0.6 | 257

Cloud03X = 0				-- '' | 0 | 260
Cloud03Y = 0.15				-- '' | 0.2 | 261
Cloud03Z = 0.3				-- '' | 0.3 | 262
Cloud03T = 0.5				--  | 1 | 263


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
--
--##### Everything after here is from Step #####
--
				{ ["PRECEDING_KEY_WORDS"] = "",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"AnimationScale", AnimationScale}, 
						{"TerrainFadeTime", TerrainFadeTime}, 
						{"TerrainFadeTimeInShip", TerrainFadeTimeInShip}, 
						{"CreatureFadeTime", CreatureFadeTime}, 
						{"FloraFadeTimeMin", FloraFadeTimeMin}, 
						{"FloraFadeTimeMax", FloraFadeTimeMax}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"CloudProperties", "WindOffset",}, 
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", WindOffsetX}, {"y", WindOffsetY}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"CloudProperties", "CloudHeightGradient1",}, 
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", Cloud01X}, 
						{"y", Cloud01Y}, 
						{"z", Cloud01Z}, 
						{"t", Cloud01T}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"CloudProperties", "CloudHeightGradient2",}, 
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", Cloud02X}, 
						{"y", Cloud02Y}, 
						{"z", Cloud02Z}, 
						{"t", Cloud02T}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"CloudProperties", "CloudHeightGradient3",}, 
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", Cloud03X}, 
						{"y", Cloud03Y}, 
						{"z", Cloud03Z}, 
						{"t", Cloud03T}, 
					}
				},
--
--##### Everything after here is from Fine LOD, courtesy of Babscoole, altered by Step #####
--
				{["PRECEDING_KEY_WORDS"] = {"LODAdjust",},
					["SECTION_ACTIVE"] = {4,},
					["LINE_OFFSET"] = "+1",
					["VALUE_CHANGE_TABLE"] = {
						{"IGNORE", "3"} -- Original "1"
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"LODAdjust",},
					["SECTION_ACTIVE"] = {4,},
					["LINE_OFFSET"] = "+2",
					["VALUE_CHANGE_TABLE"] = {
						{"IGNORE", "3"} -- Original "1"
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"LODAdjust",},
					["SECTION_ACTIVE"] = {4,},
					["LINE_OFFSET"] = "+3",
					["VALUE_CHANGE_TABLE"] = {
						{"IGNORE", "3"} -- Original "1"
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"LODAdjust",},
					["SECTION_ACTIVE"] = {4,},
					["LINE_OFFSET"] = "+4",
					["VALUE_CHANGE_TABLE"] = {
						{"IGNORE", "3"} -- Original "1"
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"LODAdjust",},
					["SECTION_ACTIVE"] = {4,},
					["LINE_OFFSET"] = "+5",
					["VALUE_CHANGE_TABLE"] = {
						{"IGNORE", "3"} -- Original "1"
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"EnvironmentProperties",},
					["VALUE_CHANGE_TABLE"] = {
						{"PlanetObjectSwitch",        "1400"},  -- Original "700"
						{"PlanetLodSwitch0",          "600"},   -- Original "300"
						{"PlanetLodSwitch0Elevation", "1400"},  -- Original "700"
						{"PlanetLodSwitch1",          "4000"},  -- Original "2000"
						{"PlanetLodSwitch2",          "20000"}, -- Original "10000"
						{"PlanetLodSwitch3",          "40000"}, -- Original "20000"
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"EnvironmentPrimeProperties",},
					["VALUE_CHANGE_TABLE"] = {
						{"PlanetObjectSwitch",        "4000"},  -- Original "2000"
						{"PlanetLodSwitch0",          "4000"},  -- Original "2000"
						{"PlanetLodSwitch0Elevation", "4000"},  -- Original "2000"
						{"PlanetLodSwitch1",          "4000"},  -- Original "2000"
						{"PlanetLodSwitch2",          "20000"}, -- Original "10000"
						{"PlanetLodSwitch3",          "40000"}, -- Original "20000"
					}
				},
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE