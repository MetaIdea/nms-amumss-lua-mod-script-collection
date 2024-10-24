Multiplier = 5
Gravity = 1 + Multiplier / 10

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"]  = "Multiple Vehicles Speed" .. Multiplier .. "X-FlyCarForFun.pak",
	["MOD_AUTHOR"]    = "KuroPeach",
	["NMS_VERSION"]   = "5.20",
	["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"]  = {},
							["INTEGER_TO_FLOAT"]   = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{ "MechJetpackMaxSpeed",             20 * Multiplier }, -- Original "20"
								{ "MechJetpackMaxUpSpeed",           10 * Multiplier }, -- Original "20"
								{ "MechJetpackDrainRate",            "0.1" }, -- Original "0.5"
								{ "VehicleFuelRate",                 "0.1" }, -- Original "0.4"
								{ "VehicleBoostFuelRate",            "0.5" }, -- Original "2"
								{ "MechTitanFallTerrainEditEnabled", "False" }, -- Original "True"					
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {
								{ "Name", "BIKE" }, -- Original "18 15 32 40 "
								{ "Name", "MED_BUGGY" }, -- Original "16 15 30 40 "
								{ "Name", "TRUCK" }, -- Original "12 15 30 40 "
								{ "Name", "WHEELEDBIKE" }, -- Original "19 15 35 40 "
								{ "Name", "HOVERCRAFT" }, -- Original "15 15 25 10 "
								{ "Name", "SUBMARINE" }, -- Original "15 18 25 10 "
								{ "Name", "MECH" }, -- Original "02 15 25 10 "
							},
							["INTEGER_TO_FLOAT"]   = "FORCE",
							["MATH_OPERATION"]     = "*",
							["VALUE_CHANGE_TABLE"] =
							{
								{ "TopSpeedForward",              Multiplier }, -- Original "18"
								{ "UnderwaterEngineMaxSpeed",     Multiplier }, -- Original "15"
								{ "VehicleBoostMaxSpeed",         Multiplier }, -- Original "32"
								{ "VehicleBoostExtraMaxSpeedAir", Multiplier }, -- Original "40"
								{ "WheelMaxDecelForceBraking",    Multiplier }, -- Original "8"
								--{"VehicleGravity",	             Gravity   }, -- Original "17.5"
								{ "VehicleBoostTime",             Multiplier }, -- Original "2.5"
								{ "VehicleBoostRechargeTime",     1 / Multiplier }, -- Original "2"
								{ "VehicleBoostForce",            Multiplier / 2 }, -- Original "400"
								{ "VehicleJumpAirControlForce",   Multiplier / 2 }, -- Original "100"
							}
						},
					}
				}
			}
		}
	}
}
