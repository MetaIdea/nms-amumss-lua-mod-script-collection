NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BalancedMTCabinetLighting", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "6.06",
["MOD_DESCRIPTION"]			= "Makes Multi-Tool cabinets glow more equally on all parts",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{				
				{
					["MBIN_FILE_SOURCE"]	=	"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SHOPWEAPON.SCENE.MBIN",
					["MXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Type", "LIGHT"},
							["REPLACE_TYPE"]		=	"ALL",
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "WeaponsCrateREF", "Name", "SCENEGRAPH"},
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_WEAPONOSS.SCENE.MBIN"},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]	=	"MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\SHOPS\SUITANDWEAPONSHOPAREA.SCENE.MBIN",
					["MXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "REFGunBox01", "Name", "SCENEGRAPH"},
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_WEAPONSS1.SCENE.MBIN"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"]	=	{"Name", "REFGunBox02", "Name", "SCENEGRAPH"},
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_WEAPONSS2.SCENE.MBIN"},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]	=	{
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SHOPWEAPON\INTERIORLIGHTS_MAT26.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SHOPWEAPON\LIGHTS1_MAT.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SHOPWEAPON\GLOW_MAT.MATERIAL.MBIN",
													"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SHOPWEAPON\GLOW_MAT1.MATERIAL.MBIN",
												},
					["MXML_CHANGE_TABLE"]	= 
					{
						{
							["VALUE_CHANGE_TABLE"]	= 
							{
								{"Class",	""},
							},
						},
					},
				},

				{
					["MBIN_FILE_SOURCE"]	= 	"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPON.SCENE.MBIN",
					["MXML_CHANGE_TABLE"]	= 
					{
						{
							["SKW"]	=	{"Name", "pointLight5", "Name", "FALLOFF"},
							["VCT"] 	= 
							{
								{"Value",	"linear"}, -- original: quadratic (which is also how the real world behaves)
							},
						},	
						{
							["SKW"]	=	{"Name", "pointLight5", "Name", "INTENSITY"},
							["VCT"] 	= 
							{
								{"Value",	"6000"}, -- original: 10000
							},
						},	
					},
				},
				
				{
					["MBIN_FILE_SOURCE"]    = {
						{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPON.SCENE.MBIN]],[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPONSS1.SCENE.MBIN]]},
						{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPON.SCENE.MBIN]],[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPONSS2.SCENE.MBIN]]},
						{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPON.SCENE.MBIN]],[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPONOSS.SCENE.MBIN]]}
					},
				},

				-- 1: back (close to the core)
				{
					["MBIN_FILE_SOURCE"]	= 	"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPONSS1.SCENE.MBIN",
					["MXML_CHANGE_TABLE"]	= 
					{
						{
							["SKW"]	=	{"Name", "pointLight5"},
							["REMOVE"] = "SECTION", -- there's a strong light source somewhere in the back that illuminates this cabinet
						},	
					},
				},

				-- adjust brightness value for outlaw stations
				{
					["MBIN_FILE_SOURCE"]	= 	"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_WEAPONOSS.SCENE.MBIN",
					["MXML_CHANGE_TABLE"]	= 
					{
						{
							["SKW"]	=	{"Name", "pointLight5", "Name", "INTENSITY"},
							["VCT"] 	= 
							{
								{"Value",	"9000"}, -- original: 10000
							},
						},	
					},
				},
			}
		}
	}	
}