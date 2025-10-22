----------------------------------------------------------------
local mod_desc = [[
  - decal placements tweaks
  - dimmer interior light
  - move guns below the cockpit (matches interior placement)
  - subwing_F dim lights
  - disable tail subwing_a bugged anim
  - LOD improvement
]]--------------------------------------------------------------

local dropship = {
	ship =		{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN', skip=true},
	inter_a = 	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA_INTERIOR.SCENE.MBIN', skip=true},
	inter_b = 	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB_INTERIOR.SCENE.MBIN', skip=true},
	cockpit_a =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA.SCENE.MBIN'},
	cockpit_b =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB.SCENE.MBIN'},
	cockpit_c =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITC.SCENE.MBIN'},
	box_l =		{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/CONTAINERS/BALLCONTAINER/BALLCONTAINER_L.SCENE.MBIN'},
	box_r =		{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/CONTAINERS/BALLCONTAINER/BALLCONTAINER_R.SCENE.MBIN', skip=true}, -- lod 1
	ball_l =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/CONTAINERS/BOXCONTAINER/BOXCONTAINER_L.SCENE.MBIN'},
	ball_r =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/CONTAINERS/BOXCONTAINER/BOXCONTAINER_R.SCENE.MBIN', skip=true}, -- lod 1
	neck_1 =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/COCKPITNECK_1.SCENE.MBIN'},
	neck_2 =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/COCKPITNECK_2.SCENE.MBIN'},
	neck_3 =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/COCKPITNECK_3.SCENE.MBIN'},
	neck_4 =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/COCKPITNECK_4.SCENE.MBIN'},
	neck_5 =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/COCKPITNECK_5.SCENE.MBIN'},
	neck_6 =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/COCKPITNECK_6.SCENE.MBIN'},
	land_f =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/LANDINGGEAR/LANDINGGEARFRONT.SCENE.MBIN', skip=true}, -- lod 1
	hull_a =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/HULL/HULLA.SCENE.MBIN'},
	engine_a =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ENGINES/ENGINESA.SCENE.MBIN'},
	engine_b =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ENGINES/ENGINESB.SCENE.MBIN'},
	engine_c =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ENGINES/ENGINESC.SCENE.MBIN'},
	engine_d =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/ENGINES/ENGINESD.SCENE.MBIN'},
	s_wing_al =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSA/SUBWINGSA_LEFT.SCENE.MBIN', skip=true}, -- lod 1
	s_wing_ar =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSA/SUBWINGSA_RIGHT.SCENE.MBIN', skip=true}, -- lod 1
	s_wing_bl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSB/SUBWINGSB_LEFT.SCENE.MBIN', skip=true}, -- lod 1
	s_wing_br =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSB/SUBWINGSB_RIGHT.SCENE.MBIN', skip=true}, -- lod 1
	s_wing_cl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSC/SUBWINGSC_LEFT.SCENE.MBIN'},
	s_wing_cr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSC/SUBWINGSC_RIGHT.SCENE.MBIN'},
	s_wing_dl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSD/SUBWINGSD_LEFT.SCENE.MBIN'},
	s_wing_dr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSD/SUBWINGSD_RIGHT.SCENE.MBIN'},
	s_wing_el =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSE/SUBWINGSE_LEFT.SCENE.MBIN'},
	s_wing_er =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSE/SUBWINGSE_RIGHT.SCENE.MBIN'},
	s_wing_fl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_LEFT.SCENE.MBIN'},
	s_wing_fr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_RIGHT.SCENE.MBIN'},
	s_wing_gl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSG/SUBWINGSG_LEFT.SCENE.MBIN'},
	s_wing_gr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSG/SUBWINGSG_RIGHT.SCENE.MBIN'},
	s_wing_hl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSH/SUBWINGSH_LEFT.SCENE.MBIN'},
	s_wing_hr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSH/SUBWINGSH_RIGHT.SCENE.MBIN'},
	s_wing_il =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSI/SUBWINGSI_LEFT.SCENE.MBIN'},
	s_wing_ir =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSI/SUBWINGSI_RIGHT.SCENE.MBIN'},
	thrust_al =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSA/THRUSTERSA_LEFT.SCENE.MBIN'},
	thrust_ar =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSA/THRUSTERSA_RIGHT.SCENE.MBIN'},
	thrust_bl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSB/THRUSTERSB_LEFT.SCENE.MBIN'},
	thrust_br =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSB/THRUSTERSB_RIGHT.SCENE.MBIN'},
	thrust_cl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSC/THRUSTERSC_LEFT.SCENE.MBIN'},
	thrust_cr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSC/THRUSTERSC_RIGHT.SCENE.MBIN'},
	thrust_dl =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSD/THRUSTERSD_L.SCENE.MBIN'},
	thrust_dr =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/THRUSTERS/THRUSTERSD/THRUSTERSD_R.SCENE.MBIN'},
	wing_a =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/WINGS/WINGSA/WINGSA.SCENE.MBIN'},
	wing_b =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/WINGS/WINGSB/WINGSB.SCENE.MBIN'},
	wing_c =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/WINGS/WINGSC/WINGSC.SCENE.MBIN'},
	wing_d =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/WINGS/WINGSD/WINGSD.SCENE.MBIN'},
	wing_s =	{src='MODELS/COMMON/SPACECRAFT/DROPSHIPS/WINGS/WINGSS13/WINGSS13.SCENE.MBIN'},
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.Dropship Restoration',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '6.06',
	MOD_DESCRIPTION			= mod_desc,
	MODIFICATIONS 			= {{
		MBIN_CHANGE_TABLE		= {
		{-- |dropship remove swing_a animation|
			MBIN_FILE_SOURCE	= {
				dropship.s_wing_al.src,
				dropship.s_wing_ar.src
			},
			MXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', 'SubWing.-', 'Type', 'LOCATOR'},
					REMOVE			 	= 'Section'
				}
			}
		},
		{-- |dropship interior lights|
			MBIN_FILE_SOURCE	= {
				dropship.inter_a.src,
				dropship.inter_b.src,
			},
			MXML_CHANGE_TABLE	= {
				{
					REPLACE_TYPE 		= 'All',
					SPECIAL_KEY_WORDS	= {'Name', 'INTENSITY'},
					VALUE_CHANGE_TABLE	= {
						{'Value',		'@ * 0.6'}
					}
				},
				{
					REPLACE_TYPE 		= 'All',
					SPECIAL_KEY_WORDS	= {'Name', 'COL_R'},
					VALUE_CHANGE_TABLE	= {
						{'Value',		0.8}
					}
				},
				{
					REPLACE_TYPE 		= 'All',
					SPECIAL_KEY_WORDS	= {'Name', 'COL_B'},
					VALUE_CHANGE_TABLE	= {
						{'Value',		0.2}
					}
				},
			}
		},
		{-- |dropship subwing_F dim lights|
			MBIN_FILE_SOURCE	= {
				dropship.s_wing_fl.src,
				dropship.s_wing_fr.src,
			},
			MXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', 'Glow'},
					VALUE_CHANGE_TABLE 	= {
						{'TransY',		0},		-- -0.05168
						{'ScaleY',		0.42}
					}
				},
				{
					SPECIAL_KEY_WORDS 	= {'Name', 'pointLight[12]', 'Name', 'INTENSITY'},
					VALUE_CHANGE_TABLE 	= {
						{'Value',		26000}
					}
				}
			}
		},
		{-- |dropship left subwing_F decal fix|
			MBIN_FILE_SOURCE	= dropship.s_wing_fl.src,
			MXML_CHANGE_TABLE	= {
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
		{-- |dropship cockpit_A guns| placement
			MBIN_FILE_SOURCE	= dropship.cockpit_a.src,
			MXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name',	'Gun1Ref[12]'},
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
					SPECIAL_KEY_WORDS	= {'Name',	'_logo[LR]_A'},
					VALUE_CHANGE_TABLE 	= {
						{'TransY',		1.8}
					}
				},
			}
		},
		{-- |dropship cockpit_B guns| placement
			MBIN_FILE_SOURCE	= dropship.cockpit_b.src,
			MXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name',	'Gun1Ref[23]'},
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
			MXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Letter[12]_A[12]'},
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
			MXML_CHANGE_TABLE	= {
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
			MXML_CHANGE_TABLE	= {
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
			MXML_CHANGE_TABLE	= {
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
			MXML_CHANGE_TABLE	= {
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
			MXML_CHANGE_TABLE	= {
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
			MXML_CHANGE_TABLE	= {
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
			MXML_CHANGE_TABLE	= {
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
			MXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', '_Letter_A'},
					VALUE_CHANGE_TABLE 	= {
						{'TransX',		-2}
					}
				}
			}
		},
		{-- |dropship landgear front| metal
			MBIN_FILE_SOURCE	= dropship.land_f.src,
			MXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS	= {'Name', 'SUB1LandingGear_F', 'Name', 'MATERIAL'},
					VALUE_CHANGE_TABLE 	= {
						{'Value', 'MODELS/COMMON/SPACECRAFT/DROPSHIPS/ACCESSORIES/LANDINGGEAR/LANDINGGEARFRONT/TRIMS.MATERIAL.MBIN'}
					}
				}
			}
		},
		{-- |dropship hull| decal fixs
			MBIN_FILE_SOURCE	= dropship.hull_a.src,
			MXML_CHANGE_TABLE	= {
				{
					SPECIAL_KEY_WORDS 	= {
						{'Name', '_SideR_A'},
						{'Name', '_SideL_A3'}
					},
					REMOVE				= 'Section'
				},
				{
					SPECIAL_KEY_WORDS	= {'Name', '_SideL_A[1]?'},
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
				}
			}
		}
	}},
	{
		MBIN_CHANGE_TABLE = (
			function()
				local T = {}
				for _,part in pairs(dropship) do
					if not part.skip then
						T[#T+1] = {
							MBIN_FILE_SOURCE	= part.src,
							MXML_CHANGE_TABLE	= {
								{
									SPECIAL_KEY_WORDS	= {'Name', 'LODDIST1'},
									VALUE_CHANGE_TABLE 	= {
										{'Value',		200}
									}
								},
								{
									SPECIAL_KEY_WORDS	= {'Name', 'LODDIST2'},
									VALUE_CHANGE_TABLE 	= {
										{'Value',		360}
									}
								},
								{
									SPECIAL_KEY_WORDS	= {'Name', 'LODDIST3'},
									VALUE_CHANGE_TABLE 	= {
										{'Value',		480}
									}
								}
							}
						}
					end
				end
				return T
			end
		)()
	}
}}