Author = "Step Modifications"
ModName = "ZZZZStepNoMansSky"
ModDescription = "These changes alter various evironmental elements."
FileSource01 = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
--## Fine LOD ##
LODAdjust01 = 2				--  | 1 | 130
LODAdjust02 = 2.5			--  | 1 | 131
LODAdjust03 = 3				--  | 1 | 132
LODAdjust04 = 3.5			--  | 1 | 133
LODAdjust05 = 4				--  | 1 | 134
TerrainFadeTime = 0.5		-- Amount of time it takes for terrain to fade in/out of different detail modes | 2 | 284
TerrainFadeTimeInShip = 1	-- Amount of time it takes for terrain to fade in/out of different detail modes while in a ship | 2 | 285
CreatureFadeTime = 0.7		-- Amount of time it takes for creatures to fade in/out of different detail modes | 1.5 | 286
FloraFadeTimeMin = 0.3		-- Minimum amount of time to take for all flora to fade in/out of different detail modes | 0.6 | 287
FloraFadeTimeMax = 1.1		-- Max amount of time to take for all flora to fade in/out of different detail modes | 2.25 | 288

--## Step ##
AnimationScale = 15			-- Determines how fast the clouds morph | 50 | 198
WindOffsetX = 0.25			-- Determines the speed of the clouds along the X axis | 0.5 | 202
WindOffsetY = 0.25			-- Determines the speed of the clouds along the Y axis | 0.5 | 203

Cloud01X = 0.09				-- Determines max cloud size along the X axis | 0.1 | 214
Cloud01Y = 0.1				-- Determines max cloud size along the Y axis | 0.15 | 215
Cloud01Z = 0.13				-- Determines max cloud size along the Z axis | 0.15 | 216
Cloud01T = 0.15				--  | 0.2 | 217

Cloud02X = 0				-- '' | 0 | 220
Cloud02Y = 0.12				-- '' | 0.1 | 221
Cloud02Z = 0.2				-- '' | 0.3 | 222
Cloud02T = 0.25				--  | 0.6 | 223

Cloud03X = 0				-- '' | 0 | 226
Cloud03Y = 0.15				-- '' | 0.2 | 227
Cloud03Z = 0.3				-- '' | 0.3 | 228
Cloud03T = 0.5				--  | 1 | 229


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
				{ ["PRECEDING_KEY_WORDS"] = "",
					["VALUE_CHANGE_TABLE"] = {
						{"AnimationScale", AnimationScale}, 
						{"TerrainFadeTime", TerrainFadeTime}, 
						{"TerrainFadeTimeInShip", TerrainFadeTimeInShip}, 
						{"CreatureFadeTime", CreatureFadeTime}, 
						{"FloraFadeTimeMin", FloraFadeTimeMin}, 
						{"FloraFadeTimeMax", FloraFadeTimeMax}, 
					}
				},
--
--##### Everything after here is from Fine LOD mod #####
--
				{["PRECEDING_KEY_WORDS"] = {"TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml",},
					["LINE_OFFSET"] = "+1",		--one line down from "LODAdjust"
					["VALUE_CHANGE_TABLE"] = {
						{"LODAdjust", LODAdjust01}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml",},
					["LINE_OFFSET"] = "+2",		--two lines down from "LODAdjust"
					["VALUE_CHANGE_TABLE"] = {
						{"LODAdjust", LODAdjust02}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml",},
					["LINE_OFFSET"] = "+3",		--three lines down from "LODAdjust"
					["VALUE_CHANGE_TABLE"] = {
						{"LODAdjust", LODAdjust03}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml",},
					["LINE_OFFSET"] = "+4",		--four lines down from "LODAdjust"
					["VALUE_CHANGE_TABLE"] = {
						{"LODAdjust", LODAdjust04}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml", "TkLODSettingsData.xml",},
					["LINE_OFFSET"] = "+5",		--fives lines down from "LODAdjust"
					["VALUE_CHANGE_TABLE"] = {
						{"LODAdjust", LODAdjust05}, 
					}
				},
--
--##### Everything after here is from Step #####
--
				{["PRECEDING_KEY_WORDS"] = {"CloudProperties", "WindOffset",}, 
					["VALUE_CHANGE_TABLE"] = {
						{"x", WindOffsetX}, {"y", WindOffsetY}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"CloudProperties", "CloudHeightGradient1",}, 
					["VALUE_CHANGE_TABLE"] = {
						{"x", Cloud01X}, 
						{"y", Cloud01Y}, 
						{"z", Cloud01Z}, 
						{"t", Cloud01T}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"CloudProperties", "CloudHeightGradient2",}, 
					["VALUE_CHANGE_TABLE"] = {
						{"x", Cloud02X}, 
						{"y", Cloud02Y}, 
						{"z", Cloud02Z}, 
						{"t", Cloud02T}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"CloudProperties", "CloudHeightGradient3",}, 
					["VALUE_CHANGE_TABLE"] = {
						{"x", Cloud03X}, 
						{"y", Cloud03Y}, 
						{"z", Cloud03Z}, 
						{"t", Cloud03T}, 
					}
				},
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE