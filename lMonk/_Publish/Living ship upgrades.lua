-----------------------------------------------------------------------------
local desc = [[
  Enable scanner tech and materials teleport for bioship
  Increase bioship pulse upgrades stats for higher speed and maneuverability
]]---------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.living ship upgrades.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.0.1',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '*',
				SPECIAL_KEY_WORDS	= {'ID', 'SHIP_TELEPORT'},
				VALUE_CHANGE_TABLE 	= {
					{'Bonus',			12}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIP_TELEPORT', 'TechnologyCategory', 'Ship'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', 'AllShips'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIPSCAN_COMBAT', 'TechnologyCategory', 'Ship'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', 'AllShips'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'SHIPSCAN_ECON', 'TechnologyCategory', 'Ship'},
				VALUE_CHANGE_TABLE 	= {
					{'TechnologyCategory', 'AllShips'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'CARGOSHIELD', 'TechnologyCategory', 'Ship'},
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
					{'ValueMin',		0.1},	-- 1.1
					{'ValueMax',		0.1}	-- 1.15
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Template', 'A_SHIPJUMP', 'StatsType', 'Ship_BoostManeuverability'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin',		0.12},	-- 1.05
					{'ValueMax',		0.1}	-- 1.12
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				SPECIAL_KEY_WORDS	= {'Template', 'A_SHIPJUMP', 'StatsType', 'Ship_Maneuverability'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin',		0.044},	-- 1.005
					{'ValueMax',		0.045} 	-- 1.005
				}
			}
		}
	}
}}}}
