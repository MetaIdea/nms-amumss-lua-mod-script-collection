
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
