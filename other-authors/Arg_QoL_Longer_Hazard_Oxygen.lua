--[[

	Name:
		Argual's Quality of Life Longer Hazard Protection and Life Support

	Description:
		Increases the maximum hazard protection charge threefold.
		Increases the maximum life support charge tenfold.
		Substance cost to recharge them is increased proportionally.
		Hazard protection recharges proportionally slower in safe environments.
		Warning: Affects both normal mode and survival!
		Note: This results in a much easier start (in survival), as the initial hazard protection charge also lasts longer.
		

	Modified files:
		GCPLAYERGLOBALS.GLOBAL.MBIN
		METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN

--]]

-- Settings:

	-- Note: These settings affect both survival and normal mode!
	
	-- Hazard protection max charge multiplier. Value 5 results in hazard protection lasting 5 times longer (if charged to full).
		-- Under the hood it actually changes the rate at which hazard damage is applied to protection,
		-- as changing the maximum charge does not seem to have any effect on how long it takes for protection to fail.
		-- Original: 1
	HazardProtectionMaxChargeMultiplier = 3
	
	-- Hazard protection charge cost multiplier. Value 5 results in requiring 5 times the amount of items to charge hazard protection to full.
		-- Under the hood it actually changes the maximum charge of hazard protection, as it seems that it only affects the
		-- amount of items required to charge it to full.
		-- Original: 1
	HazardProtectionChargeCostMultiplier = 3
	
	-- Charge cost and maximum charge multiplier for life support.
		-- Original: 1
	LifeSupportMaxChargeMultiplier = 10

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Arg_QoL_Longer_Hazard_Oxygen.pak",
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
							["PRECEDING_KEY_WORDS"] = { "" },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NormalModeHazardTimeMultiplier",	HazardProtectionMaxChargeMultiplier},
								{"HardModeHazardTimeMultiplier",	HazardProtectionMaxChargeMultiplier},
								{"NormalModeHazardRechargeUnderground",	HazardProtectionMaxChargeMultiplier},
								{"HardModeHazardRechargeUnderground",	HazardProtectionMaxChargeMultiplier},
							}	
						},
					}
				},
			}
		},
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","ENERGY",},
							["PRECEDING_KEY_WORDS"] = { },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	LifeSupportMaxChargeMultiplier},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","PROTECT",},
							["PRECEDING_KEY_WORDS"] = { },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	HazardProtectionChargeCostMultiplier},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","T_TOX",},
							["PRECEDING_KEY_WORDS"] = { },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	HazardProtectionChargeCostMultiplier},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","T_COLDPROT",},
							["PRECEDING_KEY_WORDS"] = { },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	HazardProtectionChargeCostMultiplier},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","T_HOTPROT",},
							["PRECEDING_KEY_WORDS"] = { },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	HazardProtectionChargeCostMultiplier},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","T_UNW",},
							["PRECEDING_KEY_WORDS"] = { },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	HazardProtectionChargeCostMultiplier},
							}	
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","T_RAD",},
							["PRECEDING_KEY_WORDS"] = { },
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ChargeAmount",	HazardProtectionChargeCostMultiplier},
							}	
						},
					}
				},
			}
		},
	}
}
