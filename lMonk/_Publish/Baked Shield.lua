--------------------------------------------------------------------------
local desc = [[
  Change the consumable bread product's effect to recharge shield
]]------------------------------------------------------------------------
	
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.baked shield.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.0.1',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'FOOD_R_BREAD'},
				VALUE_CHANGE_TABLE 	= {
					{'RewardID',				'SHIELDLARGE'},
					{'CloseInventoryWhenUsed',	true}
				}
			},
		}
	}
}}}}
