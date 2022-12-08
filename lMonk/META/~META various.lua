---------------------------------------------------------------
local desc = [[
  Reduce creature damage from laser
  Remove excesive listing of proc upgrades in the catalogue
  Restore old creature-scanned icon; Remove selected HUD icons
  Remove tiny cargo pod frigates
  Faster screen text
  hide inventory change tab marker (bulletpoint) and slashes
  add eye texture to alien head4
  better cloud map
  keep whale song mission active
]]-------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
	---	|no creature laser damage|
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/DEFAULTREALITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'CREATURE', 'DamageType', 'Laser'},
				INTEGER_TO_FLOAT	= 'Force',
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Multiplier',	0.01}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Id', 'FIEND', 'DamageType', 'Laser'},
				INTEGER_TO_FLOAT	= 'Force',
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Multiplier',	0.03}
				}
			}
		}
	},
	{
	---	|no procs in catalogue| 
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/CATALOGUECRAFTING.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP 	= {
					{'CategoryID', 'UI_PORTAL_CAT_TECH_SUIT'}, -- keep s-class >> {^U_.+[124X]X$}
					{'CategoryID', 'UI_PORTAL_CAT_TECH_SHIP'}, -- keep s-class >> {^U_.+[123X]$}
					{'CategoryID', 'UI_PORTAL_CAT_TECH_TOOL'},
					{'CategoryID', 'UI_PORTAL_CAT_TECH_GUN'},
					{'CategoryID', 'UI_PORTAL_CAT_TECH_VEH'}
				},
				PRECEDING_KEY_WORDS = 'NMSString0x10.xml',
				VALUE_MATCH			= '{^U_.+[1234X]$}', -- remove all procs
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'CategoryID', 'UI_PORTAL_CAT_TECH_FRE'},
				PRECEDING_KEY_WORDS = 'NMSString0x10.xml',
				VALUE_MATCH			= '{^U_FR_.+[123]$}', -- keep s-class
				REMOVE				= 'Section'
			}
		}
	},
	{
	---	|alt HUD icons|
		MBIN_FILE_SOURCE	= 'METADATA/UI/HUD/SCANNERICONS.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'CreatureDiscovered',
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/UI/HUD/ICONS/CREATURE.DISCOVERED.DDS'}
				}
			},
			{
				FOREACH_SKW_GROUP = {
					{'MessageBeacon',		'GcScannerIcon.xml'},
					{'MessageBeaconSmall',	'GcScannerIcon.xml'},
					{'FreighterBase',		'GcScannerIcon.xml'},
					-- {'PlayerFreighter',		'GcScannerIcon.xml'},
				},
				VALUE_CHANGE_TABLE 	= {
					{'Filename', 'TEXTURES/BLANK.64.DDS'}
				}
			}
		}
	},
	{
	---	|text images styles|
		MBIN_FILE_SOURCE	= 'METADATA/UI/SPECIALSTYLESIMAGESDATA.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'BULLETPOINT'},
				VALUE_CHANGE_TABLE 	= {
					{'Path',		''}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'SLASH'},
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
				ADD 				= [[
					<Property value="NMSString0x20.xml">
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
	},
	{
	---	|keep whale song mission active|
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/MISSIONS/SPACEPOIMISSIONTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'MissionID', 'BIO_FRIG'},
				PRECEDING_KEY_WORDS	= 'CancelingConditions',
				REMOVE				= 'Section',
			},
			{
				SPECIAL_KEY_WORDS	= {'MissionID', 'BIO_FRIG'},
				SECTION_ACTIVE		= 1,
				VALUE_CHANGE_TABLE	= {
					{'RestartOnCompletion', 'True'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'MissionID', 'BIO_FRIG', 'Stage', 'GcMissionSequenceCreateSpecificPulseEncounter.xml'},
				VALUE_CHANGE_TABLE	= {
					{'PulseEncounterID', 'BIO_FRIG'}
				}
			}
		}
	},
	-- {
	-- ---	|deeper oceans|
		-- MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SOLARSYSTEM/VOXELGENERATORSETTINGS.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- -- MATH_OPERATION 		= '+',
				-- REPLACE_TYPE 		= 'All',
				-- PRECEDING_KEY_WORDS = 'UnderWater',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Subtract',	true},
					-- -- {'Height',		1000},
					-- {'OffsetType',	'Base'}, -- Zero, Base, All, SeaLevel
					-- {'HeightOffset',200}
				-- }
			-- },
		-- }
	-- }
}}}}
