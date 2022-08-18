------------------------------------------------------------
local desc = [[
  Restore old creature-scanned icon; Remove choice HUD icons
  Remove tiny cargo pod frigates
  Faster screen text
  Increase suit tech inventory size; round stack to 10000
  remove startup logo splash
  add eye texture to alien head4
  better cloud map
]]----------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{ -- 
	---	|restore-remove HUD icons|
		MBIN_FILE_SOURCE	= 'METADATA/UI/HUD/SCANNERICONS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'CreatureDiscovered',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/HUD/CREATURE.DISCOVERED.DDS'}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				PRECEDING_KEY_WORDS = 'MessageBeacon',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/BLANK.64.DDS'}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				PRECEDING_KEY_WORDS = 'MessageBeaconSmall',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/BLANK.64.DDS'}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				PRECEDING_KEY_WORDS = 'FreighterBase',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/BLANK.64.DDS'}
				}
			},
			-- {
				-- REPLACE_TYPE 		= 'All',
				-- PRECEDING_KEY_WORDS = 'PlayerFreighter',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Filename', 'TEXTURES/BLANK.64.DDS'}
				-- }
			-- }
		}
	},
	{
	---	|No tiny frigates|
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SPACE/AISPACESHIPMANAGER.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Filename', 'MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTERTINY_PROC.SCENE.MBIN'},
				REMOVE				= 'Section'
			}
		}
	},
	{
	---	|Faster screen text|
		MBIN_FILE_SOURCE	= 'METADATA/UI/SPECIALTEXTPUNCTUATIONDELAYDATA.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				INTEGER_TO_FLOAT	= 'Force',
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE 	= {
					{'Delay',			0.1},
					{'DefaultDelay',	0.2}
				}
			}
		}
	},
	{
	---	|Increase suit tech inventory| size; round stack to 10000
		MBIN_FILE_SOURCE	= {
			'METADATA/GAMESTATE/DEFAULTINVENTORYBALANCE.MBIN',
			'METADATA/GAMESTATE/DEFAULTINVENTORYBALANCESURVIVAL.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'DefaultSubstanceMaxAmount',			10000},
					{'SubstanceMaxAmountLimit',				10000},
					{'ProductMaxAmountLimit',				10000},
					{'ShipProductStorageMultiplier',		10},	-- 5
					{'PlayerPersonalInventoryTechWidth',	6},
					{'PlayerPersonalInventoryTechHeight',	5},
					{'DeconstructRefundPercentage',			0.75}	-- 0.5
				}
			}
		}
	},
	{
	---	Increase |substance stack in survival| mode
		MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/DEFAULTINVENTORYBALANCESURVIVAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'DefaultSubstanceMaxAmount',			1000},
					{'PlayerPersonalInventoryTechWidth',	5},
					{'PlayerPersonalInventoryTechHeight',	5},
				}
			}
		}
	},
	{
	---	|faster splash logo|
		MBIN_FILE_SOURCE	= 'METADATA/UI/BOOTLOGOPC.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS = 'DisplayTime',
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		0}
				}
			}
		}
	},
	{
	---	|restore eyes to head4| alien
		MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/PLAYERDATA/CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'GroupID', 'FOURTH_HEAD_1'},
				PRECEDING_KEY_WORDS = 'Descriptors',
				ADD 				= [[<Property value="NMSString0x20.xml">
											<Property name="Value" value="_EYES_DEFAULT1"/>
										</Property>]]
			}
		}
	},
	{
	---	|better clouds|
		MBIN_FILE_SOURCE	= 'MATERIALS/ATMOSPHERE.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gCloudMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/SPACE/ATMOSPHERE/ATMOSPHERE.DDS'}
				}
			}
		}
	}
}}}}
