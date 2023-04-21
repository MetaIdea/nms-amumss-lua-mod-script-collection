-----------------------------------------------------------------------------
ModName = 'No Mans Land Disable Launch Autochargers'
ModAuthor = 'Youngneil1'		--By 1Monk, edited by Xen0nex, then again by youngneil1
Version = '4.20'
local desc = [[
  Turns autocharging boni of tech into reduced launch cost boni.
]]---------------------------------------------------------------------------


BonusChange = 5
LevelChange = 1


NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= ModName..Version..".pak",
	MOD_AUTHOR			= ModAuthor,
	NMS_VERSION			= Version,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			
			{
				SPECIAL_KEY_WORDS	= {"ID", "UT_LAUNCHCHARGE", "StatsType", "Ship_Launcher_AutoCharge"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusChange},
					{'Level', LevelChange}
					
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "UT_LAUNCHCHARGE", "StatsType", "Ship_Launcher_AutoCharge"},
				VALUE_CHANGE_TABLE 	= {
					{'StatsType', "Ship_Launcher_TakeOffCost"}
					
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "SOLAR_SAIL", "StatsType", "Ship_Launcher_AutoCharge"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusChange},
					{'Level', LevelChange}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "SOLAR_SAIL", "StatsType", "Ship_Launcher_AutoCharge"},
				VALUE_CHANGE_TABLE 	= {
					{'StatsType', "Ship_Launcher_TakeOffCost"}
					
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "LAUNCHER_ROBO", "StatsType", "Ship_Launcher_AutoCharge"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusChange},
					{'Level', LevelChange}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "LAUNCHER_ROBO", "StatsType", "Ship_Launcher_AutoCharge"},
				VALUE_CHANGE_TABLE 	= {
					{'StatsType', "Ship_Launcher_TakeOffCost"}
					
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "CHARGER_ALIEN", "StatsType", "Ship_Launcher_AutoCharge"},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus', BonusChange},
					{'Level', LevelChange}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {"ID", "CHARGER_ALIEN", "StatsType", "Ship_Launcher_AutoCharge"},
				VALUE_CHANGE_TABLE 	= {
					{'StatsType', "Ship_Launcher_TakeOffCost"}
					
				}
			},
			
		}
	},
	
}}}}

