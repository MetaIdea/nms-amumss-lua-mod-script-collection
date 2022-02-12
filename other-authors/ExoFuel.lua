--You can edit these values for easy access

--Exocraft variables
MiningFuelUsage 	= 0					--How much fuel the mining laser uses. Original value "1.5"
WeaponFuelUsage 	= 0					--How much fuel the mounted cannon uses. Original value "1.5"

NormalFuelCost 		= 0					--How much fuel is spent by moving. Original value "0.4"
SurvivalFuelCost 	= 0					--How much fuel is spent by moving in survival and hardcore modes. Original value "0.8"
ColossusFuelCost 	= 0					--How much fuel is spent by the Colossus in survival and hardcore modes. Original value "0.5"

NormalBoostCost		= 0					--How much fuel is spent while boosting. Original value "2"
SurvivalBoostCost 	= 0					--How much fuel is spent while boosting in survival and hardcore modes. Original value "4"

--Below this line is the code for the actual edits
--You may change the values below as well if you know your way around a lua.

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "NoExoFuel.pak",
["MOD_DESCRIPTION"]	= "Removes fuel requirements for exocraft activities",
["MOD_AUTHOR"]		= "SourGrape, lua by ShrikeDominion",
["NMS_VERSION"]		= "2.23",
["MODIFICATIONS"]	=
	{
		{
			["PAK_FILE_SOURCE"] = "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MiningLaserDrainSpeed", MiningFuelUsage},
								{"ProjectileDrainPerShot", WeaponFuelUsage},
								{"VehicleBoostFuelRate", NormalBoostCost},
								{"VehicleBoostFuelRateSurvival", SurvivalBoostCost},
								{"VehicleFuelRate", NormalFuelCost},
								{"VehicleFuelRateSurvival", SurvivalFuelCost},
								{"VehicleFuelRateTruckMultiplier", ColossusFuelCost}
							}
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT