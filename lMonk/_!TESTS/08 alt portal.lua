-----------------------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
--[[--------------------------------------------------------------------------------------

  toy portal

  dialog rewards
    dial:	ADVANCE_PORTAL
    show:	REVEAL_RUNES
	close:	RESET_PORTAL

MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL.SCENE.MBIN

MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALTERMINAL.SCENE.MBIN
MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN

]]---------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '___TEST 08 toy portal.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.7',
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	-- MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	-- {
		-- MBIN_FILE_SOURCE	= {
			-- {
				-- 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL.SCENE.MBIN',
				-- 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL_TOY.SCENE.MBIN',
				-- 'REMOVE'
			-- }
		-- }
	-- },
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {
					{'Name', 'PillarsA'},
					{'Name', 'PillarsB'},
					{'Name', 'PortalStructure'},
					{'Name', 'REFPortalCloudsVFX'},
					{'Name', 'REFPortalMistVFX'},
					-- {'Name', 'SideA'},
				},
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALSIDE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {
					{'Name', 'PortRingsDead'},
					{'Name', 'Wheels'},
					{'Name', 'Controller'},
				},
				REMOVE				= 'Section'
			},

			-- moving membrane or PlayerSpawn doesn't work - move the dialer instead (REFPortalTerminalB)?

			{
				SPECIAL_KEY_WORDS	= {'Name', 'REFMembraneB'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		-25}
				}
			},
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'PlayerSpawn'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'TransX',		-26},
					-- -- {'TransY',		0.5}
				-- }
			-- },
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/PORTAL.ENTITY.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALMEMBRANE/ENTITIES/PORTALMEMBRANE.ENTITY.MBIN'
		},
		PRECEDING_KEY_WORDS	= 'GcInteractionComponentData.xml',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'UseInteractCamera', false}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALMEMBRANE/ENTITIES/PORTALMEMBRANE.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				PRECEDING_KEY_WORDS	= 'TkAnimationComponentData.xml',
				VALUE_CHANGE_TABLE 	= {
					{'FrameEnd',	0}
				}
			},
			-- {
				-- REPLACE_TYPE 		= 'All',
				-- PRECEDING_KEY_WORDS	= 'GcPlayAudioAction.xml',
				-- SECTION_UP			= 1,
				-- REMOVE				= 'Section'
			-- }
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'GcMaintenanceComponentData.xml',
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALMEMBRANE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
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

	-- {
		-- MBIN_FILE_SOURCE	=  'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/TOY_CORE.SCENE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'AudioToyCore'},
				-- REMOVE				= 'Section'
			-- },
			-- {
				-- PRECEDING_KEY_WORDS	= 'Children',
				-- SECTION_ACTIVE		= -1,
				-- ADD 				= ToExml({
					-- ScNode(
						-- 'Portal', 'LOCATOR', {
							-- ScTransform(),
							-- ScAttributes({
								-- {'ATTACHMENT', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/PORTAL.ENTITY.MBIN'}
							-- })
						-- }
					-- ),
					-- ScNode(
						-- 'Controller', 'LOCATOR', {
							-- ScTransform(),
							-- ScAttributes({
								-- {'ATTACHMENT', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALSIDE/ENTITIES/CONTROLLER.ENTITY.MBIN'}
							-- })
						-- }
					-- ),
					-- ScNode(
						-- 'PortalTrigger', 'LOCATOR', {
							-- ScTransform(),
							-- ScAttributes({
								-- {'ATTACHMENT', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/PORTALTRIGGER.ENTITY.MBIN'}
							-- }),
							-- ScChildren({
								-- ScNode(
									-- 'PortalMembrane', 'LOCATOR', {
										-- ScTransform(),
										-- ScAttributes({
											-- {'ATTACHMENT', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALMEMBRANE/ENTITIES/PORTALMEMBRANE.ENTITY.MBIN'}
										-- })
									-- }
								-- )
							-- })
						-- }
					-- ),
					-- ScNode('PlayerSpawn', 'LOCATOR', {ScTransform()})
				-- })
			-- },
		-- }
	-- },

	-- {--	|add teleporter| menu to galaxy toy
		-- MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/TOY_CORE.SCENE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'ATTACHMENT' },
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Value', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TOY_PORTAL/ENTITIES/START_BTN.ENTITY.MBIN'}
				-- }
			-- }
		-- }
	-- },
	-- {
		-- MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TOY_PORTAL/ENTITIES/START_BTN.ENTITY.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- VALUE_CHANGE_TABLE 	= {
					-- {'UseInteractCamera', false}
				-- }
			-- },
			-- {
				-- PRECEDING_KEY_WORDS	= 'GcMaintenanceComponentData.xml',
				-- REMOVE				= 'Section'
			-- }
		-- }
	-- }
}}},
	-- ADD_FILES	= {
		-- {
		-- --	MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN

			-- FILE_DESTINATION = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TOY_PORTAL/ENTITIES/START_BTN.ENTITY.EXML',
			-- FILE_CONTENT	 = FileWrapping({
				-- meta = {'template','TkAttachmentData'},
				-- Components = {
					-- meta = {'name','Components'},
					-- Interaction	= {
						-- meta = {'value','GcInteractionComponentData.xml'},
						-- InteractionAction	= 'PressButton',
						-- InteractionType		= {
							-- meta = {'InteractionType','GcInteractionType.xml'},
							-- InteractionType	= 'Portal'
						-- },
						-- AttractDistanceSq	= 6,
						-- InteractAngle		= 360,
						-- InteractDistance	= 5,
					-- },
					-- -- component stub
					-- value = 'TkPhysicsComponentData.xml'
				-- }
			-- })
		-- },
		-- {
		-- --	source: portal membrane
		-- --	MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTALMEMBRANE/ENTITIES/PORTALMEMBRANE.ENTITY.MBIN

			-- FILE_DESTINATION = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TOY_PORTAL/ENTITIES/ACTIVATION.ENTITY.EXML',
			-- FILE_CONTENT	 = FileWrapping({
				-- meta = {'template','TkAttachmentData'},
				-- Components = {
					-- meta = {'name','Components'},
					-- Interaction	= {
						-- meta = {'value','GcInteractionComponentData.xml'},
						-- InteractionAction	= 'PressButton',
						-- InteractionType		= {
							-- meta = {'InteractionType','GcInteractionType.xml'},
							-- InteractionType	= 'PortalActivate' -- real activation??
						-- },
						-- AttractDistanceSq	= 9,
						-- InteractAngle		= 360,
						-- InteractDistance	= 5,
					-- },
					-- -- component stub
					-- -- value = 'TkPhysicsComponentData.xml'
				-- }
			-- })
		-- },

	-- }
}