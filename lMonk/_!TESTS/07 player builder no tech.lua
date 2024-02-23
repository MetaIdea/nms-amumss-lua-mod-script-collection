-----------------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 07 builder no tech.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {
					{'Name', 'B2Chesttech'},
					{'Name', 'B2tech1'},
					{'Name', 'b2Techbelt'},
					{'Name', 'B3Tech'},
					{'Name', 'b3Techbelt'},
				},
				REMOVE				= 'Section'
			},
		}
	}
}}}}