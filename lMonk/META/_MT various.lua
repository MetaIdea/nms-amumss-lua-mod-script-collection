------------------------------------------------------------
local desc = [[
  Restore old creature-scanned icon; Remove choice HUD icons
  Faster screen text
  Increase suit tech inventory size; round stack to 10000
  remove startup logo splash
  add eye texture to alien head4
  better cloud map
]]----------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_META ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		-- |restore-remove HUD icons|
		MBIN_FILE_SOURCE	= 'METADATA/UI/HUD/SCANNERICONS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'CreatureDiscovered',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/HUD/CREATURE.SCANNED2.DDS'}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				PRECEDING_KEY_WORDS = 'MessageBeacon',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/HUD/ICONS/SCANNING/SCAN.DDS'}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				PRECEDING_KEY_WORDS = 'MessageBeaconSmall',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/HUD/ICONS/SCANNING/SCAN.DDS'}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				PRECEDING_KEY_WORDS = 'FreighterBase',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/HUD/ICONS/SCANNING/SCAN.DDS'}
				}
			},
			{
				REPLACE_TYPE 		= 'ALL',
				PRECEDING_KEY_WORDS = 'PlayerFreighter',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/HUD/ICONS/SCANNING/SCAN.DDS'}
				}
			},
		}
	},
	{
		-- |Faster screen text|
		MBIN_FILE_SOURCE	= 'METADATA/UI/SPECIALTEXTPUNCTUATIONDELAYDATA.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				INTEGER_TO_FLOAT	= 'FORCE',
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE 	= {
					{'Delay',			0.22},
					{'DefaultDelay',	0.22}
				}
			}
		}
	},
	{
		-- |Increase suit tech inventory| size; round stack to 10000
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
					{'PlayerPersonalInventoryTechWidth',	5},
					{'PlayerPersonalInventoryTechHeight',	5},
					{'DeconstructRefundPercentage',			0.75}	-- 0.5
				}
			}
		}
	},
	{
		-- Increase |substance stack in survival| mode
		MBIN_FILE_SOURCE	= 'METADATA/GAMESTATE/DEFAULTINVENTORYBALANCESURVIVAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'DefaultSubstanceMaxAmount',			500}
				}
			}
		}
	},
	{
		-- |faster splash logo| 
		MBIN_FILE_SOURCE	= 'METADATA/UI/BOOTLOGOPC.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				MATH_OPERATION 		= '*',
				PRECEDING_KEY_WORDS = 'DisplayTime',
				VALUE_CHANGE_TABLE 	= {
					{'IGNORE',		0}
				}
			}
		}
	},
	{
		-- |restore eyes to head4| alien
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
		-- |better clouds|
		MBIN_FILE_SOURCE	= 'MATERIALS/ATMOSPHERE.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'gaSpecularValuesVec4'},
				-- REMOVE				= 'SECTION'
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gCloudMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/SPACE/ATMOSPHERE/ATMOSPHERE02.DDS'}
				}
			}
		}
	}
}}}}
