--------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META ship spawns & health.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				PRECEDING_FIRST		= true,
				PRECEDING_KEY_WORDS	= 'FrigateFlybySpawns',
				SECTION_ACTIVE		= 1,
				VALUE_CHANGE_TABLE	= {
					{'MinRange', 800}
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_FIRST		= true,
				PRECEDING_KEY_WORDS	= 'FrigateFlybySpawns',
				SECTION_ACTIVE		= 2,
				VALUE_CHANGE_TABLE	= {
					{'MinRange', 800}
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_FIRST		= true,
				PRECEDING_KEY_WORDS	= 'FrigateFlybySpawns',
				SECTION_ACTIVE		= 3,
				VALUE_CHANGE_TABLE	= {
					{'MinRange', 800}
				}
			},
		}
	}
}}}}
