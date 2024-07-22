-----------------------------------------------------------------
local mod_desc = [[
  Sailship re-alignments:
   Engine trails for body_A, _wings_D & wings_E
   Re-align guns so they're pointing forward
   Decal tweaks (noticeable mainly when using my logo decals mod)
   Restore broken flap-covered blue bulb lights
   Restore procedural sail lights who match the sail's color
   body_F (grouper) engine spike texture and placement fixed
   body_A (Raven) engine spike and flame placement fixed
]]---------------------------------------------------------------

local scene_tweaks = {
	largeflame		= {						tz=-13.1										},	-- body_A flame1
	smallflame		= {						tz=-13.27										},	-- body_A flame2
	decals_Decal5	= {		del=true														},	-- body_D
	decals_Decal8	= {		del=true														},	-- body_D
	decals_Decal17	= {tx=-2.2,							rx=245,	ry=100,		rz=170			},	-- Wings_A R
	decals_Decal18	= {tx=4,									ry=-70.2,	rz=15			},	-- Wings_A L
	decals_Decal16	= {									rx=290,	ry=257.5,	rz=18.63		},	-- Wings_B R
	decals_Decal14	= {									rx=307,	ry=256,		rz=4.475		},	-- Wings_C R
	decals_Decal7	= {									rx=270,	ry=180						},	-- Wings_D R
	decals_Decal9	= {									rx=270,	ry=180						},	-- Wings_E R
	decals_Decal11	= {tx=-4.91,						rx=267,				sx=0.8,	sy=0.8	},	-- Wings_F R
	decals_Decal12	= {tx=4.9,												sx=0.8,	sy=0.8	},	-- Wings_F L
	Trail1013		= {		del=true														},	-- body_E
	Trail21013		= {		del=true														},	-- body_E
	Trail105L3		= {											ry=180						},	-- body_A
	Trail105L4		= {											ry=180						},	-- wings_D R
	Trail105L5		= {											ry=180						},	-- wings_D L
	Trail105L1		= {											ry=180						},	-- wings_E R
	Trail105L2		= {											ry=180						},	-- wings_E L
	Gun1Ref12		= {tx=-0.66,ty=1.72,	tz=2.15,	rx=0,	ry=0,	rz=-130,sx=0.35,	sy=0.35,	sz=0.35	},	-- body_A
	Gun1Ref13		= {tx=0.66,	ty=1.72,	tz=2.15,	rx=0,	ry=0,	rz=130,	sx=0.35,	sy=0.35,	sz=0.35	},	-- body_A
	Gun1Ref10		= {tx=-0.47,ty=1.77,	tz=1.08,	rx=0,	ry=0,	rz=-120,sx=0.34,	sy=0.34,	sz=0.34	},	-- body_B
	Gun1Ref11		= {tx=0.47,	ty=1.77,	tz=1.08,	rx=0,	ry=0,	rz=120,	sx=0.34,	sy=0.34,	sz=0.34	},	-- body_B
	Gun1Ref2		= {									rx=0,	ry=0,	rz=-122				},	-- body_C
	Gun1Ref3		= {									rx=0,	ry=0,	rz=122				},	-- body_C
	Gun1Ref4		= {tx=-0.35,ty=1.75,	tz=2,		rx=0,	ry=0,	rz=-86				},	-- body_D
	Gun1Ref5		= {tx=0.35,	ty=1.75,	tz=2,		rx=0,	ry=0,	rz=86				},	-- body_D
	Gun1Ref6		= {tx=-0.78,ty=1.7,					rx=0,	ry=0,	rz=-88				},	-- body_E
	Gun1Ref7		= {tx=0.78,	ty=1.7,					rx=0,	ry=0,	rz=88				},	-- body_E
	Gun1Ref8		= {rx=0,	ry=0,		rz=-110,	sx=0.34,	sy=0.34,	sz=0.34		},	-- body_F
	Gun1Ref9		= {rx=0,	ry=0,		rz=110,		sx=0.34,	sy=0.34,	sz=0.34		},	-- body_F
	SpinningpartBack1= {					tz=-3.882										},	-- body_A engine
	SpinningpartSpike= {					tz=-6.376										},	-- body_F spike
}
local ECT = { {SKW={}, REMOVE='Section'} }
for node, scene in pairs(scene_tweaks) do
	if scene.del then
		ECT[1].SKW[#ECT[1].SKW+1] = {'Name', node}
	else
		ECT[#ECT+1] = {
			SPECIAL_KEY_WORDS	= {'Name', node},
			VALUE_CHANGE_TABLE	= {
				{'TransX',	scene.tx or 'IGNORE'},
				{'TransY',	scene.ty or 'IGNORE'},
				{'TransZ',	scene.tz or 'IGNORE'},
				{'RotX',	scene.rx or 'IGNORE'},
				{'RotY',	scene.ry or 'IGNORE'},
				{'RotZ',	scene.rz or 'IGNORE'},
				{'ScaleX',	scene.sx or 'IGNORE'},
				{'ScaleY',	scene.sy or 'IGNORE'},
				{'ScaleZ',	scene.sz or 'IGNORE'}
			}
		}
	end
end

ECT[#ECT+1] = {
	SPECIAL_KEY_WORDS	= {'Name', 'SpinningpartSpike', 'Name', 'MATERIAL'},
	VALUE_CHANGE_TABLE 	= {
		{'Value', 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/METALMATERIAL_TRIMS.MATERIAL.MBIN'}
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.sailship re-alignments.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.00.1',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|sailship re-alignments|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= ECT
	},
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/KITBASH_SHIP_LIGHTS1_DEFAULT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/KITBASH_SHIP_LIGHTS1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/SAILSHIPAIRVENT/KITBASH_SHIP_LIGHTS1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/SAILSHIPANIMS/SAILSHIP_SHARED/KITBASH_SHIP_LIGHTS1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/SAILSHIPBODY_B/KITBASH_SHIP_LIGHTS1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/SAILSHIPBODY_C/KITBASH_SHIP_LIGHTS1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/SAILSHIPBODY_D/KITBASH_SHIP_LIGHTS1.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/SAILSHIPBODY_E/KITBASH_SHIP_LIGHTS1.MATERIAL.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'CastShadow', false},
					{'Shader', 'SHADERS/UBERSHADER.SHADER.BIN'},
					{'ShaderMillDataHash', 0},
				}
			},
			{
				PRECEDING_KEY_WORDS = 'Flags',				
				ADD					= '<Property value="TkMaterialFlags.xml"><Property name="MaterialFlag" value="_F10_NORECEIVESHADOW"/></Property>'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/HQLIGHT_MAT11.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/HQLIGHT_MAT11_DEFAULT.MATERIAL.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SAILS/RECTLIGHTPROC.BASE.DDS'}
				}
			}
		}
	}
}}}}
