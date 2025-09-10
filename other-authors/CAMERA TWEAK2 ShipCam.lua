local mod_desc = [[CAMERA TWEAK2 ShipCam]]

local cam_ect = {}

cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterUnarmedCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 6},
		{"BackMaxDistance", "6"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},		
		{"UseSpeedBasedSpring", "False"},

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterRunCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 8},
		{"BackMaxDistance", "8"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},		
		{"UseSpeedBasedSpring", "False"},

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterCombatCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 7},
		{"BackMaxDistance", "7"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},
		{"UseSpeedBasedSpring", "False"},
		
	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterMiningCam",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 7},
		{"BackMaxDistance", "7"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},
		{"UseSpeedBasedSpring", "False"},
				
	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterIndoorCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 4},
		{"BackMaxDistance", "4"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},	
		{"UseSpeedBasedSpring", "False"},	

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterNexusCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 5},
		{"BackMaxDistance", "5"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},	
		{"UseSpeedBasedSpring", "False"},	

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterAirborneCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 7},
		{"BackMaxDistance", "7"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},	
		{"UseSpeedBasedSpring", "False"},	

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterMeleeBoostCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 8},
		{"BackMaxDistance", "8"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},	
		{"UseSpeedBasedSpring", "False"},	

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterRocketBootsCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 7},
		{"BackMaxDistance", "7"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},	
		{"UseSpeedBasedSpring", "False"},

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterRocketBootsChargeCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 6},
		{"BackMaxDistance", "6"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},	
		{"UseSpeedBasedSpring", "False"},			
		
	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterFallingCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 7},
		{"BackMaxDistance", "7"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},	
		{"UseSpeedBasedSpring", "False"},	

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterAirborneCombatCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 7},
		{"BackMaxDistance", "7"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},	
		{"UseSpeedBasedSpring", "False"},			

	}
}
cam_ect[#cam_ect+1] = {
["PRECEDING_KEY_WORDS"] = "CharacterSpaceCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 8},
		{"BackMaxDistance", "8"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},	
		{"UseSpeedBasedSpring", "False"},			

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterSteepSlopeCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 4},
		{"BackMaxDistance", "4"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},	
		{"UseSpeedBasedSpring", "False"},	
		
	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterUnderwaterCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 6},
		{"BackMaxDistance", "6"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},	
		{"UseSpeedBasedSpring", "False"},	
		
	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterUnderwaterCombatCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 7},
		{"BackMaxDistance", "7"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},	
		{"UseSpeedBasedSpring", "False"},	

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterUnderwaterJetpackCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 8},
		{"BackMaxDistance", "8"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},
		{"UseSpeedBasedSpring", "False"},

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterAbandCam",
	["VALUE_CHANGE_TABLE"] = {
		{"BackMinDistance", 4},
		{"BackMaxDistance", "4"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},
		{"UseSpeedBasedSpring", "False"},

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterAbandCombatCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 4},
		{"BackMaxDistance", "4"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},
		{"UseSpeedBasedSpring", "False"},
		
	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterGrabbedCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance", 8},
		{"BackMaxDistance", "8"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"VertRotationSpeed", "20"},
		{"SpringSpeed", "0.01"},
		{"CenterStartTime", "120"},
		{"CenterBlendTime", 120},
		{"CenterMaxSpring", 1},
		{"CenterMaxSpeed", "0.1"},
		{"CenterStartSpeed", "1"},
		{"LockToObjectOnIdle", "False"},		

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterSitCam",
	["VALUE_CHANGE_TABLE"] = {
		{"OffsetX", "0"},

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterRideCam",
	["VALUE_CHANGE_TABLE"] = {

		{"OffsetZFlat",0.4},
		{"OffsetY",0.7},
		{"BackMinDistance", 7},
		{"BackMaxDistance", "14"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"CenterStartTime", "120"},
		{"LockToObjectOnIdle", "False"},		

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterRideCamMedium",
	["VALUE_CHANGE_TABLE"] = {

		{"OffsetZFlat",0.4},
		{"OffsetY",0.7},
		{"BackMinDistance", 7},
		{"BackMaxDistance", "14"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"CenterStartTime", "120"},
		{"LockToObjectOnIdle", "False"},				

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterRideCamLarge",
	["VALUE_CHANGE_TABLE"] = {

		{"OffsetZFlat",0.4},
		{"OffsetY",0.7},
		{"BackMinDistance", 7},
		{"BackMaxDistance", "14"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"CenterStartTime", "120"},
		{"LockToObjectOnIdle", "False"},		

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "CharacterRideCamHuge",
	["VALUE_CHANGE_TABLE"] = {

		{"OffsetZFlat",0.4},
		{"OffsetY",0.7},
		{"BackMinDistance", 7},
		{"BackMaxDistance", "14"},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"CenterStartTime", "120"},
		{"LockToObjectOnIdle", "False"},

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "SpaceshipFollowCam",
	["VALUE_CHANGE_TABLE"] = {

		{"OffsetY",1.0},
		{"BackMinDistance",20},
		{"BackMaxDistance",30},	

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "BuggyFollowCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance",22},
		{"BackMaxDistance",33},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"CenterStartTime", "120"},
		{"LockToObjectOnIdle", "False"},		
		
	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "HovercraftFollowCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance",22},
		{"BackMaxDistance",33},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"CenterStartTime", "120"},
		{"LockToObjectOnIdle", "False"},				
		
	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "SubmarineFollowCam",
	["VALUE_CHANGE_TABLE"] = {

		{"OffsetY",-0.5},
		{"OffsetZFlat",-2.0},
		{"BackMinDistance",22},
		{"BackMaxDistance",33},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"CenterStartTime", "120"},
		{"LockToObjectOnIdle", "False"},		
		
	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "BikeFollowCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance",22},
		{"BackMaxDistance",33},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"CenterStartTime", "120"},
		{"LockToObjectOnIdle", "False"},				
		
	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "WheeledBikeFollowCam",
	["VALUE_CHANGE_TABLE"] = {

		{"BackMinDistance",22},
		{"BackMaxDistance",33},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"CenterStartTime", "120"},
		{"LockToObjectOnIdle", "False"},		
		
	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "TruckFollowCam",
	["VALUE_CHANGE_TABLE"] = {

		{"OffsetZFlat",-2.2},
		{"OffsetY",3.3},
		{"BackMinDistance",44},
		{"BackMaxDistance",55},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"CenterStartTime", "120"},
		{"LockToObjectOnIdle", "False"},		
		
	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "MechFollowCam",
	["VALUE_CHANGE_TABLE"] = {
						
		{"BackMinDistance",22},
		{"BackMaxDistance",33},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"CenterStartTime", "120"},
		{"LockToObjectOnIdle", "False"},		

	}
}
cam_ect[#cam_ect+1] = {

	["PRECEDING_KEY_WORDS"] = "MechCombatCam",
	["VALUE_CHANGE_TABLE"] = {
		
		{"BackMinDistance",22},
		{"BackMaxDistance",33},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"CenterStartTime", "120"},
		{"LockToObjectOnIdle", "False"},		

	}
}
cam_ect[#cam_ect+1] = {
	["PRECEDING_KEY_WORDS"] = "MechJetpackCam",
	["VALUE_CHANGE_TABLE"] = {
			
		{"BackMinDistance",22},
		{"BackMaxDistance",33},
		{"PanNear", "0"},
		{"PanFar", "0"},
		{"VertRotationMin", "-85"},
		{"VertRotationMax", "85"},
		{"CenterStartTime", "120"},
		{"LockToObjectOnIdle", "False"},		

	}
}
cam_ect[#cam_ect+1] = {
	REPLACE_TYPE 		= 'All',
	VALUE_CHANGE_TABLE 	= {

	{'BinocularFlashTime', 0},
	{'BinocularFlashStrength', 0},
	{'ModelViewFlashTime', 0},
	{'PhotoModeFlashDuration', 0},
	{'PhotoModeFlashIntensity', 0},
	{'VehicleExitFlashTime', 0},
	{'VehicleExitFlashStrength', 0},	
	{'BuildingModeMaxDistance', 99999},

	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'CAMERA TWEAK2 ShipCam.pak',
	MOD_AUTHOR			= 'TEAM',
	NMS_VERSION			= '5.5',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCCAMERAGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= cam_ect
	}
}}}}