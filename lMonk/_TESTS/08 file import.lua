----------------------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 08 file import.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTDARKTRAIL.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/EFFECTS/TRAILS/HOT/BLUEDARKER1.DDS'}
				}
			}
		}
	}
}}},
	ADD_FILES	= {
		{
			EXTERNAL_FILE_SOURCE= 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Effects/Trails/BLUEDARKER1.DDS',
			FILE_DESTINATION	= 'TEXTURES/EFFECTS/TRAILS/HOT/BLUEDARKER1.DDS'
		}
	}
}
