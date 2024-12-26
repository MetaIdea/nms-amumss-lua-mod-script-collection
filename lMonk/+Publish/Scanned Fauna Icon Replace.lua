----------------------------------------------------------------
local mod_desc = [[
  Restore the scanned fauna icon to the white circle

  * ADD_FILES will skipped SILENTLY if new files are not found!
]]--------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.scanned fauna icon replace.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,		
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
}}},
	ADD_FILES	= (
		function()
			local tex_path = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Icons/Hud/CREATURE.GREEN2.DDS'
			if lfs.attributes(tex_path) then
				return {{
					EXTERNAL_FILE_SOURCE = tex_path,
					FILE_DESTINATION	 = 'TEXTURES/UI/HUD/CREATURE.GREEN2.DDS'
				}}
			end
			return nil
		end
	)()
}