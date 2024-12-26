-------------------------------------------
local mod_desc = [[
  camera POV tweaks for vehicles and ships
  Remove auto-centering; photo-mode tweaks
]]-----------------------------------------

local cam_ect = {}
for cam, prop in pairs({
---	PRECEDING_KEY			offsetX		offsetY		offsetZ		backMin		backMax		upMin		upMax		lookStick
	CharacterRideCamMedium	={ox=2.2,	oy=0.6,		oz=1,		bn=10.6,	bx=15.6,	un=0.6,		ux=0.8,		},
	CharacterRideCamLarge	={ox=2.2,	oy=0.6,		oz=1,		bn=18.6,	bx=25.6,	un=0.6,		ux=0.8,		},
	CharacterRideCamHuge	={ox=2.8,	oy=1,		oz=1.2,		bn=30,		bx=44,		un=1,		ux=1.4,		},
	BuggyFollowCam			={			oy=3.3,		oz=-0.7,	bn=16,		bx=24.5,	un=-2,		ux=-2,		},
	SubmarineFollowCam		={			oy=3.3,		oz=-2.5,	bn=20.2,	bx=30.2,	un=3,		ux=4,		},
	BikeFollowCam			={			oy=1.52,	oz=-0.4,	bn=16.5,	bx=23,		un=1.2,		ux=4.5,		},
	WheeledBikeFollowCam	={			oy=0.6,		oz=-0.7,	bn=15.25,	bx=24.5,				ux=1,		},
	TruckFollowCam			={			oy=4.7,		oz=3.1,		bn=16,		bx=31,		un=1,					},
	MechFollowCam			={ox=2.5,	oy=1.4,					bn=11.5,	bx=17,		un=0.1,		ux=1,		},
	MechCombatCam			={ox=3,		oy=0.6,					bn=11.5,	bx=17,		un=0.1,		ux=1,		},
	MechJetpackCam			={ox=1.4,							bn=13,		bx=23,		un=0.5,		ux=1.5,		},
	SpaceshipFollowCam		={			oy=1.8,		oz=-0.2,	bn=18.6,	bx=50,		un=3.8,		ux=10,		ls=254	},
	DropshipFollowCam		={			oy=0.9,		oz=0.2,		bn=18.2,	bx=40,		un=4.2,		ux=11.2,	ls=254	},
	ShuttleFollowCam		={			oy=2.4,		oz=2,		bn=23,		bx=46,		un=3,		ux=10,		ls=254	},
	RoyalShipFollowCam		={			oy=2.6,					bn=15,		bx=45,		un=3,		ux=11,		ls=254	},
	SailShipFollowCam		={			oy=2.4,		oz=1,		bn=16,		bx=46,		un=2.8,		ux=10,		ls=254	},
	ScienceShipFollowCam	={			oy=3.4,		oz=4.5,		bn=20,		bx=39,		un=4.2,		ux=11.2,	ls=254	},
	AlienShipFollowCam		={			oy=1.1,		oz=2,		bn=14,		bx=30,		un=2.1,		ux=10.5,	ls=254	},
	RobotShipFollowCam		={			oy=-0.7,	oz=4,		bn=18,		bx=40,		un=2.2,		ux=10,		ls=254	}
}) do
	cam_ect[#cam_ect+1] = {
		INTEGER_TO_FLOAT	= 'Force',
		PRECEDING_KEY_WORDS = cam,
		VALUE_CHANGE_TABLE 	= {
			{'OffsetX',				prop.ox or 'IGNORE'},
			{'OffsetY',				prop.oy or 'IGNORE'},
			{'OffsetZFlat',			prop.oz or 'IGNORE'},
			{'BackMinDistance',		prop.bn or 'IGNORE'},
			{'BackMaxDistance',		prop.bx or 'IGNORE'},
			{'UpMinDistance',		prop.un or 'IGNORE'},
			{'UpMaxDistance',		prop.ux or 'IGNORE'},
			{'LookStickLimitAngle',	prop.ls or 'IGNORE'}
		}
	}
end

cam_ect[#cam_ect+1] = {
	REPLACE_TYPE 		= 'All',
	VALUE_CHANGE_TABLE 	= {
		{'CenterStartTime',		42},
		{'VertRotationMin',		-80},
		{'VertRotationMax',		80},
		{'Time',				0}, -- disable charting arial view
		{'PauseTime',			0},
		{'TimeBack',			0},
	}
}
cam_ect[#cam_ect+1] = {
	INTEGER_TO_FLOAT	= 'Force',
	VALUE_CHANGE_TABLE 	= {
		{'VehicleExitFlashTime',			0.5	},	-- 0.8		361
		{'VehicleExitFlashStrength',		0.5	},	-- 0.8
		{'BinocularFlashTime',				0.12},	-- 0.24
		{'BinocularFlashStrength',			0.4	},	-- 0.9
		{'MechCameraArmShootOffsetY',		2	},	-- 1
		{'InteractionHeadHeightDefault',	1.5	},	-- 1.65		3313
		{'PhotoModeVelocitySmoothTime',		1.5	},	-- 0.5
		{'PhotoModeMoveSpeed',				14	},	-- 11
		{'PhotoModeTurnSpeed',				22	},	-- 60
		{'PhotoModeMaxDistance',			1200},	-- 150
		{'PhotoModeMaxDistanceSpace',		5500},	-- 200
		{'PhotoModeRollSpeed',				35	},	-- 45
		{'BuildingModeMaxDistance',			1500},	-- 60
		{'MechCamSpringStrengthMin',		0.1	},	-- 0.6
		{'MechCamSpringStrengthMax',		0.1	},	-- 0.6
		{'ModelViewMouseRotateSpeed',		1.2	},	-- 1.6	-- inventory models
		{'ModelViewMouseRotateSnapStrength',0.38},	-- 0.94
		{'BobAmountAbandFreighter',			0.08},	-- 0.1		6129
		{'FirstPersonCamHeight',			0.79},	-- 0.85
	}
}
cam_ect[#cam_ect+1] = {
	REPLACE_TYPE 		= 'All',
	MATH_OPERATION 		= '+',
	VALUE_CHANGE_TABLE 	= {
		{'OffsetYStartBias',	8},		-- 3.5	-- Warp tunnel POV
		{'OffsetZStartBias',	66},	-- 15 50
	}
}
cam_ect[#cam_ect+1] = {
	INTEGER_TO_FLOAT	= 'Force',
	PRECEDING_KEY_WORDS = 'VehicleExitFlashColour',
	VALUE_CHANGE_TABLE 	= {
		{'R',			0.08},
		{'G',			0.08},
		{'B',			0.16},
		{'A',			0.5}
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC CAMERA.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCCAMERAGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= cam_ect
	}
}}}}
