-----------------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
-----------------------------------------------------------------------------------
local mod_desc = [[
  - Shorter overhead tail fin _Acc_A (clips with engines B & D)
  - Narrower _SubWings_D, so it doesn't clip the ground
  - Relocate bobble in cockpit so it doesn't obstruct the map
  - Reduce ship body outer spotlight intensity, remove foggy light cone
  - Blue-white little glowlights (instead of green)
  - Add trails to wingF turbines
  - Increase LOD for the various ship parts
  - metal (3rd palette color) instead of 2nd color for wings & engine parts.
   * Only if the metal texture is active (determined by seed).
   * Using this method in some parts (cockpit/body mostly) can change how proc-gen
     interperts the seed - might change COATING/PANELS/PAINTED selection.
  - primary instead of 2nd color palatte for selected parts
]]---------------------------------------------------------------------------------

local fighter = {
	ship =		{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN',         					skip=true},
	turbine =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/TURBINEAA.SCENE.MBIN',         			add=true},
	tail =		{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/ACCA.SCENE.MBIN',              			add=true},
	lamp =		{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/HEADLAMP.SCENE.MBIN',					skip=true},
	cockpit_a =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_A/COCKPITA.SCENE.MBIN',    			add=true},
	cockpit_x =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_A/GOLDCOCKPITA.SCENE.MBIN',			add=true},
	cockpit_b =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_B/COCKPITB.SCENE.MBIN',    			add=true},
	cockpit_g =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_D/COCKPITD.SCENE.MBIN',    			add=true},
	cockpit_e =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_E/COCKPIT_E.SCENE.MBIN',   			add=true},
	cockpit_f =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_F/COCKPTF.SCENE.MBIN',     			add=true},
	interior =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITCOMMON_INTERIOR.SCENE.MBIN',			skip=true},
	nose_a =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEA/COCKPITANOSEA.SCENE.MBIN'},
	nose_x =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEA/GOLDCOCKPITANOSEA.SCENE.MBIN'},
	nose_b =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEB/COCKPITANOSEB.SCENE.MBIN'},
	nose_c =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEC/COCKPITANOSEC.SCENE.MBIN'},
	nose_d =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSED/COCKPITANOSED.SCENE.MBIN'},
	nose_e =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEE/COCKPITANOSEE.SCENE.MBIN'},
	engine_b =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_B/ENGINEB.SCENE.MBIN',    			add=true},
	engine_c =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_C/ENGINEC.SCENE.MBIN',    			add=true},
	engine_x =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_C/GOLDENGINEC.SCENE.MBIN',			add=true},
	engine_d =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_D/ENGINED.SCENE.MBIN',    			add=true},
	wing_a =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_A/WINGS_A.SCENE.MBIN',      			add=true},
	wing_x =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_A/GOLDWINGS_A.SCENE.MBIN',  			add=true},
	wing_b =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_B/WINGSB.SCENE.MBIN',       			add=true},
	wing_d =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_D/WINGSD.SCENE.MBIN',       			add=true},
	wing_e =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_E/WINGSE.SCENE.MBIN',       			add=true},
	wing_f =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_F/WINGS_F.SCENE.MBIN'},
	wing_g =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_G/WINGSG.SCENE.MBIN'},
	wing_h =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_H/WINGSH.SCENE.MBIN'},
	wing_i =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_I/WINGSI.SCENE.MBIN'},
	wing_j =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_J/WINGSJ.SCENE.MBIN',              		add=true},
	s_wing_al =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_A/SUBWINGSALEFT.SCENE.MBIN', 		add=true},
	s_wing_ar =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_A/SUBWINGSARIGHT.SCENE.MBIN',		add=true},
	s_wing_bl =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_B/SUBWINGSBLEFT.SCENE.MBIN', 		add=true},
	s_wing_br =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_B/SUBWINGSBRIGHT.SCENE.MBIN',		add=true},
	s_wing_cl =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_C/SUBWINGSCLEFT.SCENE.MBIN', 		add=true},
	s_wing_cr =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_C/SUBWINGSCRIGHT.SCENE.MBIN',		add=true},
	s_wing_dl =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_D/SUBWINGSDLEFT.SCENE.MBIN', 		add=true},
	s_wing_dr =	{src='MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_D/SUBWINGSDRIGHT.SCENE.MBIN',		add=true}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__SHIP fighter.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{--	Slightly wider _SubWings_A
		MBIN_FILE_SOURCE	= {
			fighter.wing_b.src,
			fighter.wing_e.src,
			fighter.wing_h.src
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_A'},
				VALUE_CHANGE_TABLE 	= {
					{'TransZ',		0.315},
					{'ScaleZ',		1.265}
				}
			}
		}
	},
	{--	adds trail for Wing_F turbines
		MBIN_FILE_SOURCE	= fighter.wing_f.src,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Turbine'},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= ToExml({
					ScNode('TrailFL', 'LOCATOR', {ScTransform({4.85, 1.19, -1.1})}),
					ScNode('TrailFR', 'LOCATOR', {ScTransform({-4.85, 1.19, -1.1})})
				})
			}
		}
	},
	{--	Narower _SubWings_D
		MBIN_FILE_SOURCE	= {
			fighter.wing_f.src,
			fighter.wing_h.src
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_D'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0.36},
					{'ScaleY',		0.7},
					{'ScaleZ',		1.06}
				}
			}
		}
	},
	{--	Narower _SubWings_D
		MBIN_FILE_SOURCE	= fighter.wing_b.src,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_SubWings_D'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0.31},
					{'ScaleX',		0.91},
					{'ScaleY',		0.7},
					{'ScaleZ',		1.06}
				}
			}
		}
	},
	{--	Narower _SubWings_D
		MBIN_FILE_SOURCE	= fighter.wing_e.src,
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
	{--	|cockpit_A decals fix|
		MBIN_FILE_SOURCE	= fighter.cockpit_a.src,
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				SPECIAL_KEY_WORDS 	= {
					{'Name', '_Number3_A3'},
					{'Name', '_Number1_A2'},
					{'Name', '_Number3_A4'},
					{'Name', '_Number1_A3'},
				},
				VALUE_CHANGE_TABLE 	= {
					{'TransZ',		-0.02}
				}
			}
		}
	},
	{--	|cockpit_B decals fix|
		MBIN_FILE_SOURCE	= fighter.cockpit_b.src,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Rectangle_A2'}, -- left side
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0},
					{'TransY',		1.19},
					{'TransZ',		3.8},
					{'RotX', 		0},
					{'RotY', 		90},
					{'RotZ', 		0},
					{'ScaleX', 		1.48},
					{'ScaleY', 		0.68},
					{'ScaleZ', 		1.3}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Number_A2'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0},
					{'RotX', 		0},
					{'RotY', 		90},
					{'RotZ', 		0},
					{'ScaleZ', 		1.6}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {
					{'Name', 'Rectangle_A3'},
					{'Name', 'logo_A3'},
					{'Name', 'logo_A4'},
					{'Name', 'Number_A1'},
					{'Name', 'Number_A3'},
					{'Name', 'Number_A4'}
				},
				REMOVE				= 'Section'
			}
		}
	},
	{--	nose C front decal fix
		MBIN_FILE_SOURCE	= fighter.nose_c.src,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'Name', '_logoR_A'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0},
					{'TransY',		1.47},
					{'TransZ',		8.71},
					{'ScaleX', 		0.36},
					{'ScaleY', 		0.36},
					{'ScaleZ', 		0.9}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {'Name', '_logoL_A'},
				REMOVE				= 'Section'
			}
		}
	},
	{--	|fighter cockpit_F fixs|
		MBIN_FILE_SOURCE	= fighter.cockpit_f.src,
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'logo_A1'},
					{'Name', 'logo_A2'},
				},
				VALUE_CHANGE_TABLE 	= {
					{'ScaleX',		0.244},	-- 0.3
					{'ScaleY',		0.244},	-- 0.3
					{'TransY', 		1.02},	-- 1.196
					{'TransZ',		6.455},	-- 6.478
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'Letter_A1'},
					{'Name', 'Letter_A3'},
				},
				VALUE_CHANGE_TABLE 	= {
					{'TransX', 		-0.82},	-- -0.843307
					{'TransY', 		1.45},	-- 1.395939
					{'TransZ',		1.88},	-- 1.963748
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'Letter_A2'},
					{'Name', 'Letter_A4'},
				},
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
	{--	|no foggy headlights| cone from cockpits
		MBIN_FILE_SOURCE	= {
			fighter.cockpit_b.src,
			fighter.cockpit_e.src,
			fighter.cockpit_f.src
		},
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				REMOVE				= 'Section'
			}
		}
	},
	{--	Shrink and |move bobble| locator in fighter cockpit so it doesn't obstruct the map
		MBIN_FILE_SOURCE	= fighter.interior.src,
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
	{--	|Reduce ship spotlight intensity|, remove foggy light cone
		MBIN_FILE_SOURCE	= fighter.lamp.src,
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
	{--	|fighter long wingB short NoseC|
		MBIN_FILE_SOURCE	= fighter.ship.src,
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
	{--	|fighter lower tail fin|
		MBIN_FILE_SOURCE	= fighter.ship.src,
		EXML_CHANGE_TABLE	= (
			function()
				T = {
					{
						SKW					= {},
						VALUE_CHANGE_TABLE 	= {
							{'ScaleX',		0.88},
							{'ScaleY',		0.68},
							{'ScaleZ',		1.08}
						}
					}
				}
				for _,x in ipairs({'', 1, 2, 3, 4, 5, 6, 10}) do
					T[1].SKW[#T[1].SKW+1] = {'Name', '_Acc_A'..x}
				end
				return T
			end
		)()
	},
	{--	|METAL instead 2nd paint|
		MBIN_FILE_SOURCE	= {
			-- 'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_B/COCKPITB/TERTIARY.MATERIAL.MBIN',
			-- 'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_E/COCKPIT_E/TERTIARY.MATERIAL.MBIN',
			-- 'MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEA/COCKPITANOSEA/TERTIARY.MATERIAL.MBIN',
			-- 'MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEC/COCKPITANOSEC/TERTIARY2.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/ACCESSORIES/ACCA/SUBWINGSC_TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_B/ENGINEB/TERTIARY1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_C/ENGINEC/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_D/ENGINED/TERTIARY1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_A/WINGS_A/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_A/SUBWINGSALEFT/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_A/SUBWINGSARIGHT/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_B/WINGSB/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_E/WINGSE/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_H/WINGSH/SUBWINGSCRIGHT_TERTIARY1.MATERIAL.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gDiffuseMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SECONDARY.DDS'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gMasksMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/SECONDARY.MASKS.DDS'}
				}
			}
		}
	},
	{--	|primary paint instead of 2nd|
		MBIN_FILE_SOURCE	= {
			-- 'MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEC/COCKPITANOSEC/TERTIARY.MATERIAL.MBIN',
			-- 'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_F/COCKPTF/TERTIARY1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_D/SUBWINGSDLEFT/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/SUBWINGS/SUBWINGS_D/SUBWINGSDRIGHT/TERTIARY.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK/SUBWINGSCRIGHT_TERTIARY2.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_K/WINGSK/TERTIARY1.MATERIAL.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gDiffuseMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.DDS'}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gMasksMap'},
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SHARED/PRIMARY.MASKS.DDS'}
				}
			}
		}
	},
	{--	|fighter parts bluewhite| glow
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_A/COCKPITA/LIGHTS1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_B/COCKPITB/LIGHTS1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_D/COCKPITD/GLOW_MAT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_D/COCKPITD/LIGHTS2.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_E/COCKPIT_E/GLOW_MAT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_E/COCKPIT_E/LIGHTS1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_F/COCKPTF/GLOW_MAT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_F/COCKPTF/LIGHTS1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEA/COCKPITANOSEA/GLOW_MAT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/WINGS/WINGS_H/WINGSH/LIGHTS1.MATERIAL.MBIN',
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
	{--	|no fake orange light|
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_E/COCKPIT_E/HQWHITELIGHT_MAT1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_B/COCKPITB/HQWHITELIGHT_MAT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_D/COCKPITD/HQWHITELIGHT_MAT1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEC/COCKPITANOSEC/HQWHITELIGHT_MAT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEE/COCKPITANOSEE/HQWHITELIGHT_MAT1.MATERIAL.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Samplers',
				REMOVE				= 'Section'
			}
		}
	},
	{--	|Fix engine B| jet material flags
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_C/ENGINEC/ENGINEJET_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/FIGHTERS/ENGINE/ENGINE_B/PARTS/ENGINEBTHRUSTER/ENGINEJET_MAT.MATERIAL.MBIN',
				'REMOVE'
			}
		}
	},
}},{
	MBIN_CHANGE_TABLE		= (
		function()
			T = {}
			for _,part in pairs(fighter) do
				if not part.skip then
					local inx = #T+1
					T[inx] = {
						MBIN_FILE_SOURCE	= part.src,
						EXML_CHANGE_TABLE	= {
							{
								SPECIAL_KEY_WORDS	= {'Name', 'NUMLODS'},
								VALUE_CHANGE_TABLE 	= {
									{'Value',		4}
								}
							}
						}
					}
					ect = T[inx].EXML_CHANGE_TABLE
					if not part.lod1 then
						ect[#ect+1] = {
							SPECIAL_KEY_WORDS 	= {
								{'Name', 'LODDIST1'},
								{'Name', 'LODDIST2'},
								{'Name', 'LODDIST3'}
							},
							REMOVE = 'Section'
						}
					end
					if part.add then
						ect[#ect+1] = {
							SPECIAL_KEY_WORDS	= {'Name', 'NUMLODS'},
							ADD_OPTION			= 'AddAfterSection',
							ADD 				= ToExml({
								META	= {'value', 'TkSceneNodeAttributeData.xml'},
								Name	= 'ATTACHMENT',
								Value	= 'MODELS/COMMON/SPACECRAFT/SHARED/ENTITIES/SHAREDLODDISTANCES.ENTITY.MBIN'
							})
						}
					end
				end
			end
			return T
		end
	)()
}}}
