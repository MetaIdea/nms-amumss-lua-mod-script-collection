ModAuthor	= "Balzhur"
LuaAuthor	= "Nexus site, Balzhur"
Maintainer	= ""
ModName		= "Reverse Hover PulseSpeed"
ModCategory	= "Ship"
ModDescription	= "Makes hover and reverse available, increases pulse speed"
GameVersion	= "4.52"
ModVersion	= "1.4"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModAuthor.." - "..ModCategory.." - "..ModName..".pak",
	["MOD_DESCRIPTION"]	= ModDescription.." v"..ModVersion,
	["MOD_MAINTENANCE"]	= Maintainer,
	["MOD_AUTHOR"]		= ModAuthor,
	["LUA_AUTHOR"]		= LuaAuthor,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {{
		["MBIN_CHANGE_TABLE"] = {{
			["MBIN_FILE_SOURCE"]	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
			["EXML_CHANGE_TABLE"] 	= {{
				["PRECEDING_KEY_WORDS"] = "",
				["VALUE_CHANGE_TABLE"]	= {
					{"HoverTakeoffHeight",				"113"},		-- Original "90"
					{"HoverMinSpeed",				"0"},		-- Original "1"
					{"MiniWarpSpeed",				"60000"},	-- Original "30000"	-- pulse speed
					{"MiniWarpChargeTime",				"1"},		-- Original "2"		-- pulse charge time
					{"CollisionDistance", 				"20"},		-- Original "200"
					{"DeflectDistance", 				"1000"}, 	-- Original "150"
					{"CollisionRadiusMultiplier",		 	"0.9"}, 	-- Original "1.1"
					{"LandingMaxSpeed",				"160"},		-- Original "80"
					{"LandingMargin",				"0.4"},		-- Original "1.4"
					{"PulseDriveStationApproachSlowdownRangeMin",	"500"},		-- Original "1000"
					{"PulseDriveStationApproachSlowdownRange",	"1000"},	-- Original "5000"
					{"WarpInRange",					"4000"},	-- Original "10000"
					{"WarpInRangeFreighter",			"2000"},	-- Original "5000"
					{"WarpOutRange",				"200"},		-- Original "1000"
					{"WarpInRangeNexus",				"2000"},	-- Original "5000"
--					{"PulseDrivePlanetApproachHeight",		"2000"},	-- Original "6000"	-- 2k is too close - messes with pulsing to destination
					{"HoverAlignTime",				"0.3"},		-- Original "0.7"
					{"HoverSpeedFactor",				"0"},		-- Original "20"
					{"HoverLandManeuvreTimeMin",			"0.3"},		-- Original "0.7"
					{"HoverLandManeuvreTimeMax",			"1"},		-- Original "1.2"
				}
			},{
				["PRECEDING_KEY_WORDS"]	= {"SpaceEngine"},
				["REPLACE_TYPE"]	= "ALL",
				["MATH_OPERATION"]	= "*",
				["INTEGER_TO_FLOAT"]	= "FORCE",
				["VALUE_CHANGE_TABLE"]	= {
					{"MaxSpeed", 			"2"},
					{"MinSpeed", 			"0"},
					{"Falloff", 			"0.5"},
					{"BoostThrustForce",		"1.5"},
					{"BoostMaxSpeed", 		"2"},
					{"BoostFalloff", 		"0.5"},
					{"DirectionBrakeMin",		"2"},
					{"DirectionBrake",		"2"},
					{"ReverseBrake",		"2"},
					{"OverspeedBrake", 		"0"},
					{"TurnBrakeMin",		"0.5"},
					{"TurnBrakeMax",		"0.5"},
					{"TurnStrength",		"2"},
				}
			},{
				["PRECEDING_KEY_WORDS"]	= {"PlanetEngine"},
				["REPLACE_TYPE"]	= "ALL",
				["MATH_OPERATION"]	= "*",
				["INTEGER_TO_FLOAT"]	= "FORCE",
				["VALUE_CHANGE_TABLE"]	= {
					{"MaxSpeed", 			"2"},
					{"MinSpeed", 			"0"},
					{"Falloff", 			"0.5"},
					{"BoostThrustForce",		"1.5"},
					{"BoostMaxSpeed", 		"2"},
					{"BoostFalloff", 		"0.5"},
					{"DirectionBrakeMin",		"2"},
					{"DirectionBrake",		"2"},
					{"ReverseBrake",		"2"},
					{"OverspeedBrake", 		"0"},
					{"TurnBrakeMin",		"0.5"},
					{"TurnBrakeMax",		"0.5"},
					{"TurnStrength",		"2"},
				}
			},{
				["PRECEDING_KEY_WORDS"]	= {"CombatEngine"},
				["REPLACE_TYPE"]	= "ALL",
				["MATH_OPERATION"]	= "*",
				["INTEGER_TO_FLOAT"]	= "FORCE",
				["VALUE_CHANGE_TABLE"]	= {
					{"MaxSpeed", 			"2"},
					{"MinSpeed", 			"0"},
					{"Falloff", 			"0.5"},
					{"BoostThrustForce",		"1.5"},
					{"BoostMaxSpeed", 		"2"},
					{"BoostFalloff", 		"0.5"},
					{"DirectionBrakeMin",		"2"},
					{"DirectionBrake",		"2"},
					{"ReverseBrake",		"2"},
--					{"OverspeedBrake", 		"0"},
					{"TurnBrakeMin",		"0.5"},
					{"TurnBrakeMax",		"0.5"},
					{"TurnStrength",		"2"},
				}
			}}
		}}
	}}
}
-- The END of mod definition container