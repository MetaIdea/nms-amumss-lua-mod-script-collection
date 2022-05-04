------------------------------------------------------------------------------------
local desc = [[
  Remove lines, include: HUD icons, trade routes, landing pad
  Clone an empty LINE3D material for LINERENDERER (to keep lines in the galaxy map)
]]----------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL no HUD lines.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			{
				'MATERIALS/LINE3D.MATERIAL.MBIN',
				'MATERIALS/LINE3D.EMPTY.MATERIAL.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MATERIALS/LINE3D.EMPTY.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Samplers',
				REMOVE				= 'SECTION'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/LINES/LINERENDERER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'MATERIAL'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'MATERIALS/LINE3D.EMPTY.MATERIAL.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'MAXNUMLINES'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		1}
				}
			}
		}
	}
}}}}


