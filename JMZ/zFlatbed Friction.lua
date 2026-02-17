Author			= "JMZawodny"
ModName			= "zFlatbed"
ModNameSub		= "Friction"
BaseDescription = "Make the cargo more stable"
GameVersion		= "v6.22"
ModVersion		= ""

Friction = 0.999
Rolling = 0.999
Angular = 0.999
Linear = 0.999
Health = 8

NMS_MOD_DEFINITION_CONTAINER =
{
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	LUA_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {{MBIN_CHANGE_TABLE = {
	{ -- Adjust
		MBIN_FILE_SOURCE = {
			"Models\Common\Vehicles\Rover\Rover\Entities\flatbed.entity.MBIN",
			"Models\Common\Vehicles\Rover\Rover\Entities\flatbedbarrier.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\explosive_large_crate\entities\ExplosiveLargeCrate.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\explosive_medium_barrel\entities\ExplosiveMediumBarrel.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\explosive_small_canister\entities\ExplosiveSmallCanister.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\radioactive_large_crate\entities\RadioactiveLargeCrate.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\radioactive_medium_crate\entities\RadioactiveCrateMediumCrate.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\radioactive_small_canister\entities\RadioactiveSmallCanister.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\toxic_large_crate\entities\ToxicLargeCrate.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\toxic_medium_barrel\entities\ToxicMediumBarrel.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\toxic_small_canister\entities\ToxicSmallCanister.entity.MBIN",
			"models\planets\common\physicsprops\canister_empty\entities\canisterempty.entity.mbin",
			"models\planets\common\physicsprops\junk\entities\wheels.entity.mbin",
			"models\planets\common\physicsprops\junk\entities\dynamicjunk_small.entity.mbin",
			"models\planets\common\physicsprops\junk\entities\dynamicjunk_medium.entity.mbin",
			"models\planets\common\physicsprops\junk\entities\dynamicjunk_large.entity.mbin",
		},
		MXML_CHANGE_TABLE = 
		{
			{ -- Set the values
				SKW = {
					{"Components" ,"TkPhysicsComponentData", "Data", "TkPhysicsData"},
				},
				VCT = {
					{"Friction" ,Friction},
					{"RollingFriction" ,Rolling},
					{"AngularDamping" ,Angular},
					{"LinearDamping" ,Linear},
				}
			},
		}
	},
	{ -- Adjust
		MBIN_FILE_SOURCE = {
			"Models\Planets\Biomes\Common\Buildings\Props\Abandoned\Shared\junk.entity.MBIN",
		},
		MXML_CHANGE_TABLE = 
		{
			{ -- Set the values
				SKW = {
					{"Components" ,"TkStaticPhysicsComponentData", "Data", "TkPhysicsData"},
				},
				VCT = {
					{"Friction" ,Friction},
					{"RollingFriction" ,Rolling},
					{"AngularDamping" ,Angular},
					{"LinearDamping" ,Linear},
				}
			},
		}
	},
	{ -- Adjust
		MBIN_FILE_SOURCE = {
			"Models\Planets\Common\PhysicsProps\explosive_large_crate\entities\ExplosiveLargeCrate.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\explosive_medium_barrel\entities\ExplosiveMediumBarrel.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\explosive_small_canister\entities\ExplosiveSmallCanister.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\radioactive_large_crate\entities\RadioactiveLargeCrate.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\radioactive_medium_crate\entities\RadioactiveCrateMediumCrate.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\radioactive_small_canister\entities\RadioactiveSmallCanister.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\toxic_large_crate\entities\ToxicLargeCrate.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\toxic_medium_barrel\entities\ToxicMediumBarrel.entity.MBIN",
			"Models\Planets\Common\PhysicsProps\toxic_small_canister\entities\ToxicSmallCanister.entity.MBIN",
		},
		MXML_CHANGE_TABLE = 
		{
			{ -- Set the values
				SKW = {
					{"Components" ,"GcShootableComponentData"},
				},
				VCT = {
					{"Health" ,"@*"..Health},
				}
			},
		}
	},

	}},}
}