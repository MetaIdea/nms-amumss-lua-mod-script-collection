-----------------------------------------------------------------
mod_desc = [[
  Sailship re-alignments:
   Engine trails for body_A, _wings_D & wings_E
   Re-align guns so they're pointing forward
   Decal tweaks (noticeable mainly when using my logo decals mod)
   Restore broken flap-covered blue bulb lights
   Restore procedural sail lights who match the sail's color
   body_F (grouper) engine spike texture and placement fixed
   body_A (Raven) engine spike and flame placement fixed
]]---------------------------------------------------------------

local function SailshipTweaks()
	local tweaks = {
		{k='largeflame',	tz=-13.1																},	-- body_A flame1
		{k='smallflame',	tz=-13.27																},	-- body_A flame2
		{k='decals_Decal5',			del=true														},	-- body_D
		{k='decals_Decal8',			del=true														},	-- body_D
		{k='decals_Decal17',tx=-2.2,	rx=245,	ry=100,		rz=170									},	-- Wings_A R
		{k='decals_Decal18',tx=4,				ry=-70.2,	rz=15									},	-- Wings_A L
		{k='decals_Decal16',			rx=290,	ry=257.5,	rz=18.63								},	-- Wings_B R
		{k='decals_Decal14',			rx=307,	ry=256,		rz=4.475								},	-- Wings_C R
		{k='decals_Decal7',				rx=270,	ry=180												},	-- Wings_D R
		{k='decals_Decal9',				rx=270,	ry=180												},	-- Wings_E R
		{k='decals_Decal11',tx=-4.91,	rx=267,					sx=0.8,	sy=0.8						},	-- Wings_F R
		{k='decals_Decal12',tx=4.9,								sx=0.8,	sy=0.8						},	-- Wings_F L
		{k='Trail105L3',	ry=180																	},	-- body_A
		{k='Trail105L4',	ry=180																	},	-- wings_D R
		{k='Trail105L5',	ry=180																	},	-- wings_D L
		{k='Trail105L1',	ry=180																	},	-- wings_E R
		{k='Trail105L2',	ry=180																	},	-- wings_E L
		{k='Gun1Ref12',		tx=-0.66,	ty=1.72,	tz=2.15,	rx=0,	ry=0,	rz=-130,sx=0.35,	sy=0.35,	sz=0.35	},	-- body_A
		{k='Gun1Ref13',		tx=0.66,	ty=1.72,	tz=2.15,	rx=0,	ry=0,	rz=130,	sx=0.35,	sy=0.35,	sz=0.35	},	-- body_A
		{k='Gun1Ref10',		tx=-0.47,	ty=1.77,	tz=1.08,	rx=0,	ry=0,	rz=-120,sx=0.34,	sy=0.34,	sz=0.34	},	-- body_B
		{k='Gun1Ref11',		tx=0.47,	ty=1.77,	tz=1.08,	rx=0,	ry=0,	rz=120,	sx=0.34,	sy=0.34,	sz=0.34	},	-- body_B
		{k='Gun1Ref2',		rx=0,		ry=0,		rz=-122											},	-- body_C
		{k='Gun1Ref3',		rx=0,		ry=0,		rz=122											},	-- body_C
		{k='Gun1Ref4',		tx=-0.35,	ty=1.75,	tz=2,		rx=0,	ry=0,	rz=-86				},	-- body_D
		{k='Gun1Ref5',		tx=0.35,	ty=1.75,	tz=2,		rx=0,	ry=0,	rz=86				},	-- body_D
		{k='Gun1Ref6',		tx=-0.78,	ty=1.7,					rx=0,		ry=0,		rz=-88		},	-- body_E
		{k='Gun1Ref7',		tx=0.78,	ty=1.7,					rx=0,		ry=0,		rz=88		},	-- body_E
		{k='Gun1Ref8',		rx=0,		ry=0,		rz=-110,	sx=0.34,	sy=0.34,	sz=0.34		},	-- body_F
		{k='Gun1Ref9',		rx=0,		ry=0,		rz=110,		sx=0.34,	sy=0.34,	sz=0.34		},	-- body_F
		{k='SpinningpartBack1',			tz=-3.882													},	-- body_A engine
		{k='SpinningpartSpike',			tz=-6.376													},	-- body_F spike
	}
	local T = {
		{
			SKW		= {},
			REMOVE	= 'Section'
		}
	}
	for _,node in ipairs(tweaks) do
		if node.del then
			T[1].SKW[#T[1].SKW+1] = {'Name', node.k}
		else
			T[#T+1] = {
				SPECIAL_KEY_WORDS	= {'Name', node.k},
				VALUE_CHANGE_TABLE	= {
					{'TransX',	node.tx or 'IGNORE'},
					{'TransY',	node.ty or 'IGNORE'},
					{'TransZ',	node.tz or 'IGNORE'},
					{'RotX',	node.rx or 'IGNORE'},
					{'RotY',	node.ry or 'IGNORE'},
					{'RotZ',	node.rz or 'IGNORE'},
					{'ScaleX',	node.sx or 'IGNORE'},
					{'ScaleY',	node.sy or 'IGNORE'},
					{'ScaleZ',	node.sz or 'IGNORE'}
				}
			}
		end
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.sailship re-alignments.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.45',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|sailship re-alignments|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= (
			function()
				local T = SailshipTweaks()

				-- body_F fix spike texture
				T[#T+1] = {
					SPECIAL_KEY_WORDS	= {'Name', 'SpinningpartSpike', 'Name', 'MATERIAL'},
					VALUE_CHANGE_TABLE 	= {
						{'Value', 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/METALMATERIAL_TRIMS.MATERIAL.MBIN'}
					}
				}
				return T
			end
		)()
	},
	{
		MBIN_FILE_SOURCE	= {
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
					{'Shader', 'SHADERS/UBERSHADER.SHADER.BIN'},
					{'ShaderMillDataHash', 0},
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'MaterialFlag', '_F38_NO_DEFORM'},
				VALUE_CHANGE_TABLE 	= {
					{'MaterialFlag', '_F10_NORECEIVESHADOW'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC/HQLIGHT_MAT11.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/SPACECRAFT/FIGHTERS/SAILS/RECTLIGHTPROC.BASE.DDS'}
				}
			}
		}
	}
}}}}