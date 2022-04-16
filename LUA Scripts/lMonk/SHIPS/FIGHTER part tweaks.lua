--------------------------------------------------------------------------
local desc = [[
  Shorter overhead tail fin _Acc_A (clips with engines B & D)
  Narrower _SubWings_D, so it doesn't clip the ground
  Partial fix to wing_K disappearing texture when near
  Relocate bobble in cockpit so it doesn't obstruct the map
  Reduce ship body outer spotlight intensity, remove foggy light cone
]]------------------------------------------------------------------------

local Tail_Scales = {
	'', 1, 2, 3, 4, 5, 6, 10
}
function Tail_Scales:Get(x)
	return {
		INTEGER_TO_FLOAT	= 'FORCE',
		SPECIAL_KEY_WORDS	= {'Name', '_Acc_A'..x},
		VALUE_CHANGE_TABLE 	= {
			{'ScaleX',		0.88},
			{'ScaleY',		0.68},
			{'ScaleZ',		1.08}
		}
	}
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__SHIP fighter parts tweaks.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_SHIPS ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		-- Slightly wider _SubWings_A (just looks better)
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_B/WINGSB.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_E/WINGSE.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_H/WINGSH.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_A'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleZ',		1.265},
					{'TransZ',		0.315}
				}
			}
		}
	},
	{
		-- Narower _SubWings_D, so it doesn't clip the ground
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_F/WINGS_F.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_H/WINGSH.SCENE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_D'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleY',		0.7},
					{'ScaleZ',		1.06},
					{'TransY',		0.36}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_B/WINGSB.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_D'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',		0.91},
					{'ScaleY',		0.7},
					{'ScaleZ',		1.06},
					{'TransY',		0.36}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_E/WINGSE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_D'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleY',		0.7},
					{'ScaleZ',		1.04},
					{'TransY',		0.36},
					{'TransZ',		0.56}
				}
			}
		}
	},
	{
		-- Partial fix to wing_K (WingK_B) missing texture and decal sections
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LODDIST1'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		0}
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_A'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleZ',		1.24}
				}
			}
		}
	},
	{
		-- |cockpit_B delete rectangle decal|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_B/COCKPITB.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Rectangle_A2'},
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Rectangle_A3'},
				REMOVE				= 'SECTION'
			}
		}
	},
	{
		-- nose C front decal fix
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEC/COCKPITANOSEC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logoL_A'},
				VALUE_CHANGE_TABLE 	= {
					{'TransZ',		8.75}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logoR_A'},
				VALUE_CHANGE_TABLE 	= {
					{'TransZ',		8.75},
					{'RotY',		-90}
				}
			}
		}
	},
	{
		-- |fighter cockpit F decals fix|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_F/COCKPTF.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'logo_A1'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		-90},
					{'ScaleX',		0.244},	-- 0.3
					{'ScaleY',		0.244},	-- 0.3
					{'TransY', 		1.02},	-- 1.196
					{'TransZ',		6.455},	-- 6.478
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'logo_A2'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		-90},
					{'ScaleX',		0.244},	-- 0.3
					{'ScaleY',		0.244},	-- 0.3
					{'TransY', 		1.02},	-- 1.196
					{'TransZ',		6.455},	-- 6.478
				}
			}
		}
	},
	{
		-- |no foggy headlights| cone from cockpits
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_B/COCKPITB.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_E/COCKPIT_E.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_F/COCKPTF.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				REMOVE				= 'SECTION'
			}
		}
	},
	{
		-- Shrink and move bobble locator in fighter cockpit so it doesn't obstruct the map
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITCOMMON_INTERIOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Name', 'BobbleHeadLocator'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0.1694},	-- 0.088366
					{'TransY',		-0.46504},	-- -0.485839
					{'TransZ',		1.14804},	-- 1.067041
					{'ScaleX',		0.88},
					{'ScaleY',		0.88},
					{'ScaleZ',		0.88}
				}
			}
		}
	},
	{
		-- Reduce ship body outer spotlight intensity, remove foggy light cone
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/HEADLAMP.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'StandingLight1', 'Name', 'FOV'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		86}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'StandingLight1', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		28000}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'spotLight1'},
				REMOVE				= 'SECTION'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Tail_Scales)
	}
}}}}
