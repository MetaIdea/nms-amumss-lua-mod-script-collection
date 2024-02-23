-----------------------------------------------------------------------------
mod_desc = [[
  Enable scanner tech and materials teleport for bioship
  Increase bioship pulse upgrades stats for higher speed and maneuverability
]]---------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.living ship upgrades.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.22',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'ID', 'SHIP_TELEPORT'},
				VALUE_CHANGE_TABLE 	= {
					{'Bonus',			24}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIP_TELEPORT', 'TechnologyCategory', 'AllShipsExceptAlien'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', 'AllShips'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIPSCAN_COMBAT', 'TechnologyCategory', 'AllShipsExceptAlien'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', 'AllShips'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIPSCAN_ECON', 'TechnologyCategory', 'AllShipsExceptAlien'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', 'AllShips'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'CARGOSHIELD', 'TechnologyCategory', 'AllShipsExceptAlien'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', 'AllShips'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Template', 'A_SHIPJUMP', 'StatsType', 'Ship_Boost'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin',		0.16},	-- 1.1
					{'ValueMax',		0.2}	-- 1.25
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Template', 'A_SHIPJUMP', 'StatsType', 'Ship_BoostManeuverability'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin',		0.18},	-- 1.05
					{'ValueMax',		0.32}	-- 1.18
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Template', 'A_SHIPJUMP', 'StatsType', 'Ship_Maneuverability'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin',		0.07},	-- 1.0065
					{'ValueMax',		0.07} 	-- 1.0065
				}
			}
		}
	}
}}}}
