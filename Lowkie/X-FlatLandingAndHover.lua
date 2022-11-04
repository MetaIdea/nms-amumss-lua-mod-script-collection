EngineMinSpeed = "0.001"

SpaceEngineMaxSpeed = "400"  	--800 dropping to 200 up to 400
SpaceEngineBoostMaxSpeed = "3100"	--3100 dropping to 2400 raising 3100

CombatEngineMaxSpeed = "150" --300 dropping to 90 up to 150
CombatEngineBoostMaxSpeed = "2400" --2200 raising to 2400

PlanetEngineMaxSpeed = "250" --450 dropping to 150 up to 250
PlanetEngineBoostMaxSpeed = "500"--700 dropping to 250 up to 500

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "X-FlatLandingAndHover.pak", 
["MOD_AUTHOR"]				= "Consolidated",
["NMS_VERSION"]				= "3.3",
["MOD_DESCRIPTION"]			= "Flat landing and Hover(GCSPACESHIPGLOBALS.GLOBAL.MBIN)",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "LandingMargin", 						"0.5" }, --Default 1.4	was 2.5 trouble with clear landing zone
								{ "LandingPushNoseUpFactor", 			"-0.3" }, --Flat Landing		
								{ "LootAttractDistance",				"10000" }, --Default 120
								{ "LootAttractTime",					"0.95" }, --Default .2
								--{ "LootDampForce",						"0.5" }, --Default .5
								{ "LootCollectDistance",				"10000" }, --Default 20 								
--BAD causes 1 min slowdown on portals--{ "PostWarpSlowDownTime",				"50" }, --Default 3								
								{ "MiniWarpFlashDuration",				"0.1" }, --Default .9								
								{ "MiniWarpSpeed",						"80000" }, --Default 30000								
								{ "ShakePowerScaler",					"0.07" }, --Default 0.7	
								{ "DockingAttractAlign", 				"4" }, 		--Original "3"
								{ "DockingAttractAlignRange", 			"500" }, 	--Original "1000"
								{ "OutpostDockSpeedAlignMinDistance", 	"50" }, 	--Original "100"
								{ "OutpostDockSpeedAlignRange", 		"150" }, 	--Original "300"								
								--{ "HoverSpeedFactor", 					"0.001" }, --Original "20" see below
								--{ "HoverMinSpeed",      				"0.001"},	-- Original 1
								{ "HoverTakeoffHeight", 				"60"},		-- Original 90
								{ "HitAsteroidDamage", 					"1000" }, 	--Original "10000"	
								{ "MiniWarpHUDArrowAttractAngle", 		"4" }, 		--Original "10"		
								{ "FreighterApproachDistanceMin", 		"10" }, 		--Original "50"		
								{ "FreighterApproachDistanceMax", 		"50" }, 		--Original "300"		
								{ "FreighterApproachExtraMargin", 		"100" }, 		--Original "1000"		
								{ "WarpInRange", 						"100" },--Original "10000"
                                { "MiniWarpLinesNum",                   "0"   },--Original "4"                                   
							}
						},
                        {
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                { "HoverSpeedFactor", 					"0.001" }, --Original "20"
                                { "HoverMinSpeed",      				"0.001"},	-- Original 1
                            }
                        },
						{
							["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
							
								{ "MaxSpeed", 		PlanetEngineMaxSpeed },	 --Original "125" 155		
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed",		EngineMinSpeed },		    --Original "20"	
								{ "BoostMaxSpeed",	PlanetEngineBoostMaxSpeed },--Original 155		
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Control", "SpaceEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								 { "MaxSpeed",		SpaceEngineMaxSpeed },	   --Original "180"
								 { "BoostMaxSpeed",	SpaceEngineBoostMaxSpeed },--Original "1200"
								 --{ "ReverseBrake", 	"2" },		--Original "0.5"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Control", "SpaceEngine" },
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{								
								 { "MinSpeed",		EngineMinSpeed },	       --Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Control", "CombatEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed",		CombatEngineMaxSpeed },	    --Original 80
								{ "BoostMaxSpeed",	CombatEngineBoostMaxSpeed}, --Original 1200	
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Control", "CombatEngine" },
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed",		EngineMinSpeed },		    --Original "50"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed",		PlanetEngineMaxSpeed },	    --Original "80" 
								{ "BoostMaxSpeed",	PlanetEngineBoostMaxSpeed },--Original "155"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed",		EngineMinSpeed },		    --Original "20"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlLight", "SpaceEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed",		SpaceEngineMaxSpeed },	    --Original "180"
								{ "BoostMaxSpeed",	SpaceEngineBoostMaxSpeed },	--Original "1300"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlLight", "SpaceEngine" },
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed",		EngineMinSpeed },		    --Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlLight", "CombatEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed",		CombatEngineMaxSpeed },		--Original "80"
								{ "BoostMaxSpeed",	CombatEngineBoostMaxSpeed },--Original "1300"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlLight", "CombatEngine" },
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed",		EngineMinSpeed },		    --Original "20"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed",		PlanetEngineMaxSpeed },	    --Original 130
								{ "BoostMaxSpeed",	PlanetEngineBoostMaxSpeed },--Original 185
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed",		EngineMinSpeed },		    --Original "20"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "SpaceEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed",		SpaceEngineMaxSpeed },	    --Original 180
								{ "BoostMaxSpeed",	SpaceEngineBoostMaxSpeed },	--Original 1100		
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "SpaceEngine" },
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed",		EngineMinSpeed },		    --Original "1"		
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "CombatEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed",		CombatEngineMaxSpeed },		--Original 80
								{ "BoostMaxSpeed",	CombatEngineBoostMaxSpeed },--Original 1100
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "CombatEngine" },
                            ["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MinSpeed",		EngineMinSpeed },		    --Original "20"
								
							}
						},
						-- {
							-- ["MATH_OPERATION"]      = "*",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"MiniWarpSpeed",      2}	-- Original 1 (30000 value) now 60000
							-- }
						-- },
					}	
				},
			},
		}
	}
}

--  \/ --------------------- Pulse speed options --------------------- \/
--                             0.5   (15000 value)
--                             1     (30000 value) -- This is the default value set by Hello Games.
--                             1.5   (45000 value)
--                             2     (60000 value)
--                             10    (300000 value)
--                             /\ --------------------- Pulse speed options --------------------- /\
--
--PULSE_SPEED_DEFINED          = 1 -- Define your pulse speed here on this line by changing the number one 
--									immediately after the equals symbol (=)
--                               -- Look above for Pulse speed options
--                               -- NOTE: You can set this value to whatever you desire 
--									(Warning: extreme values could break the game though xD)
--












