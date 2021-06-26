--[[┎──────────────────────────────────────────────────────────
	┃ no cloud and cloud shadows on dead planets
────┸──────────────────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 33 no cloud and shadows on dead.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_META ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIOME.MBIN',
			'METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADFROZENBIOME.MBIN',
			'METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADFROZENWEIRDBIOME.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			-- {
				-- PRECEDING_KEY_WORDS = 'CloudSettings',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'MinCover',					-1},
					-- {'MaxCover',					-1},
					-- {'MaxVariance',					0},
					-- {'MinRateOfChange',				0},
					-- {'MaxRateOfChange',				0},
					-- {'MinRatio',					0},
					-- {'MaxRatio',					0},
					-- {'TendencyTowardsBeingCloudy',	0}
				-- }
			-- },
			{
				PRECEDING_KEY_WORDS = 'StormCloudBottomColour',
				VALUE_CHANGE_TABLE 	= {
					{'R',	0},
					{'G',	0},
					{'B',	0},
					{'A',	0},
				}
			},
		}
	}
}}}}
