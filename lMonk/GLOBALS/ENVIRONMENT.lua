---------------------------------------------------------
local desc = [[
  LOD levels increase
  Clouds size gradient decrease, cloud movement reduced
]]-------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC ENVIRONMENT.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCENVIRONMENTGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'TerrainFadeTime',			-1},	-- 2
					{'TerrainFadeTimeInShip',	-1},	-- 2
					{'CreatureFadeTime',		-0.7},	-- 1.5
					{'FloraFadeTimeMin',		-0.2},	-- 0.6
					{'FloraFadeTimeMax',		-1},	-- 2.25
					{'AnimationScale',			-30},	-- 50 (clouds speed)
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'LODAdjust',
				SECTION_ACTIVE		= 4,
				LINE_OFFSET			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		2}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'LODAdjust',
				SECTION_ACTIVE		= 4,
				LINE_OFFSET			= 2,
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		2.5}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'LODAdjust',
				SECTION_ACTIVE		= 4,
				LINE_OFFSET			= 3,
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		3}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'LODAdjust',
				SECTION_ACTIVE		= 4,
				LINE_OFFSET			= 4,
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		4}
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = 'LODAdjust',
				SECTION_ACTIVE		= 4,
				LINE_OFFSET			= 5,
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		5}
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = 'WindOffset',
				VALUE_CHANGE_TABLE 	= {
					{'x',			-0.1},	-- 0.5
					{'y',			-0.1}	-- 0.5
				}
			}
		}
	}
}}}}
