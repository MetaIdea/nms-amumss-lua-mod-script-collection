-----------------------------------------------------------------------
local mod_desc = [[
  replace the sailship wing's red triangle with the logo/number decals
]]---------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.Sailship procedural decals',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.21',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/DECALS_NUMBERDECAL1.MATERIAL.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/DECALS/LOGO/LOGO.DDS'}
				}
			}
		}
	}
}}}}