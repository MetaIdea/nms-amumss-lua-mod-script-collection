--[[

	Name:
		Argual's Quality of Life Player Movement

	Description:
		Makes the player run and walk 25% faster.
		Increases fall distance (distance before damage is taken) by 60%.
		Buffs Rocket Boots upgrade, because vanilla is useless at worst, unwieldy at best.
			Player can jump three times higher when using Rocket Boots.
			Player can 'leap' twice as far when using Rocket Boots.

	Modified files:
		GCPLAYERGLOBALS.GLOBAL.MBIN

--]]

-- Settings:
	
	-- Player walk speed. Value 1.25 results in the player walking 25% faster.
		-- Original: 1
	WalkSpeedMultiplier	= 1.25
	
	-- Player run speed. Value 1.25 results in the player running 25% faster.
		-- Original: 1
	RunSpeedMultiplier	= 1.25
	
	-- Fall distance (distance before damage is taken) multiplier.
	-- Value 2 results in the player being able to fall twice as much before taking damage or die.
		-- Original: 1
	FallDistanceMultiplier = 1.6
	
	-- Rocket Boots vertical power multiplier.
		-- Original: 1
	RocketBootsPowerMultiplierVertical = 3
	
	-- Rocket Boots horizontal power multiplier.
		-- Original: 1
	RocketBootsPowerMultiplierHorizontal = 2

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Arg_QoL_PlayerMovement.pak",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "Argual",
  ["NMS_VERSION"]				= "3.10",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCPLAYERGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = { },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GroundWalkBrake",							WalkSpeedMultiplier},
								{"GroundWalkBrakeWhileMoving",				WalkSpeedMultiplier},
								{"GroundWalkSpeed",							WalkSpeedMultiplier},
								{"GroundWalkSpeedTeleportHmd",				WalkSpeedMultiplier},
								{"GroundRunSpeed",							RunSpeedMultiplier},
								{"GroundWalkSpeedLowG",						WalkSpeedMultiplier},
								{"GroundRunSpeedLowG",						RunSpeedMultiplier},
								{"RocketBootsImpulse",						RocketBootsPowerMultiplierVertical},
								{"RocketBootsBoostForce",					RocketBootsPowerMultiplierVertical},
								{"RocketBootsDriftForce",					RocketBootsPowerMultiplierHorizontal},
								{"RocketBootsMinDesiredHeight",				RocketBootsPowerMultiplierVertical},
								{"RocketBootsMaxDesiredHeight",				RocketBootsPowerMultiplierVertical},
								{"RocketBootsHeightAdjustUpStrength",		RocketBootsPowerMultiplierVertical},
								{"RocketBootsHeightAdjustDownStrength",		RocketBootsPowerMultiplierVertical},
								{"RocketBootsMaxSpeed",						RocketBootsPowerMultiplierVertical},
								{"HardLandMin", 							FallDistanceMultiplier},
								{"HardLandMax", 							FallDistanceMultiplier},
							}	
						},
					}
				},
			}
		},
	}
}
