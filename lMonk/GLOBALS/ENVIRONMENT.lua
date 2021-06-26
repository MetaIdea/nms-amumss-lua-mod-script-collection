--[[┎────────────────────────────────────────────────────────────────
	┃ LOD levels increase
	┃ Clouds size gradient decrease, cloud movement reduced
────┸────────────────────────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC ENVIRONMENT.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
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
					{'AnimationScale',			-40},	-- 50 (clouds speed)
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = {'LODSettings', 'TkLODSettingsData.xml', 'TkLODSettingsData.xml', 'TkLODSettingsData.xml', 'LODAdjust'},
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		0.5} -- 1 (+0.5)
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = {'LODSettings', 'TkLODSettingsData.xml', 'TkLODSettingsData.xml', 'TkLODSettingsData.xml', 'TkLODSettingsData.xml', 'LODAdjust'},
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		1} -- 1 (+1)
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = 'WindOffset',
				VALUE_CHANGE_TABLE 	= {
					{'x',			-0.15},	-- 0.5
					{'y',			-0.15}	-- 0.5
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = 'CloudHeightGradient1',
				VALUE_CHANGE_TABLE 	= {
					{'x',			-0.02},	-- 0.1
					{'y',			-0.03},	-- 0.15
					{'z',			-0.02},	-- 0.15
					{'t',			-0.03}	-- 0.2
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = 'CloudHeightGradient2',
				VALUE_CHANGE_TABLE 	= {
					{'z',			-0.06},	-- 0.3
					{'t',			-0.1},	-- 0.6
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = 'CloudHeightGradient3',
				VALUE_CHANGE_TABLE 	= {
					{'z',			-0.1},	-- 0.3
					{'t',			-0.3}	-- 1
				}
			}
		}
	}
}}}}
