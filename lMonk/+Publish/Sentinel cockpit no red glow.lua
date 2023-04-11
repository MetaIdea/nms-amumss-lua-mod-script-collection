---------------------------------------------------------------------------
mod_desc = [[
  Removes the red glow from parts of the sentinel ship cockpit instruments
  and gets rid of those floating red lights on the canopy
]]-------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '_MOD.lMonk.Sentinel cockpit no red glow.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.21',
	MOD_DESCRIPTION			= mod_desc,
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT/LIGHTS_MAT6.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Samplers',
				REMOVE				= 'Section'
			}
		}
	}
}}}}
