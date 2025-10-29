---------------------------------------------------------------------------------------------
local mod_desc = [[
  Changes cockpit tech base stat so there is proper synergy with pulse drive tech.
  This also (somehow) fixes photon cannon tech persisting when the build part is dismantled.
]]-------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.Corvette Technology Fix',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.12',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.EXML',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'ID', 'T_CR_FIGHT'},
				PRECEDING_KEY_WORDS	= 'BaseStat',
				VALUE_CHANGE_TABLE 	= {
					{'StatsType',	'Ship_PulseDrive'}
				}
			}
		}
	}
}}}}