------------------------------------------------------------
local mod_desc = [[
  Restore the scanned fauna icon to the white circle

  ** CREATURE.SCANNED2.DDS is NOT an original game resource
]]----------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.scanned fauna icon replace.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	ADD_FILES = {
		{
			EXTERNAL_FILE_SOURCE= 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Icons/Hud/CREATURE.GREEN2.DDS',
			FILE_DESTINATION	= 'TEXTURES/UI/HUD/CREATURE.GREEN2.DDS'
		}
	},
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/UI/HUD/SCANNERICONS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'CreatureDiscovered',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/HUD/CREATURE.GREEN2.DDS'}
				}
			}
		}
	}
}}}}
