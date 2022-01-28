GameVersion = "3_71"
ModName = "UniqueExoCrafts"
Description = "A small mod that make exocraft faster but also stand out from eachother"

RoamerSpeed = "40"
NomadSpeed = "50"
PilgrimSpeed = "60"
ColossusSpeed = "25"
NautilonSpeed = "50"
NautilonUnderwaterEnginePower = "10" -- Acceleration speed
NautilonUnderwaterEngineFalloff = "1" -- 1 = 100% so no fall of , 0.9 =90% means speed wil be 10% slower  => 45u

-- BIKE/NOMAD
NomadVehicleBoostForce = "800"-- 400
NomadVehicleBoostMaxSpeed = "60"-- 32
NomadVehicleBoostExtraMaxSpeedAir = "80" -- 40
NomadVehicleBoostSpeedFalloff = "2.5" -- 7.5
NomadVehicleBoostTime = "2.5" -- 0.5
NomadVehicleBoostRechargeTime = "3" -- 2

--MED_BUGGY/ROAMER
RoamerVehicleBoostForce = "700" --300
RoamerVehicleBoostMaxSpeed = "50" --30
RoamerVehicleBoostExtraMaxSpeedAir = "70"--40
RoamerVehicleBoostSpeedFalloff = "5" --10
RoamerVehicleBoostTime = "3.5" --1.5
RoamerVehicleBoostRechargeTime = "4" --3

--WHEELEDBIKE/PILGRIM
PilgrimVehicleBoostForce = "900" --600
PilgrimVehicleBoostMaxSpeed = "70" --35
PilgrimVehicleBoostExtraMaxSpeedAir = "90" --40
PilgrimVehicleBoostSpeedFalloff = "5" --10
PilgrimVehicleBoostTime = "2" --0.6
PilgrimVehicleBoostRechargeTime = "2.5" --1.5

--TRUCK/COLOSSUUS
ColossusVehicleBoostForce = "550" --220
ColossusVehicleBoostMaxSpeed = "35" --30
ColossusVehicleBoostExtraMaxSpeedAir = "55" --40
ColossusVehicleBoostSpeedFalloff = "2.5" --5
ColossusVehicleBoostTime = "2.5" --1.25
ColossusVehicleBoostRechargeTime = "3" --5.5

--SUBMARINE/NATILON
NautilonVehicleBoostForce = "2250" --900
NautilonVehicleBoostMaxSpeed = "50"--25
NautilonVehicleBoostExtraMaxSpeedAir = "50"--10
NautilonVehicleBoostSpeedFalloff = "2.5" --7.5
NautilonVehicleBoostTime = "5" --2.5
NautilonVehicleBoostRechargeTime = "5" --2.5

--MECH
MechVehicleBoostForce = "2250" --900
MechVehicleBoostMaxSpeed = "50"--25
MechVehicleBoostExtraMaxSpeedAir = "50"--10
MechVehicleBoostSpeedFalloff = "2.5" --7.5
MechVehicleBoostTime = "5" --2.5
MechVehicleBoostRechargeTime = "5" --2.5

MechSuitWalkingSpeed = "4"
MechSuitJPForce ="100"
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


-- HOVBERCraft is an unreleased vehcile this is NOT the Nomad
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]			= Description,   
["MOD_AUTHOR"]				= "Jackty89",
["NMS_VERSION"]				= GameVersion,
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_LASER"},
							["PRECEDING_KEY_WORDS"] = {"StatBonuses","StatsTypes"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--LINE 18848
								{"Bonus", MechSuitLaserDamange}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_GUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--Line 19093
								{"Bonus", MechSuitCanonDamange}
							}
						}
					}

				},                
				{ 
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
                        {
							["VALUE_CHANGE_TABLE"] 	= 
							{
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
						},
                        {
							["SPECIAL_KEY_WORDS"] = {"Name","MECH"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward", MechSuitWalkingSpeed}, 	-- Original "2"
								{"VehicleBoostForce", MechVehicleBoostForce},
								{"VehicleBoostMaxSpeed", MechVehicleBoostMaxSpeed},
								{"VehicleBoostExtraMaxSpeedAir", MechVehicleBoostExtraMaxSpeedAir},
								{"VehicleBoostSpeedFalloff", MechVehicleBoostSpeedFalloff},
								{"VehicleBoostTime", MechVehicleBoostTime},
								{"VehicleBoostRechargeTime", MechVehicleBoostRechargeTime}

							}
						},
                        {
							["SPECIAL_KEY_WORDS"] = {"Name","BIKE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward", NomadSpeed}, 	-- Original "18"
                                {"TopSpeedReverse", NomadSpeed},
								{"VehicleBoostForce", NomadVehicleBoostForce},
								{"VehicleBoostMaxSpeed", NomadVehicleBoostMaxSpeed},
								{"VehicleBoostExtraMaxSpeedAir", NomadVehicleBoostExtraMaxSpeedAir},
								{"VehicleBoostSpeedFalloff", NomadVehicleBoostSpeedFalloff},
								{"VehicleBoostTime", NomadVehicleBoostTime},
								{"VehicleBoostRechargeTime", NomadVehicleBoostRechargeTime}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","WHEELEDBIKE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward", PilgrimSpeed}, 	-- Original "18"
                                {"TopSpeedReverse", PilgrimSpeed},
								{"VehicleBoostForce", PilgrimVehicleBoostForce},
								{"VehicleBoostMaxSpeed", PilgrimVehicleBoostMaxSpeed},
								{"VehicleBoostExtraMaxSpeedAir", PilgrimVehicleBoostExtraMaxSpeedAir},
								{"VehicleBoostSpeedFalloff", PilgrimVehicleBoostSpeedFalloff},
								{"VehicleBoostTime", PilgrimVehicleBoostTime},
								{"VehicleBoostRechargeTime", PilgrimVehicleBoostRechargeTime}
							}
						},
                        {

                            ["SPECIAL_KEY_WORDS"] = {"Name","MED_BUGGY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward", RoamerSpeed}, 	-- Original "16"
                                {"TopSpeedReverse", RoamerSpeed},
								{"VehicleBoostForce", RoamerVehicleBoostForce},
								{"VehicleBoostMaxSpeed", RoamerVehicleBoostMaxSpeed},
								{"VehicleBoostExtraMaxSpeedAir", RoamerVehicleBoostExtraMaxSpeedAir},
								{"VehicleBoostSpeedFalloff", RoamerVehicleBoostSpeedFalloff},
								{"VehicleBoostTime", RoamerVehicleBoostTime},
								{"VehicleBoostRechargeTime", RoamerVehicleBoostRechargeTime}
							}
						},
                        {

                            ["SPECIAL_KEY_WORDS"] = {"Name","TRUCK"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward", ColossusSpeed}, 	-- Original "12"
                                {"TopSpeedReverse", ColossusSpeed},
								{"VehicleBoostForce", ColossusVehicleBoostForce},
								{"VehicleBoostMaxSpeed", ColossusVehicleBoostMaxSpeed},
								{"VehicleBoostExtraMaxSpeedAir", ColossusVehicleBoostExtraMaxSpeedAir},
								{"VehicleBoostSpeedFalloff", ColossusVehicleBoostSpeedFalloff},
								{"VehicleBoostTime", ColossusVehicleBoostTime},
								{"VehicleBoostRechargeTime", ColossusVehicleBoostRechargeTime}
							}
						},
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","SUBMARINE" },
						    ["VALUE_CHANGE_TABLE"] 	= 
							{
								{"UnderwaterEngineMaxSpeed", NautilonSpeed}, 	-- Original "15"
								{"UnderwaterEnginePower", NautilonUnderwaterEnginePower},
								{"UnderwaterEngineFalloff",  NautilonUnderwaterEngineFalloff},
								{"VehicleBoostForce", NautilonVehicleBoostForce},
								{"VehicleBoostMaxSpeed", NautilonVehicleBoostMaxSpeed},
								{"VehicleBoostExtraMaxSpeedAir", NautilonVehicleBoostExtraMaxSpeedAir},
								{"VehicleBoostSpeedFalloff", NautilonVehicleBoostSpeedFalloff},
								{"VehicleBoostTime", NautilonVehicleBoostTime},
								{"VehicleBoostRechargeTime", NautilonVehicleBoostRechargeTime}
							}
                        }
                    }
				}
            }
        }
    }
}