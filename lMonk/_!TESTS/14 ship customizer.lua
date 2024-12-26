
-- VALUE_MATCH should prevent the VCT catching line 7 and try to replace 'GcInteractionType.xml' - instead of correctly targeting line 8.

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME			= '___TEST 13 customiseship.pak',
	MOD_AUTHOR				= 'lMonk',
	MODIFICATIONS		 = {{
	MBIN_CHANGE_TABLE = {
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/BLUEPRINTANALYSER_WEAP/ENTITIES/DATA.ENTITY.MBIN',
		EXML_CHANGE_TABLE = {
			{
				VALUE_MATCH				 = '{%.xml$}',
				VALUE_MATCH_OPTIONS = '~=',
				VALUE_CHANGE_TABLE	= {
					{'InteractionType',	'CustomiseShip'}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'StoryUtilityOverrideData',
				VALUE_CHANGE_TABLE	= {
					{'Name',	'Ship Customizer'},
					{'Reward',	''}
				}
			},
			{
				PRECEDING_KEY_WORDS = 'PuzzleMissionOverrideTable',
				REMOVE							= 'Section'
			}
		}
	}
}}}}

		-- {--	hangar ship salvage terminal entity
			-- FILE_DESTINATION = 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/ENTITIES/SHIP_SALVAGE.ENTITY.EXML',
			-- FILE_CONTENT	 = FileWrapping({
				-- meta = {'template','TkAttachmentData'},
				-- Components = {
					-- meta = {'name','Components'},
					-- Simple	= {
						-- meta = {'value','GcSimpleInteractionComponentData.xml'},
						-- Name = 'UI_SALVAGE_TITLE'
					-- },
					-- Interaction	= {
						-- meta = {'value','GcInteractionComponentData.xml'},
						-- InteractionAction	= 'PressButton',
						-- InteractionType		= {
							-- meta = {'InteractionType','GcInteractionType.xml'},
							-- InteractionType	= 'StoryUtility'
						-- },
						-- AttractDistanceSq	= 3,
						-- InteractAngle		= 360,
						-- InteractDistance	= 3,
						-- PuzzleMissionOverrideTable = {
							-- meta = {'name','PuzzleMissionOverrideTable'},
							-- Puzzle	= {
								-- meta = {'value','GcAlienPuzzleMissionOverride.xml'},
								-- Mission		= 'EXPLORE_LOG', -- must be a real mission id
								-- Puzzle		= 'SHIP_SALVAGE'
							-- }
						-- }
					-- },
					-- value = 'TkPhysicsComponentData.xml'
				-- }
			-- })
		-- }
