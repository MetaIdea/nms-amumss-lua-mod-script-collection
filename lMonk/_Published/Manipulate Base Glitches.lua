--------------------------------------------------------------------------
local desc = [[
  Enable 3D rotation and scaling for Glitch items
]]------------------------------------------------------------------------
	
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= '_MOD.lMonk.Manipulate Glitches.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.73',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				SPECIAL_KEY_WORDS	= {'SubGroupName', 'DECOGLITCHES'},
				SECTION_UP			= 2,
				VALUE_CHANGE_TABLE 	= {
					{'CanRotate3D',	true},
					{'CanScale',	true},
					{'BaseBuildingDecorationType',	'SurfaceNormal'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'BASE_TOYCUBE'},
				VALUE_CHANGE_TABLE 	= {
					{'CanRotate3D',	true},
					{'CanScale',	true},
					{'BaseBuildingDecorationType',	'SurfaceNormal'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'BASE_TOYSPHERE'},
				VALUE_CHANGE_TABLE 	= {
					{'CanRotate3D',	true},
					{'CanScale',	true},
					{'BaseBuildingDecorationType',	'SurfaceNormal'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'BASE_TOYJELLY'},
				VALUE_CHANGE_TABLE 	= {
					{'CanRotate3D',	true},
					{'CanScale',	true},
					{'BaseBuildingDecorationType',	'SurfaceNormal'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'BASE_TOYCORE'},
				VALUE_CHANGE_TABLE 	= {
					{'CanRotate3D',	true},
					{'CanScale',	true},
					{'BaseBuildingDecorationType',	'SurfaceNormal'}
				}
			}
		}
	}
}}}}
