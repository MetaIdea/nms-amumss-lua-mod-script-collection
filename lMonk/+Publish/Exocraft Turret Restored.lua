--------------------------------------------------------------------------
local desc = [[
  A bug fix for Waypoint update... Restore the gun turret on all vehicles.
  * The mod simply removes the check against installed tech so the turret
   is always displayed - even without a gun or laser installed.
]]------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Exocraft turret Restored.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/VEHICLES/BUGGY/ENTITIES/GUN.ENTITY.MBIN',
			'MODELS/COMMON/VEHICLES/SHARED/MININGLASER/ENTITIES/GUN.ENTITY.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'GcTechnologyAttachmentComponentData.xml',
				REMOVE				= 'Section'
			}
		}
	}
}}}}
