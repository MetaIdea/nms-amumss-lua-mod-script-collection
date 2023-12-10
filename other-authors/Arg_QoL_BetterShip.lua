--[[

	Name:
		Argual's Quality of Life Better Ship

	Description:
		Greatly reduced minimum ship speed on planets (from 20 u/s to 5 u/s).
		Ships still can not hover!
		Increases the maximum speed of ships. Doesn't affect combat flight.
			Planet atmosphere:
				Max speed increased twofold.
				Max speed while boosting increased threefold.
			Space:
				Max speed increased threefold.
				Max speed while boosting increased twofold.
		Boost no longer weakens after prolonged use. Doesn't affect combat flight.
		Ship can fly closer to the ground.

	Modified files:
		GCSPACESHIPGLOBALS.GLOBAL.MBIN

--]]

-- Settings:
	
	-- Minimum ship speed (u/s) on planets. Set value to 0 to make ships be able to hover in place.
		-- Original: 20
	PlanetMinSpeed	= 5
	
	-- Maximum ship speed (u/s) multiplier on planets. Set value to 2 to make ships be able to fly up to 100% faster.
		-- Original: 1
	PlanetMaxSpeedMultiplier = 2
	
	-- Maximum ship boost speed (u/s) multiplier on planets. Set value to 2 to make ships be able to fly up to 100% faster while boosting.
		-- Original: 1
	PlanetBoostMaxSpeedMultiplier = 3
	
	-- Maximum ship speed (u/s) multiplier in space. Set value to 2 to make ships be able to fly up to 100% faster.
		-- Original: 1
	SpaceMaxSpeedMultiplier = 3
	
	-- Maximum ship boost speed (u/s) multiplier in space. Set value to 2 to make ships be able to fly up to 100% faster while boosting.
		-- Original: 1
	SpaceBoostMaxSpeedMultiplier = 2

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Arg_QoL_BetterShip.pak",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "Argual",
  ["NMS_VERSION"]				= "3.10",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCSPACESHIPGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "PulseDrivePlanetApproachHeight",3000 },	-- Original: 6000
								{ "CruiseHeight",100 }, 					-- Original: 250
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Control","SpaceEngine" },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed",SpaceMaxSpeedMultiplier }, 			-- Original: 80
								{ "BoostMaxSpeed",SpaceBoostMaxSpeedMultiplier }, 	-- Original: 1200
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Control","PlanetEngine" },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed",PlanetMaxSpeedMultiplier }, 			-- Original: 125
								{ "BoostMaxSpeed",PlanetBoostMaxSpeedMultiplier }, 	-- Original: 155
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlLight","SpaceEngine" },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed",SpaceMaxSpeedMultiplier }, 			-- Original: 80
								{ "BoostMaxSpeed",SpaceBoostMaxSpeedMultiplier }, 	-- Original: 1300
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlLight","PlanetEngine" },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed",PlanetMaxSpeedMultiplier }, 			-- Original: 125
								{ "BoostMaxSpeed",PlanetBoostMaxSpeedMultiplier }, 	-- Original: 150
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy","SpaceEngine" },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed",SpaceMaxSpeedMultiplier }, 			-- Original: 80
								{ "BoostMaxSpeed",SpaceBoostMaxSpeedMultiplier }, 	-- Original: 1100
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy","PlanetEngine" },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "MaxSpeed",PlanetMaxSpeedMultiplier }, 			-- Original: 130
								{ "BoostMaxSpeed",PlanetBoostMaxSpeedMultiplier }, 	-- Original: 185
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Control","SpaceEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "BoostFalloff",0 }, 	-- Original: 0.7
								{ "Falloff",0 }, 		-- Original: 0.7
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "Control","PlanetEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "BoostFalloff",0 }, 				-- Original: 0.7
								{ "Falloff",0 }, 					-- Original: 0.5
								{ "MinSpeed",PlanetMinSpeed },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlLight","SpaceEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "BoostFalloff",0 }, 	-- Original: 0.7
								{ "Falloff",0 }, 		-- Original: 0.7
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlLight","PlanetEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "BoostFalloff",0 }, 				-- Original: 0.7
								{ "Falloff",0 }, 					-- Original: 0.5
								{ "MinSpeed",PlanetMinSpeed },
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy","SpaceEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "BoostFalloff",0 }, 	-- Original: 0.7
								{ "Falloff",0 }, 		-- Original: 0.7
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ControlHeavy","PlanetEngine" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "BoostFalloff",0 }, 				-- Original: 0.7
								{ "Falloff",0 }, 					-- Original: 0.5
								{ "MinSpeed",PlanetMinSpeed },
							}
						},
					}
					
				},
			}
		},
	}
}
