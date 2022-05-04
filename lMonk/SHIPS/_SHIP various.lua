---------------------------------------------------------------
local desc = [[
  - dropship: subwing_F dim lights; left subwing_F decal fix;
   subwing_E delete big decal; delete hull decals
  fighter cockpit F decals fix; cockpit B delete decal
  - Scientific cockpitA re-center trails
   fix decals placement on cockpitA back and fins
  change hot green trail to blue dark
  No foggy headlights cone on cockpits
  - bioship delete slime
]]-------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__SHIP various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		-- |sailship re-align trails|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail105L3'}, -- body_A
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		180}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail105L1'}, -- wings_E R
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		180}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail105L2'}, -- wings_E L
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		180}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail105L4'}, -- _wings_D R
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		180}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail105L5'}, -- _wings_D L
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		180}
				}
			}
		}
	},
	{
		-- dropship |subwing_F dim lights|
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_LEFT.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_RIGHT.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Name', 'Glow'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0},		-- -0.05168
					{'ScaleY',		0.42}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'pointLight1', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		26000}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'pointLight2', 'Name', 'INTENSITY'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',		26000}
				}
			}
		}
	},
	{
		-- |dropship left subwing_F decal fix|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/DROPSHIPS/SUBWINGS/SUBWINGSF/SUBWINGSF_LEFT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Rectangle_A'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-59.09569},
					{'RotY',		90}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Letter_A'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-60.328335},
					{'RotY',		90}
				}
			}
		}
	},
	{
		-- |Scientific cockpitD re-align trails|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITD/COCKPITD.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		1.8692},	-- 2.069246
					{'TransZ',		-2.019},	-- -2.51901
					{'RotX',		0}			-- 30.782648
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail1'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		1.8692},
					{'TransZ',		-2.019},
					{'RotX',		0}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Number_A1'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-38.173},
					{'RotY',		0}
				}
			}
		}
	},
	{
		-- |Scientific cockpitA re-center trails|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITA/COCKPITA.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		1.055}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Trail1'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		-1.055}
				}
			}
		}
	},
	{
		-- |Scientific cockpitA back decals| fix
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/COCKPIT/COCKPITA/BACK/COCKPITABACKB.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo1_A'},
				VALUE_CHANGE_TABLE 	= {
					-- {'RotY',		-90},
					{'TransY',		3.26},	-- 2.655958
					{'TransZ',		-4.72},	-- -3.727964
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo2_A'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		3.26},	-- 2.655958
					{'TransZ',		-4.72},	-- -3.727964
				}
			}
		}
	},
	{
		-- |Scientific tail wings decals| fix
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSI/WINGILEFT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo1_A1'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-90},	-- 90
					{'RotY',		-90},	-- 0
					{'TransX',		1.1},	-- 0.972093
					{'ScaleX', 		0.56},
					{'ScaleY', 		0.56}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo2_A2'},
				VALUE_CHANGE_TABLE 	= {
					{'RotX',		-90},	-- 90
					{'RotY',		-90},	-- 0
					{'TransX',		1.1},	-- 0.972093
					{'ScaleX', 		0.56},
					{'ScaleY', 		0.56}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/WINGS/WINGSI/WINGIRIGHT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo1_A1'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		-90},
					{'ScaleX', 		0.56},
					{'ScaleY', 		0.56}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_logo2_A2'},
				VALUE_CHANGE_TABLE 	= {
					{'RotY',		-90},
					{'ScaleX', 		0.56},
					{'ScaleY', 		0.56}
				}
			}
		}
	},
	{
		-- change dark |purple trail to darker|
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTDARKTRAIL.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/EFFECTS/TRAILS/HOT/BLUEDARKER1.DDS'}
				}
			}
		}
	},
	{
		-- |delete contrails|
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/TRAILS/SPACECRAFT/CONTRAIL/CONTRAILTRAIL.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Children',
				REMOVE				= 'SECTION'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/TRAILS/SPACECRAFT/CONTRAIL/CONTRAILTRAIL.TRAIL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Width',				0},
					{'Points',				0},
					{'MaxPointsPerFrame',	0},
					{'DistanceThreshold',	0},
					{'PointLife',			0}
				}
			}
		}
	},
	{
		-- |no foggy headlights| cone from cockpits
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/ACCESSORIES/LAMP.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/CANOPY/CANOPYA.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/CANOPY/CANOPYB.SCENE.MBIN',
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
		-- |ship texture removal|
		MBIN_FILE_SOURCE	= {
			-- cockpits: orange fake-light cone
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_E/COCKPIT_E/HQWHITELIGHT_MAT1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_B/COCKPITB/HQWHITELIGHT_MAT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_D/COCKPITD/HQWHITELIGHT_MAT1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEC/COCKPITANOSEC/HQWHITELIGHT_MAT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/FIGHTERS/NOSE/COCKPITA_NOSEE/COCKPITANOSEE/HQWHITELIGHT_MAT1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/ACCESSORIES/LANDINGGEAR_BASE/HQWHITELIGHT_MAT3.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/CANOPY/CANOPYA/HQWHITELIGHT_MAT3.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/CANOPY/CANOPYB/HQWHITELIGHT_MAT2.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/COCKPIT/COCKPITACCESSORIES/COCKPITACC_F/HQWHITELIGHT_MAT2.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/COCKPIT/COCKPITACCESSORIES/COCKPITACC_E/HQWHITELIGHT_MAT3.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/COCKPIT/COCKPITBDOUBLECYLINDER/HQWHITELIGHT_MAT5.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/COCKPIT/COCKPITBSINGLECYLINDER/HQWHITELIGHT_MAT2.MATERIAL.MBIN',
			-- bioship: slime
			'MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC/MEMBRANE_MAT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/NOSTRILBURSTS/MEMBRANE_MAT1.MATERIAL.MBIN',
			-- sailship: blinkers on wings
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/BLUELIGHTFLARE.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/SAILSHIP_BLUELIGHT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/BODIES_LIGHTFLASH_MAT.MATERIAL.MBIN',
			-- sailship: sail lights & body_C fins
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/HQLIGHT_MAT11.MATERIAL.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Samplers',
				REMOVE				= 'SECTION'
			}
		}
	},
	{
		-- |dropship delete hull decals|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/DROPSHIPS/HULL/HULLA.DESCRIPTOR.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'TypeId', '_SIDEL_'},
				-- SPECIAL_KEY_WORDS	= {'Id', '_SIDEL_A'},
				REMOVE				= 'SECTION'
			}
		}
	},
	-- {
		-- -- |dropship hull decals fix|
		-- MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/DROPSHIPS/HULL/HULLA.SCENE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- INTEGER_TO_FLOAT	= 'FORCE',
				-- SPECIAL_KEY_WORDS	= {'Name', '_SideL_A1'}, -- R horiz
				-- VALUE_CHANGE_TABLE 	= {
					-- {'TransX',		0.38},		-- 1.500948 - 0.9
					-- {'TransY',		2.7091},	-- 2.709136
					-- {'TransZ',		0.4},		-- 0.218558 - 0.27
					-- {'RotX',		0},			-- 0
					-- {'RotY',		-81.8517},	-- -77.34289
					-- {'RotZ',		180},		-- 180
					-- {'ScaleX',		1.66},		-- 2.107159
					-- {'ScaleY',		1.0},		-- 1.053579
					-- {'ScaleZ',		0.42},		-- 0.637855 - 0.54 48
				-- }
			-- },
			-- {
				-- INTEGER_TO_FLOAT	= 'FORCE',
				-- SPECIAL_KEY_WORDS	= {'Name', '_SideL_A3'}, -- L horiz
				-- VALUE_CHANGE_TABLE 	= {
						-- {'TransX',	0.3122},	-- 0.312157
						-- {'TransY',	0},			-- 0
						-- {'TransZ',	4.5919},	-- 4.591873
						-- {'RotX',	0},			-- 0
						-- {'RotY',	-171.852},	-- -171.85173
						-- {'RotZ',	0},			-- 0
						-- {'ScaleX',	1.677},		-- 1.677014
						-- {'ScaleY',	1.0},		-- 1
						-- {'ScaleZ',	0.9132},	-- 0.913196
				-- }
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', '_SideL_A'}, -- L diagonal
				-- VALUE_CHANGE_TABLE 	= {
					-- {nil, nil},
				-- }
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', '_SideR_A'}, -- R diagonal
				-- VALUE_CHANGE_TABLE 	= {
					-- {nil, nil},
				-- }
			-- },
		-- }
	-- },
}}}}
