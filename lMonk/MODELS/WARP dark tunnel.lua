-----------------------------------------------------------
local desc = [[
  dark warp tunnel by Silent369
]]---------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL dark warp tunnel.pak',
	LUA_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN',
		EXML_CHANGE_TABLE	= (
			function()
				local tunnel_parts = {
					'AnimatedLights',
					'scrollingwave9',
					'scrollingwaveALT',
					'scrollingwaveALT1',
					'stars1',
					'stars2',
					'gradientCloud',
					'gradientCloudAlt',
					'LightStreaks',
					'LightStreaksSmall',
					'LightStreaks1',
					'LightLargeStreaks',
				}
				local T = {}
				for _,v in ipairs(tunnel_parts) do
					table.insert(T, {
					SPECIAL_KEY_WORDS	= {'Name', v},
					REMOVE 				= 'Section'
				})
				end
				return T
			end			
		)()
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'FALLOFF'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'linear'}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'FALLOFF_RATE'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		4.8}
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
					{'Value',		0.92}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Name', 'COL_G'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0.45}
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
			-- {
				-- FOREACH_SKW_GROUP 	= {
					-- {'Name', 'spotLight1'},
					-- {'Name', 'scrollingwaveALT'},
					-- {'Name', 'scrollingwaveALT1'},
					-- {'Name', 'stars1'},
					-- {'Name', 'stars2'},
					-- {'Name', 'gradientCloud'},
					-- {'Name', 'gradientCloudAlt'},
					-- {'Name', 'LightStreaks'},
					-- {'Name', 'LightStreaksSmall'},
					-- {'Name', 'LightStreaks1'},
					-- {'Name', 'LightStreaksSmall1'},
					-- {'Name', 'LightLargeStreaks'},
				-- },
				-- REMOVE 				= 'Section'
			-- },
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
	{
	---	|warp tunnel MAT1|
		MBIN_FILE_SOURCE	= 'MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Class',				'Opaque'},
					{'TransparencyLayerID',	0}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gHSVOverlay'},
				VALUE_CHANGE_TABLE 	= {
					{'Anisotropy',			0}
				}
			},
		}
	},
	{
	---	|warp tunnel MAT1|
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
	{
	---	|warp tunnel GLOW|
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/WARP/WARPTUNNEL/ENGGLOWCAPMAT.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Class',				'Translucent'},
					{'TransparencyLayerID',	-100}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gCustomParams01Vec4'},
				VALUE_CHANGE_TABLE 	= {
					{'t', 			0.02}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Flags',
				ADD					= (
					function()
						local flags = {
							'_F22_TRANSPARENT_SCALAR',
							'_F23_TRANSLUCENT',
							'_F50_DISABLE_POSTPROCESS'	
						}
						local exml = ''
						for _,v in ipairs(flags) do
							exml = exml..string.format( 
								[[<Property value="TkMaterialFlags.xml">
									<Property name="MaterialFlag" value="%s"/>
								</Property>]], v)
						end
						return exml
					end
				)()
			}
		}
	}
}}}}
