------------------------------------------------------------------------
mod_desc = [[
  Make the freighter's hangar gantry cranes less obtrusive
  Reposition some of those loitering NPCs cluttering the landing pads

  * The ADD_FILES section can be safely disabled/ignored if you prefer
   to add the texture files in a different method.
]]----------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Hide Those Cranes.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.10',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'NPC_01'},	-- middle chatterer 1
				VALUE_CHANGE_TABLE	= {
					{'TransX',		-9.507},
					{'TransY',		-3.355},
					{'TransZ',		-28.34},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'NPC_03'},	-- middle chatterer 3
				VALUE_CHANGE_TABLE	= {
					{'TransX',		-8.337},
					{'TransY',		-3.355},
					{'TransZ',		-28.03},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'NPC_06'},	-- middle loiterer
				VALUE_CHANGE_TABLE	= {
					{'TransX',		-21.92},
					{'TransY',		-4.2},
					{'TransZ',		5.5},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'NPC_07'},	-- left high loiterer
				VALUE_CHANGE_TABLE	= {
					{'TransX',		-57.8},
					{'TransY',		8.1},
					{'TransZ',		57.14},
					{'RotY',		270},
				}
			},
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', 'NPC_02'},		-- middle lifted
					{'Name', 'NPC_04'},		-- left middle loiterer
				},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefHangarCrane2'}, -- right (1)
				VALUE_CHANGE_TABLE	= {
					{'TransZ',		61.2},	-- -16.480017
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefHangarCrane'}, -- middle (2)
				VALUE_CHANGE_TABLE	= {
					{'TransZ',		60.7},	-- 50.21371
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefHangarCrane1'}, -- left (3)
				VALUE_CHANGE_TABLE	= {
					{'TransZ',		60.9},	-- -3.715493
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
