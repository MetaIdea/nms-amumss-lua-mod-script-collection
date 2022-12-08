--[[-----------------------------------------
 snippets
-------------------------------------------]]

Path = 'METADATA/SIMULATION/SOLARSYSTEM/BIOMES/'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 12 increase LOD.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			Path..'BARREN/BARRENHQOBJECTSFULL.MBIN',
			Path..'FROZEN/FROZENBIGPROPSOBJECTSFULL.MBIN',
			Path..'HUGEPROPS/HUGELUSH/HUGELUSHOBJECTSFULL.MBIN',
			Path..'LUSH/LUSHINFESTEDOBJECTS.MBIN',
			Path..'RADIOACTIVE/RADIOACTIVEALIENOBJECTS.MBIN',
			Path..'SCORCHED/SCORCHEDSHIELDTREEOBJECTS.MBIN',
			Path..'SWAMP/SWAMPOBJECTSFULL.MBIN',
			Path..'TOXIC/TOXICOBJECTSLOW.MBIN',
			Path..'UNDERWATER/UNDERWATERFULL.MBIN',
			Path..'WEIRD/CONTOUR/CONTOUROBJECTSDEAD.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH_TYPE 	= 'NUMBER',
				VALUE_MATCH			= 200,
				VALUE_MATCH_OPTIONS = '<',
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS = 'LodDistances',
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		2} -- 3
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH_TYPE 	= 'NUMBER',
				VALUE_MATCH			= 460,
				VALUE_MATCH_OPTIONS = '>',
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS = 'LodDistances',
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		1.2} -- 1.6
				}
			},
			-- {
			-- 	REPLACE_TYPE 		= 'All',
			-- 	VALUE_MATCH_TYPE 	= 'NUMBER',
			-- 	VALUE_MATCH			= 8,
			-- 	VALUE_MATCH_OPTIONS = '<',
			-- 	MATH_OPERATION 		= '+',
			-- 	VALUE_CHANGE_TABLE 	= {
			-- 		{'MaxRegionRadius',	2} -- not found in ~30 of the files. Results in warnings
			-- 	}
			-- },
			-- {
			-- 	REPLACE_TYPE 		= 'All',
			-- 	VALUE_MATCH_TYPE 	= 'NUMBER',
			-- 	VALUE_MATCH			= 9000,
			-- 	VALUE_MATCH_OPTIONS = '<',
			-- 	MATH_OPERATION 		= '*',
			-- 	VALUE_CHANGE_TABLE 	= {
			-- 		{'FadeInStartDistance',		1.5}, -- 2
			-- 		{'FadeInEndDistance',		1.5},
			-- 		{'FadeOutStartDistance',	1.5},
			-- 		{'FadeOutEndDistance',		1.5}
			-- 	}
			-- }
		}
	}
}}}}
