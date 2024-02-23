--------------------------------------------
local mod_desc = [[
  Disable windmilling fall panic animation
]]------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.dont panic.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', '0H_AIRBORNE', 'AnimId', '0H_FALL_PANIC'},
				VALUE_CHANGE_TABLE 	= {
					{'AnimId',		'0H_FALL_CTRL'},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', '1H_AIRBORNE', 'AnimId', '0H_FALL_PANIC'},
				VALUE_CHANGE_TABLE 	= {
					{'AnimId',		'1H_FALL_CTRL'},
				}
			},
		}
	}
}}}}
