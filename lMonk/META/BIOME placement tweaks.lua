--------------------------------------------------------------------------
local mod_desc = [[
  Increase green crystals placement probability
  Remove random cargo drops & damaged machinery in the wild
  Lower chance of wordstones, underground cargo & dead planet fiend eggs
]]------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META biome placement tweaks.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	--	|cave crystal placement|
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/CAVEFULL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/LARGE/CRYSTAL_LARGE_CAVE.SCENE.MBIN'},
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/MEDIUM/CRYSTAL_MEDIUM_CAVE.SCENE.MBIN'}
				},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Placement',	'CRYSTAL2'}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_SMALL_CAVE.SCENE.MBIN'},
					{'Filename', 'MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_FRAGMENT_CAVE.SCENE.MBIN'}
				},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Placement',	'CRYSTALCAVE'}
				}
			}
		}
	},
	-- {
		-- MBIN_FILE_SOURCE	= {
			-- 'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN',
			-- 'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN',
		-- },
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS 	= {
					-- {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN'},
					-- {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATELAYOUTS.SCENE.MBIN'}
				-- },
				-- SECTION_UP			= 1,
				-- REMOVE				= 'Section'
			-- },
			-- {
				-- REPLACE_TYPE 		= 'All',
				-- MATH_OPERATION 		= '*',
				-- INTEGER_TO_FLOAT	= 'Force',
				-- SPECIAL_KEY_WORDS	 = {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/UNDERGROUNDPROP.SCENE.MBIN'},
				-- SECTION_UP			= 1,
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Coverage',	0.1}
				-- }
			-- },
			-- {
				-- REPLACE_TYPE 		= 'All',
				-- MATH_OPERATION 		= '*',
				-- INTEGER_TO_FLOAT	= 'Force',
				-- SPECIAL_KEY_WORDS 	= {'Filename', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/RUINPARTS/WORDSTONE.SCENE.MBIN'},
				-- SECTION_UP			= 1,
				-- VALUE_CHANGE_TABLE 	= {		--	F		FS
					-- {'Coverage',	0.33}	--	1		0.15
				-- }
			-- },
			-- {
				-- REPLACE_TYPE 		= 'All',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'DestroyedByPlayerVehicle', false} -- bug fix
				-- }
			-- }
		-- }
	-- },
	-- {
		-- MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/FIENDEGGS.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- REPLACE_TYPE 		= 'All',
				-- INTEGER_TO_FLOAT	= 'Force',
				-- MATH_OPERATION 		= '*',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Coverage',	0.4},	-- 0.1 / 2
				-- }
			-- }
		-- }
	-- }
}}}}
