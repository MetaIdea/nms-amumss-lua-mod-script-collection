--[[--------------------------------------------------------------------------------------

  minimalist portal

  possible placement - station back room
  MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\INTERIORROOMLEFT.SCENE.MBIN

]]---------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '___TEST 01 toy portal.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.7',
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	-- MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL.SCENE.MBIN',
				'MODELS/CUSTOM/PORTAL.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/CUSTOM/PORTAL.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {
					{'Name', 'REFPortalCloudsVFX'},
					{'Name', 'REFPortalMistVFX'},
					{'Name', 'PillarsA'},
					{'Name', 'PillarsB'},
					{'Name', 'PortalStructure'}
				},
				REMOVE				= 'Section'
			},
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'SideA', 'Name', 'SCENEGRAPH'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Value', 'MODELS/CUSTOM/PORTALSIDE.SCENE.MBIN'}
				-- }
			-- }
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALSIDE.SCENE.MBIN',
				'MODELS/CUSTOM/PORTALSIDE.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/CUSTOM/PORTALSIDE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {
					{'Name', 'PortRingsDead'},
					{'Name', 'Controller'},
				},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'REFMembraneB', 'Name', 'SCENEGRAPH'},
				VALUE_CHANGE_TABLE 	= {
					{'Value', 'MODELS/CUSTOM/PORTALMEMBRANE.SCENE.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'REFPortalTerminalB', 'Name', 'SCENEGRAPH'},
				VALUE_CHANGE_TABLE 	= {
					{'Value', 'MODELS/CUSTOM/PORTALTERMINAL.SCENE.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Portal', 'Name', 'ATTACHMENT'},
				VALUE_CHANGE_TABLE 	= {
					{'Value', 'MODELS/CUSTOM/PORTAL/ENTITIES/PORTAL.ENTITY.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'REFPortalTerminalB'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		-5}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Wheels'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0},
					{'TransY',		-1.7},
					{'TransZ',		0},
					{'RotZ',		90},
					{'ScaleX',		0.5},
					{'ScaleY',		0.5},
					{'ScaleZ',		0.5}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Portal'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		-50}
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
			--	referenced in PORTALSIDE attaching BUTTON.ENTITY
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALTERMINAL.SCENE.MBIN',
				'MODELS/CUSTOM/PORTALTERMINAL.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/CUSTOM/PORTALTERMINAL.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Button', 'Name', 'ATTACHMENT'},
				VALUE_CHANGE_TABLE 	= {
					{'Value', 'MODELS/CUSTOM/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALMEMBRANE.SCENE.MBIN',
				'MODELS/CUSTOM/PORTALMEMBRANE.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/CUSTOM/PORTALMEMBRANE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'PortalMembrane', 'Name', 'ATTACHMENT'},
				VALUE_CHANGE_TABLE 	= {
					{'Value', 'MODELS/CUSTOM/PORTALMEMBRANE/ENTITIES/PORTALMEMBRANE.ENTITY.MBIN'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {
					{'Name', 'GateWheel'},
					{'Name', 'RootJNT'},
					{'Name', 'PortalRings'},
					{'Name', 'GateON'},
				},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'PortalMembrane'},
				PRECEDING_KEY_WORDS = 'Children',
				REMOVE				= 'Section'
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/PORTAL.ENTITY.MBIN',
				'MODELS/CUSTOM/PORTAL/ENTITIES/PORTAL.ENTITY.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/CUSTOM/PORTAL/ENTITIES/PORTAL.ENTITY.MBIN',
		PRECEDING_KEY_WORDS	= 'GcInteractionComponentData.xml',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'UseInteractCamera', false}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				PRECEDING_KEY_WORDS	= 'GcTriggerActionComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'Sound',		''}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALMEMBRANE/ENTITIES/PORTALMEMBRANE.ENTITY.MBIN',
				'MODELS/CUSTOM/PORTALMEMBRANE/ENTITIES/PORTALMEMBRANE.ENTITY.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/CUSTOM/PORTALMEMBRANE/ENTITIES/PORTALMEMBRANE.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'GcInteractionComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'UseInteractCamera',	false}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				PRECEDING_KEY_WORDS	= 'TkAnimationComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'FrameEnd',	0}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				VALUE_MATCH			= 1,
				VALUE_MATCH_OPTIONS = '>=',
				PRECEDING_KEY_WORDS	= 'GcTriggerActionComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'Seconds',		1}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN',
				'MODELS/CUSTOM/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/CUSTOM/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN',
		PRECEDING_KEY_WORDS	= 'GcInteractionComponentData.xml',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'UseInteractCamera', false}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				PRECEDING_KEY_WORDS	= 'GcTriggerActionComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'Sound',		''}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				PRECEDING_KEY_WORDS	= 'TkAnimationComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'FrameEnd',	0}
				}
			},
			{
				PRECEDING_KEY_WORDS	= 'GcMaintenanceComponentData.xml',
				REMOVE				= 'Section'
			}
		}
	},




}}}}

	-- {
		-- MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL.SCENE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {
					-- {'Name', 'PillarsA'},
					-- {'Name', 'PillarsB'},
					-- {'Name', 'PortalStructure'},
					-- {'Name', 'REFPortalCloudsVFX'},
					-- {'Name', 'REFPortalMistVFX'},
				-- },
				-- REMOVE				= 'Section'
			-- }
		-- }
	-- },
	-- {
		-- MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALSIDE.SCENE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {
					-- {'Name', 'PortRingsDead'},
					-- {'Name', 'Controller'},
				-- },
				-- REMOVE				= 'Section'
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'REFPortalTerminalB'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'TransX',		-5}
				-- }
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'Wheels'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'TransX',		0},
					-- {'TransY',		-1.7},
					-- {'TransZ',		0},
					-- {'RotZ',		90},
					-- {'ScaleX',		0.5},
					-- {'ScaleY',		0.5},
					-- {'ScaleZ',		0.5}
				-- }
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'Portal'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'TransY',		-50}
				-- }
			-- },
		-- }
	-- },
	-- {
		-- MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALMEMBRANE.SCENE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {
					-- {'Name', 'GateWheel'},
					-- {'Name', 'RootJNT'},
					-- {'Name', 'PortalRings'},
					-- {'Name', 'GateON'},
				-- },
				-- REMOVE				= 'Section'
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'PortalMembrane'},
				-- PRECEDING_KEY_WORDS = 'Children',
				-- REMOVE				= 'Section'
			-- },
		-- }
	-- },
	-- {
		-- MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/PORTAL.ENTITY.MBIN',
		-- PRECEDING_KEY_WORDS	= 'GcInteractionComponentData.xml',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- VALUE_CHANGE_TABLE 	= {
					-- {'UseInteractCamera', false}
				-- }
			-- },
			-- {
				-- REPLACE_TYPE 		= 'All',
				-- PRECEDING_KEY_WORDS	= 'GcTriggerActionComponentData.xml',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Sound',		''}
				-- }
			-- }
		-- }
	-- },

	-- {
		-- MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN',
		-- PRECEDING_KEY_WORDS	= 'GcInteractionComponentData.xml',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- VALUE_CHANGE_TABLE 	= {
					-- {'UseInteractCamera', false}
				-- }
			-- },
			-- {
				-- REPLACE_TYPE 		= 'All',
				-- PRECEDING_KEY_WORDS	= 'GcTriggerActionComponentData.xml',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Sound',		''}
				-- }
			-- },
			-- {
				-- REPLACE_TYPE 		= 'All',
				-- PRECEDING_KEY_WORDS	= 'TkAnimationComponentData.xml',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'FrameEnd',	0}
				-- }
			-- }
		-- }
	-- },
	-- {
		-- MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALMEMBRANE/ENTITIES/PORTALMEMBRANE.ENTITY.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- REPLACE_TYPE 		= 'All',
				-- PRECEDING_KEY_WORDS	= 'TkAnimationComponentData.xml',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'FrameEnd',	0}
				-- }
			-- },
			-- {
				-- REPLACE_TYPE 		= 'All',
				-- VALUE_MATCH			= 1,
				-- VALUE_MATCH_OPTIONS = '>=',
				-- PRECEDING_KEY_WORDS	= 'GcTriggerActionComponentData.xml',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Seconds',		1}
				-- }
			-- }
		-- }
	-- }
