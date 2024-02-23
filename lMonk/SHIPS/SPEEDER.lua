--------------------------------------------------------------------------
-- EXCLUDED FROM BATCH
------------------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
------------------------------------------------------------------------------------
local mod_desc = [[
  Fix speeder LOD to match other ships (same ancient bug as from the fighter model)
]]----------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__SHIP speeder.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/VRSPEEDER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'Number2_A3'},
					{'Name', 'Number4_A4'}
				},
				VALUE_CHANGE_TABLE 	= {
					{'TransZ', 		0.02}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'LODDIST1'},
					{'Name', 'LODDIST2'},
					{'Name', 'LODDIST3'},
					{'Name', 'REFLamp_3'},
					{'Name', 'REFLamp_4'},
				},
				REMOVE = 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'NUMLODS'},
				VALUE_CHANGE_TABLE 	= { {'Value', 4} }
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'VRspeederr_LOD0'},
				PRECEDING_KEY_WORDS	= 'Attributes',
				SECTION_ACTIVE		= -1,
				ADD 				= ToExml({
					META	= {'value', 'TkSceneNodeAttributeData.xml'},
					Name	= 'ATTACHMENT',
					Value	= 'MODELS/COMMON/SPACECRAFT/SHARED/ENTITIES/SHAREDLODDISTANCES.ENTITY.MBIN'
				})
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/VRSPEEDER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/ROBOTS/SHARED/LIGHTDETAILBLUE.DDS'}
				}
			}
		}
	}
}}}}
