------------------------------------------------------------------------
local desc = [[
  Make the freighter's hangar gantry cranes less obtrusive

  * The ADD_FILES section can be safely disabled/ignored if you prefer
   to add the texture files in a different method.
]]----------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Hide Those Cranes.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.99.1',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefHangarCrane2'}, -- right
				VALUE_CHANGE_TABLE	= {
					{'TransZ',		61.2},	-- -16.480017
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefHangarCrane'}, -- middle
				VALUE_CHANGE_TABLE	= {
					{'TransZ',		60.7},	-- 50.21371
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefHangarCrane1'}, -- left
				VALUE_CHANGE_TABLE	= {
					{'TransZ',		61.2},	-- -3.715493
				}
			}
		}
	}
}}},
	ADD_FILES	= {
		{
			EXTERNAL_FILE_SOURCE = 'E:/MODZ_stuff/NoMansSky/Sources/_Textures/Building/Crane/*.DDS',
			FILE_DESTINATION	 = 'TEXTURES/SPACE/SPACESTATION/PIRATES/*.DDS',
		}
	}
}
