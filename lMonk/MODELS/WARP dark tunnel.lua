-----------------------------------------------------------
local desc = [[
  dark warp tunnel by Silent369
]]---------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL dark warp tunnel.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				SPECIAL_KEY_WORDS	= {'Name', 'FALLOFF'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'linear'}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				SPECIAL_KEY_WORDS	= {'Name', 'FALLOFF_RATE'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		2.7}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				SPECIAL_KEY_WORDS	= {'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		10}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				SPECIAL_KEY_WORDS	= {'Name', 'COL_R'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0.23}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				SPECIAL_KEY_WORDS	= {'Name', 'COL_G'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0.064}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				SPECIAL_KEY_WORDS	= {'Name', 'COL_B'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0.54}
				}
			},
			-- {
				-- REPLACE_TYPE 		= 'ALL',
				-- WHERE_IN_SUBSECTION	= {
					-- {'Name', 'spotLight1'},
					-- {'Name', 'scrollingwaveALT'},
					-- {'Name', 'scrollingwaveALT1'},
					-- {'Name', 'gradientCloud'},
					-- {'Name', 'gradientCloudAlt'},
					-- {'Name', 'LightStreaks'},
					-- {'Name', 'LightStreaksSmall'},
					-- {'Name', 'LightStreaks1'},
					-- {'Name', 'LightStreaksSmall1'},
					-- {'Name', 'LightLargeStreaks'}
				-- },
				-- REMOVE 				= 'SECTION'
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Name', 'spotLight1'},
				REMOVE 				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'scrollingwaveALT'},
				REMOVE 				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'scrollingwaveALT1'},
				REMOVE 				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gradientCloud'},
				REMOVE 				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gradientCloudAlt'},
				REMOVE 				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LightStreaks'},
				REMOVE 				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LightStreaksSmall'},
				REMOVE 				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LightStreaks1'},
				REMOVE 				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LightStreaksSmall1'},
				REMOVE 				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LightLargeStreaks'},
				REMOVE 				= 'SECTION'
			}
		}
	},
	{
		-- |warp tunnel tweak|
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/WARP/WARPTUNNEL/TUNNELMAT1.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'TransparencyLayerID',	0},
					{'Map', 'TEXTURES/EFFECTS/WARP/LINES.DDS'}
				}
			}
		}
	}
}}}}
