Author			= "JMZawodny"
ModName			= "zNo"
ModNameSub		= "Half Open Ramp"
ModPrefix		= ""
BaseDescription = "Makes Corvette ramps open all the way"
GameVersion		= "v6.24"
ModVersion		= ""


NMS_MOD_DEFINITION_CONTAINER =
{
	MOD_FILENAME	= ModPrefix..ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	LUA_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {{MBIN_CHANGE_TABLE = {
	{ -- Ambassador Close
		MBIN_FILE_SOURCE = 
		{ 
			{
				"MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\Airlock_NESW_B\Animations\Airlock_NESW_B_Close.Anim.MBIN",
				"MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\Airlock_NESW_B\Animations\Airlock_NESW_B_CloseHalf.Anim.MBIN"
			}
		}
	},
	{ -- Ambassador Open
		MBIN_FILE_SOURCE = 
		{ 
			{
				"MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\Airlock_NESW_B\Animations\Airlock_NESW_B_Open.Anim.MBIN",
				"MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\Airlock_NESW_B\Animations\Airlock_NESW_B_OpenHalf.Anim.MBIN"
			}
		}
	},
	{ -- Titan Close
		MBIN_FILE_SOURCE = 
		{ 
			{
				"MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\Anims\Airlock_NESW_A\Airlock_NESW_A_Close.Anim.MBIN",
				"MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\Anims\Airlock_NESW_A\Airlock_NESW_A_CloseHalf.Anim.MBIN"
			}
		}
	},
	{ -- Titan Open
		MBIN_FILE_SOURCE = 
		{ 
			{
				"MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\Anims\Airlock_NESW_A\Airlock_NESW_A_Open.Anim.MBIN",
				"MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\Anims\Airlock_NESW_A\Airlock_NESW_A_OpenHalf.Anim.MBIN"
			}
		}
	},
	}},}
}