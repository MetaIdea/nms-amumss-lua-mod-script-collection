--[[┎──────────────────────────────────────────────────────────
	┃ Partial fix to fighter wing_K disappearing texture
────┸──────────────────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.fighter wingK FIX.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_DESCRIPTION		= 'Partial fix to fighter wing_K disappearing texture',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_K\WINGSK.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LODDIST1'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0}
				}
			}
		}
	}
}}}}
