--[[--------------------------------------------------------------------
  vehicle gun turret shoots grenades!!
  replace vehicle gun upgrade module Gun Heat bonus with splash radius
----------------------------------------------------------------------]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 32 vehicle grenade gun.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/PROJECTILES/PROJECTILETABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', 'VEHICLEGUN'},
				VALUE_CHANGE_TABLE 	= {
					{'Radius',			15},	-- 5
					{'RagdollPush',		12},	-- 5
					{'PhysicsPush',		6},		-- 2.5
					{'BehaviourFlags',	'ExplosionForce'},
					{'DefaultImpact',	'GRENADEEXPLODE'}
				},
			},
			{
				VALUE_MATCH			= 'VehicleGun',
				SPECIAL_KEY_WORDS	= {'Id', 'VEHICLEGUN', 'DamageType', 'VehicleGun'},
				VALUE_CHANGE_TABLE 	= {
					{'DamageType',		'Explosion'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '$-',
				SPECIAL_KEY_WORDS	= {'StatsType', 'Vehicle_GunHeatTime'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'ValueMin',		1.95},
					{'ValueMax',		2.05}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'StatsType', 'Vehicle_GunHeatTime'},
				VALUE_CHANGE_TABLE 	= {
					{'StatsType',		'Weapon_Grenade_Radius'}
				}
			}
		}
	}
}}}}
