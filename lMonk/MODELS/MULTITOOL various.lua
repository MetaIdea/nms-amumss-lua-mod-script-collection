-----------------------------------------------------------------------
local mod_desc = [[
  - change atlas white glare parts to blue (monolith=blue, atlas=red, artemis=b&w)
  - add procedual color to the pistol sentinel tool
  - change sentinel tool red glow to blue
  - reduce staff tool blue glow
  - remove laser horizontal flare
  - avoid unwanted parts from multitool
]]---------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL multitool various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	AMUMSS_SUPPRESS_MSG	= 'MIXED_TABLE',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|atlas no white glare|
		MBIN_FILE_SOURCE	= {
			-- 'MODELS/COMMON/WEAPONS/MULTITOOL/ATLASMTPARTS/ATLASMTARTEMIS/ATLASGLOW2W4.MATERIAL.MBIN',
			'MODELS/COMMON/WEAPONS/MULTITOOL/ATLASMTPARTS/ATLASMTATLAS/ATLASGLOW2W4.MATERIAL.MBIN',
			'MODELS/COMMON/WEAPONS/MULTITOOL/ATLASMTPARTS/ATLASMTMONOLITH/ATLASGLOW2W4.MATERIAL.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'gMaterialColourVec4'},
				VALUE_CHANGE_TABLE 	= {
					{'x',			0.1},
					{'y',			0.1},
					{'z',			0.28}
				}
			}
		}
	},
	{--	|sentinel tool proc| colors
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/WEAPONS/MULTITOOL/SENTINELMULTITOOL/ORANGEMETALMAT.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gDiffuseMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/ROBOTS/SHARED/PAINTEDMETALPROC.DDS'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gMasksMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/ROBOTS/SHARED/PAINTEDMETALPROC.MASKS.DDS'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gNormalMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/ROBOTS/SHARED/PAINTEDMETALPROC.NORMAL.DDS'}
				}
			}
		}
	},
	{--	|sentinel and staff tool blue glow|
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/WEAPONS/MULTITOOL/SENTINELMULTITOOL/REDGLOW_MAT2.MATERIAL.MBIN',
			'MODELS/COMMON/WEAPONS/MULTITOOL/SENTINELMULTITOOLB/REDGLOW_MAT2.MATERIAL.MBIN',
			'MODELS/COMMON/WEAPONS/MULTITOOL/STAFFMULTITOOL/REDGLOW_MAT5.MATERIAL.MBIN',
			'MODELS/COMMON/WEAPONS/MULTITOOL/STAFFMULTITOOL/REDGLOW_MAT8.MATERIAL.MBIN',
			'MODELS/COMMON/WEAPONS/MULTITOOL/STAFFMULTITOOL/REDGLOW_MAT9.MATERIAL.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Name', 'gMaterialColourVec4'},
				VALUE_CHANGE_TABLE 	= {
					{'x',			0.16},
					{'y',			0.32},
					{'z',			0.64}
				}
			}
		}
	},
	{--	|sentinel tool blue lights|
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/WEAPONS/MULTITOOL/SENTINELMULTITOOL/LIGHTSCROLLBMAT.MATERIAL.MBIN',
			'MODELS/COMMON/WEAPONS/MULTITOOL/SENTINELMULTITOOLB/LIGHTSCROLLBMAT.MATERIAL.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/ROBOTS/SHARED/LIGHTDETAILBLUE.DDS'}
				}
			}
		}
	},
	{--	|no tool muzzle flare|
		MBIN_FILE_SOURCE	= {
			'MODELS/EFFECTS/MUZZLE/LASERMUZZLE.SCENE.MBIN',
			'MODELS/EFFECTS/MUZZLE/BLASTOVERLOADMUZZLE.SCENE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Flare'},
				REMOVE				= 'Section'
			}
		}
	},
	{--	|plain tool trim ugly parts|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.DESCRIPTOR.MBIN',
		EXML_CHANGE_TABLE	= (
			function()
				T = {}
				for name, sfx in pairs({
					_Mag1Clip_	= {1, '2xRARE'},
					_Screen_	= {1, 2},
					_ToolStock_	= {del=true, 2, 3, 4, 5, 6},
					_B3TAcc_	= {'NULL', 1},
					_B2Bars_	= {3, 2, 'NULL', 1},
					_G1Acc_		= {1, 2},
					_LSA1W_		= {2, 1},
					_LSA4_		= {4, 3, 2, 1},
					_LSAcc3_	= {del=true, 2},
					_LSideAcc_	= {6, 5},
					_B2Flaps_	= {'NULL', 2, 1, 2},
				}) do
					if not sfx.del then
						for i=1, #sfx, 2 do
							T[#T+1] = {
								SPECIAL_KEY_WORDS	= {'Id', (name..sfx[i]):upper()},
								VALUE_CHANGE_TABLE 	= {
									{'Id',			(name..sfx[i+1]):upper()},
									{'Name',		name.. sfx[i+1]}
								}
							}
						end
					else
						for i=1, #sfx do
							T[#T+1] = {
								SPECIAL_KEY_WORDS	= {'Id', (name..sfx[i]):upper()},
								REMOVE				= 'Section'
							}
						end
					end
				end
				return T
			end
		)()
	}
}}}}
