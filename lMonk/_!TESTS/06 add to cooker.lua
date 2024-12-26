-----------------------------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
-----------------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 06 add to cooker.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	AMUMSS_SUPPRESS_MSG	= 'MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|cook fish| access fish storage from cooker
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/COOKER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Children',
				SECTION_ACTIVE		= -1,
				ADD 				= ToExml(ScNode({
					name	= 'LocFishBottle',
					ntype	= 'LOCATOR',
					form	= {tx=-0.72, ty=0.785, tz=0.62, sx=0.8, sy=0.8, sz=0.8},
					attr	= {
						ATTACHMENT = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/FISHINGPLATFORM/ENTITIES/FISHCASES.ENTITY.MBIN'
					},
					child	= {
						{
							name	= 'FishBottleCollision',
							ntype	= 'COLLISION',
							form	= {ty=0.2},
							attr	= {
								TYPE	= 'Capsule',
								HEIGHT	= 0.4,
								RADIUS	= 0.1
							}
						},
						{
							name	= 'RefFishBottle',
							ntype	= 'REFERENCE',
							attr	= {
								SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/MILKBOTTLE.SCENE.MBIN'
							}
						}
					}
				}))
			}
		}
	}
}}}}
