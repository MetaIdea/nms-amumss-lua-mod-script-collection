-----------------------------------------------------------
local mod_desc = [[
  dark warp tunnel by Silent369
]]---------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL dark warp tunnel.pak',
	LUA_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'AnimatedLights'},
					{'Name', 'scrollingwave9'},
					{'Name', 'scrollingwaveALT'},
					{'Name', 'scrollingwaveALT1'},
					{'Name', 'stars1'},
					{'Name', 'stars2'},
					{'Name', 'gradientCloud'},
					{'Name', 'gradientCloudAlt'},
					{'Name', 'pointLight5'},
					{'Name', 'LightStreaks'},
					{'Name', 'LightStreaksSmall'},
					{'Name', 'LightStreaksSmall1'},
					{'Name', 'LightStreaks1'},
					{'Name', 'LightLargeStreaks'},
				},
				REMOVE 				= 'Section'
			},
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'FOV'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		360}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'FALLOFF'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'quadratic'}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'FALLOFF_RATE'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		2.5}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		100}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'COL_R'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0.86}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'COL_G'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0.4}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'COL_B'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		1}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT', 'Name', 'MATERIAL'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LightArms'},
				VALUE_CHANGE_TABLE 	= {
					{'TransZ',		-13}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MATERIALS/LIGHT.MATERIAL.MBIN',
				'MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN',
				'REMOVE'
			}
		}
	},
	{--	|warp tunnel MAT1|
		MBIN_FILE_SOURCE	= 'MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Class', 'Translucent'},
					{'TransparencyLayerID',	0}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gHSVOverlay'},
				VALUE_CHANGE_TABLE 	= {
					{'Anisotropy', 0}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gLightCookiesMap'},
				REMOVE 				= 'Section'
			},
		}
	},
	{--	|warp tunnel MAT1|
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/WARP/WARPTUNNEL/TUNNELMAT1.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Class', 'Translucent'},
					{'Map', ''}
				}
			}
		}
	},
	{--	|warp tunnel GLOW|
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/WARP/WARPTUNNEL/ENGGLOWCAPMAT.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gCustomParams01Vec4'},
				VALUE_CHANGE_TABLE 	= {
                    {'x',			0},
                    {'y',			0},
                    {'z',			0},
                    {'t',			0}
				}
			}
		}
	}
}}}}
