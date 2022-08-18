--------------------------------------------------------------------------------
local desc = [[
  Shorter overhead tail fin _Acc_A (clips with engines B & D)
  Narrower _SubWings_D, so it doesn't clip the ground
  Partial fix to wing_K disappearing texture (duplicate LOD1 instead of LOD0)
  Relocate bobble in cockpit so it doesn't obstruct the map
  Reduce ship body outer spotlight intensity, remove foggy light cone
  Blue-white little glowlights (instead of green)
  * Needs to be merged with 'fighter LOD increase' script(!)
]]------------------------------------------------------------------------------

local tail_scales = {
	'', 1, 2, 3, 4, 5, 6, 10
}
function tail_scales:Get(x)
	return {
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

local wing_k_fix = {
	sec = {
		'WingsK_ALOD',
		'SUB1WingsK_ALOD',
		'SUB3WingsK_ALOD'
	},
	val = {
		{'BATCHSTARTPHYSI',	37668,					41736,					53247},
		{'VERTRSTARTPHYSI',	21866,					24590,					31380},
		{'VERTRENDPHYSICS',	24589,					29311,					33122},
		{'BATCHCOUNT', 		4068,					7890,					2856},
		{'VERTRENDGRAPHIC', 2723,					4721,					1742},
		{'BOUNDHULLST', 	212,					248,					328},
		{'BOUNDHULLED', 	248,					292,					352},
		{'AABBMINX', 		-2.891207,				-3.749691,				-3.733948},
		{'AABBMINY', 		0.836564,				nil,					0.712383},
		{'AABBMINZ', 		-1.380045,				-2.157869,				-2.149216},
		{'AABBMAXX', 		nil,					3.749691,				3.733998},
		{'AABBMAXY', 		1.77087,				nil,					1.885870},
		{'AABBMAXZ', 		0.631633,				1.163431,				0.729330},
		{'MESHLINK', 		'WingsK_ALODShape1',	'WingsK_ALODShape1',	'WingsK_ALODShape1'},
	}
}
function wing_k_fix:build()
	local T = {}
	for i=1, (#self.sec) do
		local lod = self.sec[i]
		for _,v in pairs(self.val) do
			if v[i + 1] ~= nil then
				table.insert(T, {
					SECTION_ACTIVE		= 1,
					SPECIAL_KEY_WORDS	= {'Name', (lod..'0'), 'Name', v[1]},
					VALUE_CHANGE_TABLE 	= { {'Value', v[i + 1]} }
				})
			end
		end
		table.insert(T, {
			SPECIAL_KEY_WORDS	= {'Name', (lod..'0')},
			VALUE_CHANGE_TABLE 	= { {'Name', (lod..'1')} }
		})
	end
	return T
end

local fighters = 'MODELS/COMMON/SPACECRAFT/FIGHTERS/'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__SHIP fighter various tweaks.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= 3.99,
	MOD_DESCRIPTION			= desc,
	AMUMSS_SUPPRESS_MSG		= 'MULTIPLE_STATEMENTS',
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
	---	Slightly wider _SubWings_A
		MBIN_FILE_SOURCE	= {
			fighters..'WINGS/WINGS_B/WINGSB.SCENE.MBIN',
			fighters..'WINGS/WINGS_E/WINGSE.SCENE.MBIN',
			fighters..'WINGS/WINGS_H/WINGSH.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_A'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleZ',		1.265},
					{'TransZ',		0.315}
				}
			}
		}
	},
	{
	---	Narower _SubWings_D, so it doesn't clip the ground
		MBIN_FILE_SOURCE	= {
			fighters..'WINGS/WINGS_F/WINGS_F.SCENE.MBIN',
			fighters..'WINGS/WINGS_H/WINGSH.SCENE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
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
		MBIN_FILE_SOURCE	= fighters..'WINGS/WINGS_B/WINGSB.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_D'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',		0.91},
					{'ScaleY',		0.7},
					{'ScaleZ',		1.06},
					{'TransY',		0.31}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= fighters..'WINGS/WINGS_E/WINGSE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_D'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0.36},
					{'TransZ',		0.56},
					{'ScaleY',		0.7},
					{'ScaleZ',		1.04}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= fighters..'WINGS/WINGS_K/WINGSK.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_A'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',		0.9715},
					{'ScaleZ',		1.26}
				}
			}
		}
	},
	{
	---	Partial |fix to wing_K| (WingK_B) missing texture and decal sections
		MBIN_FILE_SOURCE	= fighters..'WINGS/WINGS_K/WINGSK.SCENE.MBIN',
		EXML_CHANGE_TABLE	= wing_k_fix:build()
	},
	{
	---	|cockpit_A decals fix|
		MBIN_FILE_SOURCE	= fighters..'COCKPIT/COCKPIT_A/COCKPITA.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				SPECIAL_KEY_WORDS	= {'Name', '_Number3_A3'},
				VALUE_CHANGE_TABLE 	= {
					{'TransZ',		-0.02}
				}
			},
			{
				MATH_OPERATION 		= '+',
				SPECIAL_KEY_WORDS	= {'Name', '_Number1_A2'},
				VALUE_CHANGE_TABLE 	= {
					{'TransZ',		-0.02}
				}
			},
			{
				MATH_OPERATION 		= '+',
				SPECIAL_KEY_WORDS	= {'Name', '_Number3_A4'},
				VALUE_CHANGE_TABLE 	= {
					{'TransZ',		-0.02}
				}
			},
			{
				MATH_OPERATION 		= '+',
				SPECIAL_KEY_WORDS	= {'Name', '_Number1_A3'},
				VALUE_CHANGE_TABLE 	= {
					{'TransZ',		-0.02}
				}
			},
		}
	},
	{
	---	|cockpit_B decals fix|
		MBIN_FILE_SOURCE	= fighters..'COCKPIT/COCKPIT_B/COCKPITB.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Rectangle_A2'}, -- left side
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0},
					{'RotX', 		0},
					{'ScaleY', 		0.8},
					{'ScaleZ', 		1.4},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Rectangle_A3'}, -- left side
				REMOVE				= 'Section'
			},
			-- {
				-- SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				-- REMOVE				= 'Section'
			-- },
		}
	},
	{
	---	nose C front decal fix
		MBIN_FILE_SOURCE	= fighters..'NOSE/COCKPITA_NOSEC/COCKPITANOSEC.SCENE.MBIN',
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
					-- {'RotY',		-90}
				}
			}
		}
	},
	{
	---	|fighter cockpit_F fixs|
		MBIN_FILE_SOURCE	= fighters..'COCKPIT/COCKPIT_F/COCKPTF.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'logo_A1'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',		0.244},	-- 0.3
					{'ScaleY',		0.244},	-- 0.3
					{'TransY', 		1.02},	-- 1.196
					{'TransZ',		6.455},	-- 6.478
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'logo_A2'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',		0.244},	-- 0.3
					{'ScaleY',		0.244},	-- 0.3
					{'TransY', 		1.02},	-- 1.196
					{'TransZ',		6.455},	-- 6.478
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Letter_A1'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX', 		-0.82},	-- -0.843307
					{'TransY', 		1.45},	-- 1.395939
					{'TransZ',		1.88},	-- 1.963748
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Letter_A2'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX', 		0.82},	-- 0.843307
					{'TransY', 		1.45},	-- 1.395939
					{'TransZ',		1.88},	-- 1.963748
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Letter_A3'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX', 		-0.82},	-- -0.843307
					{'TransY', 		1.45},	-- 1.395939
					{'TransZ',		1.88},	-- 1.963748
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Letter_A4'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX', 		0.82},	-- 0.843307
					{'TransY', 		1.45},	-- 1.395939
					{'TransZ',		1.88},	-- 1.963748
				}
			},
			-- {
				-- REPLACE_TYPE 		= 'All',
				-- SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				-- REMOVE				= 'Section'
			-- }
		}
	},
	{
	---	|no foggy headlights| cone from cockpits
		MBIN_FILE_SOURCE	= {
			fighters..'COCKPIT/COCKPIT_B/COCKPITB.SCENE.MBIN',
			fighters..'COCKPIT/COCKPIT_E/COCKPIT_E.SCENE.MBIN',
			fighters..'COCKPIT/COCKPIT_F/COCKPTF.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				REMOVE				= 'Section'
			}
		}
	},
	{
	---	|fighter parts bluewhite| glow
		MBIN_FILE_SOURCE	= {
			fighters..'COCKPIT/COCKPIT_A/COCKPITA/LIGHTS1.MATERIAL.MBIN',
			fighters..'COCKPIT/COCKPIT_B/COCKPITB/LIGHTS1.MATERIAL.MBIN',
			fighters..'COCKPIT/COCKPIT_D/COCKPITD/GLOW_MAT.MATERIAL.MBIN',
			fighters..'COCKPIT/COCKPIT_D/COCKPITD/LIGHTS2.MATERIAL.MBIN',
			fighters..'COCKPIT/COCKPIT_E/COCKPIT_E/GLOW_MAT.MATERIAL.MBIN',
			fighters..'COCKPIT/COCKPIT_E/COCKPIT_E/LIGHTS1.MATERIAL.MBIN',
			fighters..'COCKPIT/COCKPIT_F/COCKPTF/GLOW_MAT.MATERIAL.MBIN',
			fighters..'COCKPIT/COCKPIT_F/COCKPTF/LIGHTS1.MATERIAL.MBIN',
			fighters..'NOSE/COCKPITA_NOSEA/COCKPITANOSEA/GLOW_MAT.MATERIAL.MBIN',
			fighters..'WINGS/WINGS_H/WINGSH/LIGHTS1.MATERIAL.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gMaterialColourVec4'},
				VALUE_CHANGE_TABLE 	= {
					{'x',			0.46},
					{'y',			0.62},
					{'z',			0.76}
				}
			}
		}
	},
	{
	---	Shrink and move bobble locator in fighter cockpit so it doesn't obstruct the map
		MBIN_FILE_SOURCE	= fighters..'COCKPIT/COCKPITCOMMON_INTERIOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
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
	---	|Reduce ship spotlight intensity|, remove foggy light cone
		MBIN_FILE_SOURCE	= fighters..'ACCESSORIES/HEADLAMP.SCENE.MBIN',
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
				REMOVE				= 'Section'
			}
		}
	},
	{
	---	|fighter long wingB short NoseC|
		MBIN_FILE_SOURCE	= fighters..'FIGHTER_PROC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_ANose_C'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleZ',		0.94},	-- 1
					{'TransZ',		0.12}	-- 0
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Wings_B'},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleZ',		1.1},	-- 1.09
					{'TransZ',		0.2}	-- 0.18
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= fighters..'FIGHTER_PROC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(tail_scales)
	}
}}}}
