------------------------------------------------------------------
local mod_desc = [[
  Sailship: Restore procedural lights who match the sail's color
]]----------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.sailship proc lights.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/HQLIGHT_MAT11.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SAILS/RECTLIGHTPROC.BASE.DDS'}
				}
			}
		}
	}
}}}}
