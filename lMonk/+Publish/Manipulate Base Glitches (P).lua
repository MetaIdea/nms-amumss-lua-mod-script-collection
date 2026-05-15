--------------------------------------------------------------------------
local mod_desc = [[
  Enable 3D rotation and scaling for flora, portables and glitch items
]]------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= 'MOD.lMonk.Manipulate Glitches',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.36',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP 	= {
					{'SubGroupName', 'PLANETPORTABLE'},
					{'SubGroupName', 'DECOFOLIAGE'},
					{'SubGroupName', 'DECOGLITCHES'},
				},
				REPLACE_TYPE 		= 'All',
				SECTION_UP			= 2,
				VALUE_CHANGE_TABLE 	= {
					{'CanRotate3D',	true},
					{'CanScale',	true},
					{'BaseBuildingDecorationType', 'BuildingSurfaceNormal'}
				}
			},
			{
				FOREACH_SKW_GROUP 	= {
					{'ID', 'BUILDLIGHT'},
					{'ID', 'BUILDLIGHT2'},
					{'ID', 'BUILDLIGHT3'},
					{'ID', 'HEATER'},
					{'ID', 'BASE_TOYCUBE'},
					{'ID', 'BASE_TOYSPHERE'},
					{'ID', 'BASE_TOYJELLY'},
					{'ID', 'BASE_TOYCORE'},
				},
				VALUE_CHANGE_TABLE 	= {
					{'CanRotate3D',	true},
					{'CanScale',	true},
					{'BaseBuildingDecorationType', 'BuildingSurfaceNormal'}
				}
			}
		}
	}
}}}}