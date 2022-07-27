ModName = "UniqueExoCrafts"
Description = "A small mod that make exocraft faster but also stand out from eachother"

GCTechnologyTablePath = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
VehicleGlobalsPath = "GCVEHICLEGLOBALS.GLOBAL.MBIN"

NautilonUnderwaterEnginePower = "10" -- Acceleration speed
NautilonUnderwaterEngineFalloff = "1" -- 1 = 100% so no fall of , 0.9 =90% means speed wil be 10% slower  => 45u

MechSuitJPForce = "100"
MechSuitJPMaxSpeed = "50"
MechSuitJPMaxUpSpeed = "80"
MechSuitJPDrainRate = "0.40"
MechSuitJPFillRate = "0.60"
MechSuitLaserDamange = "350"
MechSuitCanonDamange = "2500"

VehicleFuelRate = "0.3"
VehicleFuelRateSurvival = "0.5"
VehicleBoostFuelRate = "1"
VehicleBoostFuelRateSurvival = "2"

ExoCraftsNewValues = {
	{
		["ID"] = "BIKE", --Nomad
		["Speed"] = "50",
		["BoostForce"] = "800",
		["BoostMaxSpeed"] = "60",
		["BoostExtraMaxSpeedAir"] = "80",
		["VehicleBoostSpeedFalloff"] = "2.5",
		["VehicleBoostTime"] = "2.5",
		["VehicleBoostRechargeTime"] = "3"
	},
	{
		["ID"] = "MED_BUGGY", --ROAMER
		["Speed"] = "40",
		["BoostForce"] = "700",
		["BoostMaxSpeed"] = "50",
		["BoostExtraMaxSpeedAir"] = "70",
		["VehicleBoostSpeedFalloff"] = "5",
		["VehicleBoostTime"] = "3.5",
		["VehicleBoostRechargeTime"] = "4"
	},
	{
		["ID"] = "WHEELEDBIKE", --PILGRIM
		["Speed"] = "60",
		["BoostForce"] = "900",
		["BoostMaxSpeed"] = "70",
		["BoostExtraMaxSpeedAir"] = "90",
		["VehicleBoostSpeedFalloff"] = "5",
		["VehicleBoostTime"] = "2",
		["VehicleBoostRechargeTime"] = "2.5"
	},
	{
		["ID"] = "TRUCK", --COLOSSUUS
		["Speed"] = "25",
		["BoostForce"] = "550",
		["BoostMaxSpeed"] = "35",
		["BoostExtraMaxSpeedAir"] = "55",
		["VehicleBoostSpeedFalloff"] = "2.5",
		["VehicleBoostTime"] = "2.5",
		["VehicleBoostRechargeTime"] = "3"
	},
	{
		["ID"] = "SUBMARINE", --NATILON
		["Speed"] = "50",
		["BoostForce"] = "2250",
		["BoostMaxSpeed"] = "50",
		["BoostExtraMaxSpeedAir"] = "50",
		["VehicleBoostSpeedFalloff"] = "2.5",
		["VehicleBoostTime"] = "5",
		["VehicleBoostRechargeTime"] = "5"
	},
	{
		["ID"] = "MECH",
		["Speed"] = "4",
		["BoostForce"] = "2250",
		["BoostMaxSpeed"] = "50",
		["BoostExtraMaxSpeedAir"] = "50",
		["VehicleBoostSpeedFalloff"] = "2.5",
		["VehicleBoostTime"] = "5",
		["VehicleBoostRechargeTime"] = "5"
	}
}

-- HOVBERCraft is an unreleased vehcile this is NOT the Nomad
NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = ModName.. ".pak",
	["MOD_DESCRIPTION"] = Description,
	["MOD_AUTHOR"] = "Jackty89",
	["MODIFICATIONS"] = {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = VehicleGlobalsPath,
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"MechJetpackForce", MechSuitJPForce}, --Original 70
								{"MechJetpackMaxSpeed", MechSuitJPMaxSpeed},
								{"MechJetpackMaxUpSpeed", MechSuitJPMaxUpSpeed},
								{"MechJetpackDrainRate", MechSuitJPDrainRate},
								{"MechJetpackFillRate", MechSuitJPFillRate},
								{"VehicleFuelRate", VehicleFuelRate},
								{"VehicleFuelRateSurvival", VehicleFuelRateSurvival},
								{"VehicleBoostFuelRate", VehicleBoostFuelRate},
								{"VehicleBoostFuelRateSurvival", VehicleBoostFuelRateSurvival}
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= GCTechnologyTablePath,
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_LASER"},
							["PRECEDING_KEY_WORDS"] = {"StatBonuses","StatsTypes"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Bonus", MechSuitLaserDamange}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_GUN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Bonus", MechSuitCanonDamange}
							}
						}
					}
				}
			}
		}
	}
}

local vehicleChanges = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i = 1, #ExoCraftsNewValues do
	if (ExoCraftsNewValues[i]["ID"] == "SUBMARINE") then
		vehicleChanges[#vehicleChanges + 1] = {
			["SPECIAL_KEY_WORDS"] = {"Name", ExoCraftsNewValues[i]["ID"]},
			["VALUE_CHANGE_TABLE"] = {
				{"UnderwaterEngineMaxSpeed", ExoCraftsNewValues[i]["Speed"]},
				{"UnderwaterEnginePower", NautilonUnderwaterEnginePower},
				{"UnderwaterEngineFalloff", NautilonUnderwaterEngineFalloff},
				{"VehicleBoostForce", ExoCraftsNewValues[i]["BoostForce"]},
				{"VehicleBoostMaxSpeed", ExoCraftsNewValues[i]["BoostMaxSpeed"]},
				{"VehicleBoostExtraMaxSpeedAir", ExoCraftsNewValues[i]["BoostExtraMaxSpeedAir"]},
				{"VehicleBoostSpeedFalloff", ExoCraftsNewValues[i]["VehicleBoostSpeedFalloff"]},
				{"VehicleBoostTime", ExoCraftsNewValues[i]["VehicleBoostTime"]},
				{"VehicleBoostRechargeTime", ExoCraftsNewValues[i]["VehicleBoostRechargeTime"]}
			}
		}
	else
		vehicleChanges[#vehicleChanges + 1] = {
			["SPECIAL_KEY_WORDS"] = {"Name", ExoCraftsNewValues[i]["ID"]},
			["VALUE_CHANGE_TABLE"] = {
				{"TopSpeedForward", ExoCraftsNewValues[i]["Speed"]},
				{"TopSpeedReverse", ExoCraftsNewValues[i]["Speed"]},
				{"VehicleBoostForce", ExoCraftsNewValues[i]["BoostForce"]},
				{"VehicleBoostMaxSpeed", ExoCraftsNewValues[i]["BoostMaxSpeed"]},
				{"VehicleBoostExtraMaxSpeedAir", ExoCraftsNewValues[i]["BoostExtraMaxSpeedAir"]},
				{"VehicleBoostSpeedFalloff", ExoCraftsNewValues[i]["VehicleBoostSpeedFalloff"]},
				{"VehicleBoostTime", ExoCraftsNewValues[i]["VehicleBoostTime"]},
				{"VehicleBoostRechargeTime", ExoCraftsNewValues[i]["VehicleBoostRechargeTime"]}
			}
		}
	end
end
