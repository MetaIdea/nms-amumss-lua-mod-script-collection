--------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 6 black box.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DISTRESSSIGNAL/PARTS/BLACKBOX/ENTITIES/BLACKBOX.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'Components',
				ADD 				= ToExml({
					{
						META	= {'value', 'GcScannableComponentData.xml'},
						ScanName					= 'SIGNAL_DISTRESS',
						ScanTime					= 30,
						CompassRangeMultiplier		= 1,
						AlwaysShowRange				= 3000,
						CanTagIcon					= true,
						ClearTagOnArrival			= true,
						{
							META	= {'Icon', 'GcScannerIconTypes.xml'},
							ScanIconType			= 'FreighterHeater',
						},
						ScannableType				= 'Binoculars',
						MinDisplayDistanceOverride	= 10
					},
					{
						META	= {'value', 'GcShootableComponentData.xml'},
						Health						= 2500,
						ImpactShake					= true,
						ImpactShakeEffect			= 'SHOOTABLESHAKE',
						IncreaseWantedThresholdTime	= 0.5,
						FiendCrimeModifier			= 1,
						RepairTime					= 8,
						IgnoreHitPush				= true
					},
					{
						META	= {'value', 'GcDestructableComponentData.xml'},
						Explosion					= 'ROCKEXPLODE',
						ExplosionScale				= 1,
						VehicleDestroyEffect		= 'VEHICLECRASH',
						IncreaseFiendWantedChance	= 1,
						LootRewardAmountMin			= 50,
						LootRewardAmountMax			= 50,
						RemoveModel					= true,
						DestroyedModelUsesScale		= true,
						DestroyForce				= 10,
						DestroyForceRadius			= 50,
						DestroyEffectPoint			= 'SFX',
						DestroyEffectTime			= 2,
						ShowInteract				= true,
						ShowInteractRange			= 8,
						GrenadeSingleHit			= true
					}
				})
			}
		}
	}
}}}}
