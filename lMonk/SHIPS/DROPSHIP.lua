-----------------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
-----------------------------------------------------------------------------------
local mod_desc = [[
  dropship:
  - decal placements tweaks
  - move guns below the cockpit (matches interior placement)
  - No foggy headlights cone on cockpits
  - subwing_F dim lights
  - LOD improvement
  - metal (3rd palette color) instead of 2nd color for wings & engine parts.
   * Only if the metal texture is active (determined by seed).
   * Using this method in some parts (cockpit/body mostly) can change how proc-gen
     interperts the seed - might change COATING/PANELS/PAINTED selection.
]]---------------------------------------------------------------------------------

local dropship = {
	ship =		{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN',								skip=true},
	cockpit_a =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA.SCENE.MBIN'},
	cockpit_b =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB.SCENE.MBIN'},
	box_l =		{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/CONTAINERS/BALLCONTAINER/BALLCONTAINER_L.SCENE.MBIN',	add=true,	lod1=true},
	box_r =		{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/CONTAINERS/BALLCONTAINER/BALLCONTAINER_R.SCENE.MBIN',	add=true,	lod1=true},
	ball_l =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/CONTAINERS/BOXCONTAINER/BOXCONTAINER_L.SCENE.MBIN',	add=true,	lod1=true},
	ball_r =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/CONTAINERS/BOXCONTAINER/BOXCONTAINER_R.SCENE.MBIN',	add=true,	lod1=true},
	neck_1 =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/COCKPITNECK_1.SCENE.MBIN',					add=true},
	neck_2 =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/COCKPITNECK_2.SCENE.MBIN',					add=true},
	neck_3 =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/COCKPITNECK_3.SCENE.MBIN'},
	neck_4 =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/COCKPITNECK_4.SCENE.MBIN',					add=true},
	neck_5 =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/COCKPITNECK_5.SCENE.MBIN',					add=true},
	neck_6 =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/COCKPITNECK_6.SCENE.MBIN',					add=true},
	hull_a =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/HULL/HULLA.SCENE.MBIN'},
	engine_a =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ENGINES/ENGINESA.SCENE.MBIN',							add=true},
	engine_b =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ENGINES/ENGINESB.SCENE.MBIN',							add=true},
	engine_c =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ENGINES/ENGINESC.SCENE.MBIN',							add=true},
	s_wing_bl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSB/SUBWINGSB_LEFT.SCENE.MBIN',			add=true,	lod1=true},
	s_wing_br =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSB/SUBWINGSB_RIGHT.SCENE.MBIN',		add=true,	lod1=true},
	s_wing_cl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSC/SUBWINGSC_LEFT.SCENE.MBIN',			add=true},
	s_wing_cr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSC/SUBWINGSC_RIGHT.SCENE.MBIN',		add=true},
	s_wing_dl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSD/SUBWINGSD_LEFT.SCENE.MBIN',			add=true},
	s_wing_dr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSD/SUBWINGSD_RIGHT.SCENE.MBIN',		add=true},
	s_wing_el =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSE/SUBWINGSE_LEFT.SCENE.MBIN',			add=true},
	s_wing_er =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSE/SUBWINGSE_RIGHT.SCENE.MBIN',		add=true},
	s_wing_fl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_LEFT.SCENE.MBIN'},
	s_wing_fr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_RIGHT.SCENE.MBIN'},
	s_wing_gl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSG/SUBWINGSG_LEFT.SCENE.MBIN',			add=true},
	s_wing_gr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSG/SUBWINGSG_RIGHT.SCENE.MBIN',		add=true},
	s_wing_hl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSH/SUBWINGSH_LEFT.SCENE.MBIN'},
	s_wing_hr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSH/SUBWINGSH_RIGHT.SCENE.MBIN'},
	s_wing_il =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSI/SUBWINGSI_LEFT.SCENE.MBIN'},
	s_wing_ir =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSI/SUBWINGSI_RIGHT.SCENE.MBIN'},
	thrust_al =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSA/THRUSTERSA_LEFT.SCENE.MBIN',		add=true},
	thrust_ar =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSA/THRUSTERSA_RIGHT.SCENE.MBIN',		add=true},
	thrust_bl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSB/THRUSTERSB_LEFT.SCENE.MBIN',		add=true},
	thrust_br =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSB/THRUSTERSB_RIGHT.SCENE.MBIN',		add=true},
	thrust_cl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSC/THRUSTERSC_LEFT.SCENE.MBIN',		add=true},
	thrust_cr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSC/THRUSTERSC_RIGHT.SCENE.MBIN',		add=true},
	thrust_dl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSD/THRUSTERSD_L.SCENE.MBIN'},
	thrust_dr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSD/THRUSTERSD_R.SCENE.MBIN'},
	wing_a =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/WINGS/WINGSA/WINGSA.SCENE.MBIN'},
	wing_b =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/WINGS/WINGSB/WINGSB.SCENE.MBIN'},
	wing_c =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/WINGS/WINGSC/WINGSC.SCENE.MBIN'},
	wing_d =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/WINGS/WINGSD/WINGSD.SCENE.MBIN'}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__SHIP dropship.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
		MBIN_CHANGE_TABLE		= {
		{-- |dropship subwing_F dim lights|
			MBIN_FILE_SOURCE	= {
				dropship.s_wing_fl.src,
				dropship.s_wing_fr.src,
			},
			EXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', 'Glow'},
					VALUE_CHANGE_TABLE 	= {
						{'TransY',		0},		-- -0.05168
						{'ScaleY',		0.42}
					}
				},
				{
					SPECIAL_KEY_WORDS 	= {
						{'Name', 'pointLight1', 'Name', 'INTENSITY'},
						{'Name', 'pointLight2', 'Name', 'INTENSITY'}
					},
					VALUE_CHANGE_TABLE 	= {
						{'Value',		26000}
					}
				}
			}
		},
		{-- |dropship left subwing_F decal fix|
			MBIN_FILE_SOURCE	= dropship.s_wing_fl.src,
			EXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Rectangle_A'},
					VALUE_CHANGE_TABLE 	= {
						{'RotX',		-59.0957},
						{'RotY',		90}
					}
				},
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Letter_A'},
					VALUE_CHANGE_TABLE 	= {
						{'RotX',		-60.32834},
						{'RotY',		90}
					}
				}
			}
		},
		{-- |dropship no foggy headlights| cone from cockpits
			MBIN_FILE_SOURCE	= {
				dropship.cockpit_a.src,
				dropship.cockpit_b.src
			},
			EXML_CHANGE_TABLE	= {
				{
					REPLACE_TYPE 		= 'All',
					SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
					REMOVE				= 'Section'
				}
			}
		},
		{-- |dropship cockpit_A guns| placement
			MBIN_FILE_SOURCE	= dropship.cockpit_a.src,
			EXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {
						{'Name',	'Gun1Ref1'},
						{'Name',	'Gun1Ref2'},
					},
					VALUE_CHANGE_TABLE 	= {
						{'TransX',		1.33},
						{'TransY',		1.47},
						{'TransZ',		4.25},
						{'RotZ',		90},
						{'ScaleX',		0.7},
						{'ScaleY',		0.7},
						{'ScaleZ',		0.7}
					}
				},
				{
					SPECIAL_KEY_WORDS	= {'Name', 'Gun1Ref2'},
					VALUE_CHANGE_TABLE 	= {
						{'TransX',		-1.33},
						{'RotZ',		-90}
					}
				},
				{
					SPECIAL_KEY_WORDS	= {
						{'Name',	'_logoL_A'},
						{'Name',	'_logoR_A'},
					},
					VALUE_CHANGE_TABLE 	= {
						{'TransY',		1.8}
					}
				},
			}
		},
		{-- |dropship cockpit_B guns| placement
			MBIN_FILE_SOURCE	= dropship.cockpit_b.src,
			EXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {
						{'Name',	'Gun1Ref2'},
						{'Name',	'Gun1Ref3'}
					},
					VALUE_CHANGE_TABLE 	= {
						{'TransX',		1.54},
						{'TransY',		2.42},
						{'TransZ',		3.03},
						{'RotZ',		90},
						{'ScaleX',		0.7},
						{'ScaleY',		0.7},
						{'ScaleZ',		0.7}
					}
				},
				{
					SPECIAL_KEY_WORDS	= {'Name', 'Gun1Ref3'},
					VALUE_CHANGE_TABLE 	= {
						{'TransX',		-1.54},
						{'RotZ',		-90}
					}
				}
			}
		},
		{-- |dropship neck_5| decals
			MBIN_FILE_SOURCE	= dropship.neck_5.src,
			EXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {
						{'Name',	'_Letter1_A1'},
						{'Name',	'_Letter2_A2'}
					},
					VALUE_CHANGE_TABLE 	= {
						{'TransZ',		3.7},
						{'RotY',		90},
						{'RotZ',		0}
					}
				}
			}
		},
		{-- |dropship subwing_E_L letter| decal
			MBIN_FILE_SOURCE	= dropship.s_wing_el.src,
			EXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Letter_A'},
					VALUE_CHANGE_TABLE 	= {
						{'RotX',		-42.487},	-- 42.486935
						{'RotY',		90},		-- -90
					}
				}
			}
		},
		{-- |dropship subwing_E_R letter| decal
			MBIN_FILE_SOURCE	= dropship.s_wing_er.src,
			EXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Letter_A'},
					VALUE_CHANGE_TABLE 	= {
						{'RotX',		42.487},	-- -42.486935
						{'RotY',		-90},		-- 90
					}
				}
			}
		},
		{-- |dropship subwing_G_R rect| decal
			MBIN_FILE_SOURCE	= dropship.s_wing_gr.src,
			EXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Rectangle_A'},
					VALUE_CHANGE_TABLE 	= {
						{'TransX',		0.14},	-- 0.1369
						{'TransY',		2.3},	-- 2.298
						{'TransZ',		0.14},	-- 0.255
						{'ScaleX',		2.6},
						{'ScaleY',		1.3},
						{'ScaleZ',		0.2}
					}
				}
			}
		},
		{-- |dropship subwing_G_L rect| decal
			MBIN_FILE_SOURCE	= dropship.s_wing_gl.src,
			EXML_CHANGE_TABLE	= {
				-- {
					-- SPECIAL_KEY_WORDS	= {'Name', '_Letter_A'},
					-- VALUE_CHANGE_TABLE 	= {
						-- {'RotX',		-13},
						-- {'RotY',		90}
					-- }
				-- },
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Rectangle_A'},
					VALUE_CHANGE_TABLE 	= {
						{'TransX',		0.14},	-- 0.1369
						{'TransY',		2.3},	-- 2.298
						{'TransZ',		-0.14},	-- -0.255
						{'ScaleX',		2.6},
						{'ScaleY',		1.3},
						{'ScaleZ',		0.2}
					}
				}
			}
		},
		{-- |dropship subwing_H| decal
			MBIN_FILE_SOURCE	= {
				dropship.s_wing_hl.src,
				dropship.s_wing_hr.src,
			},
			EXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Letter_A'},
					VALUE_CHANGE_TABLE 	= {
						{'ScaleX',		3},
						{'ScaleY',		1.2},
						{'ScaleZ',		0.15}
					}
				},
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Rectangle_A'},
					VALUE_CHANGE_TABLE 	= {
						{'ScaleX',		2.6},
						{'ScaleY',		1.2},
						{'ScaleZ',		0.13}
					}
				},
			}
		},
		{-- |dropship subwing_H| decal
			MBIN_FILE_SOURCE	= dropship.s_wing_hr.src,
			EXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Letter_A'},
					VALUE_CHANGE_TABLE 	= {
						{'RotX',		45},
						{'RotY',		90},
					}
				},
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Rectangle_A'},
					VALUE_CHANGE_TABLE 	= {
						{'RotX',		34.5},
						{'RotY',		270}
					}
				},
			}
		},
		{-- |dropship subwing_I| decal
			MBIN_FILE_SOURCE	= {
				dropship.s_wing_il.src,
				dropship.s_wing_ir.src,
			},
			EXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Letter_A'},
					VALUE_CHANGE_TABLE 	= {
						{'TransX',		2},
						{'TransY',		-0.08},
						{'TransZ',		-0.54},
						{'RotX',		0},
						{'RotY',		90},
						{'RotZ',		0},
						{'ScaleX',		4},
						{'ScaleY',		1.7},
						{'ScaleZ',		0.2}
					}
				}
			}
		},
		{-- |dropship subwing_I| decal
			MBIN_FILE_SOURCE	= dropship.s_wing_ir.src,
			EXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Letter_A'},
					VALUE_CHANGE_TABLE 	= {
						{'TransX',		-2}
					}
				}
			}
		},
		{-- |dropship hull| decal fixs
			MBIN_FILE_SOURCE	= dropship.hull_a.src,
			EXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {
						{'Name', '_SideL_A'},
						{'Name', '_SideL_A1'}
					},
					VALUE_CHANGE_TABLE 	= {
						{'TransX',		0},
						{'TransY',		2.65},
						{'TransZ',		0},
						{'RotX',		180},
						{'RotY',		270},
						{'RotZ',		180},
						{'ScaleX',		2.1},
						{'ScaleY',		1.05},
						{'ScaleZ',		3.76}
					}
				},
				{
					SPECIAL_KEY_WORDS	= {'Name', '_SideL_A1', 'Name', 'MATERIAL'},
					VALUE_CHANGE_TABLE 	= {
						{'Value', 'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_RIGHT/RECTANGLEDECAL.MATERIAL.MBIN'}
					}
				},
				{
					SPECIAL_KEY_WORDS 	= {
						{'Name', '_SideR_A'},
						{'Name', '_SideL_A3'}
					},
					REMOVE				= 'Section'
				}
			}
		},
		{--	|METAL instead 2nd paint|
			MBIN_FILE_SOURCE	= {
				-- 'MODELS/COMMON/SPACECRAFT/DROPSHIPS/ENGINES/ENGINESB/TERTIARY.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB/TERTIARY1.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/COCKPITNECK_5/TERTIARY.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/LANDINGGEAR/LANDINGGEARFRONT/PRIMARY.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSB/SUBWINGSB_LEFT/TERTIARY1.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSB/SUBWINGSB_RIGHT/TERTIARY1.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_LEFT/TERTIARY1.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_RIGHT/TERTIARY1.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSA/THRUSTERSA_LEFT/TERTIARY1.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSA/THRUSTERSA_RIGHT/TERTIARY2.MATERIAL.MBIN',
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
		{-- |glow parts bluewhite|
			MBIN_FILE_SOURCE	= {
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSC/SUBWINGSC_LEFT/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSC/SUBWINGSC_RIGHT/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSD/SUBWINGSD_LEFT/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSD/SUBWINGSD_RIGHT/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSE/SUBWINGSE_LEFT/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSE/SUBWINGSE_LEFT/GLOW_MAT1.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSE/SUBWINGSE_RIGHT/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSE/SUBWINGSE_RIGHT/GLOW_MAT1.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_LEFT/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_LEFT/GLOW_MAT1.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_RIGHT/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_RIGHT/GLOW_MAT1.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSG/SUBWINGSG_LEFT/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSG/SUBWINGSG_RIGHT/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSH/SUBWINGSH_LEFT/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSH/SUBWINGSH_RIGHT/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSI/SUBWINGSI_LEFT/GLOW_MAT.MATERIAL.MBIN',
				'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSI/SUBWINGSI_RIGHT/GLOW_MAT.MATERIAL.MBIN',
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
		}
	}},
	{
		MBIN_CHANGE_TABLE		= (
			function()
				T = {}
				for _,part in pairs(dropship) do
					if not part.skip then
						local inx = #T+1
						T[inx] = {
							MBIN_FILE_SOURCE	= part.src,
							EXML_CHANGE_TABLE	= {
								SPECIAL_KEY_WORDS	= {'Name', 'NUMLODS'},
								VALUE_CHANGE_TABLE 	= {
									{'Value',		4}
								}
							}
						}
						ect = T[inx].EXML_CHANGE_TABLE
						if not part.lod1 then
							ect[#ect+1] = {
								SPECIAL_KEY_WORDS 	= {
									{'Name', 'LODDIST1'},
									{'Name', 'LODDIST2'},
									{'Name', 'LODDIST3'},
								},
								REMOVE				= 'Section'
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
	}
}}
