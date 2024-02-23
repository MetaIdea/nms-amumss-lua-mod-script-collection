----------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
----------------------------------------------------
local mod_desc = [[
  space station interior LOD increase; mod by Lo2k
  station landing pad lights changed to near-white
]]--------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL station interior FIX.pak',
	MOD_AUTHOR			= 'Lo2k, lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			-- 'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/SHOPS/GUILDSHOP.SCENE.MBIN',
			'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/SHOPS/MISSIONSHOP.SCENE.MBIN',
			'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/SHOPS/SCRAPDEALERSHOP.SCENE.MBIN',
			'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/SHOPS/SHIPSHOP.SCENE.MBIN',
			'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/SHOPS/SUITSHOP.SCENE.MBIN',
			'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/SHOPS/VEHICLESHOP.SCENE.MBIN',
			'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/SHOPS/WEAPONSHOP.SCENE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LODDIST1'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		50}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LODDIST2'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		100}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LODDIST3'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		200}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/SHOPS/MAPSHOP.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LODDIST1'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		50}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LODDIST2'},
				VALUE_CHANGE_TABLE	= {
					{'Value',		100}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/BACK_SECTION/ENTITIES/LEFTSECTIONTRIGGER.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'StateID', 'LEFTOFF'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'RequirePlayerAction', 'None'},
				SECTION_UP_SPECIAL	= 1,
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 	'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/BACK_SECTION/ENTITIES/RIGHTSECTIONTRIGGER.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'StateID', 'RIGHTOFF'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'RequirePlayerAction', 'None'},
				SECTION_UP_SPECIAL	= 1,
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 	'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/BACK_SECTION/ENTITIES/SHOP_LIGHTTRIGGER.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_CHANGE_TABLE	= {
					{'Distance',	50}
				}
			}
		}
	},
	{--	|station landing pad lights|
		MBIN_FILE_SOURCE 	= 'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/LANDINGPAD.SCENE.MBIN',
		EXML_CHANGE_TABLE 	= {
			{
				SPECIAL_KEY_WORDS	= {
					{'Name', 'LightLOD0'},
					{'Name', 'LightLOD1'},
					{'Name', 'LightLOD2'},
				},
				PRECEDING_KEY_WORDS = 'Children',
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LightLOD0'},
				ADD					= ToExml(
					ScChildren({ ScLight({
						name='Light0',	fov=70,	i=70000, f='l',	fr=1,	c='FFF3F3D9',
						tx=0.1,	ty=25,	tz=2.3,	rz=-90,	sx=20,	sy=20,	sz=20
					}) })
				)
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LightLOD1'},
				ADD					= ToExml(
					ScChildren({ ScLight({
						name='Light1',	fov=70, i=60000, f='l',	fr=1,	c='FFF3F3D9',
						tx=0.1,	ty=25,	tz=2.3,	rz=-90,	sx=20,	sy=20,	sz=20
					}) })
				)
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LightLOD2'},
				ADD					= ToExml(
					ScChildren({ ScLight({
						name='Light2',	fov=70,	i=50000, f='l',	fr=1, c='FFF3F3D9',
						tx=0.1,	ty=25,	tz=2.3,	rz=-90,	sx=20,	sy=20,	sz=20
					}) })
				)
			}
		}
	}
}}}}
