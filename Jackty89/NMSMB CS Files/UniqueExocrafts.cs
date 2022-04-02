//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
    public class UniqueExocrafts : cmk.NMS.ModScript
    {
        protected class ExocraftData
        {
            public string Name;
            public float Speed;
            public float BoostForce;
            public float BoostMaxSpeed;
            public float BoostExtraMaxSpeedAir;
            public float VehicleBoostSpeedFalloff;
            public float VehicleBoostTime;
            public float VehicleBoostRechargeTime;

        }
        protected ExocraftData[] ExocraftDataArray = new[]
        {
            new ExocraftData {
                Name = "BIKE", //Nomad
				Speed = 50f,
                BoostForce = 800f,
                BoostMaxSpeed = 60f,
                BoostExtraMaxSpeedAir = 80f,
                VehicleBoostSpeedFalloff = 2.5f,
                VehicleBoostTime = 2.5f,
                VehicleBoostRechargeTime = 3f
            },
            new ExocraftData {
                Name = "MED_BUGGY", //ROAMER
				Speed = 40f,
                BoostForce = 700f,
                BoostMaxSpeed = 50f,
                BoostExtraMaxSpeedAir = 70f,
                VehicleBoostSpeedFalloff = 5f,
                VehicleBoostTime = 3.5f,
                VehicleBoostRechargeTime = 4f
            },
            new ExocraftData {
                Name = "WHEELEDBIKE", //PILGRIM
				Speed = 60f,
                BoostForce = 900f,
                BoostMaxSpeed = 70f,
                BoostExtraMaxSpeedAir = 90f,
                VehicleBoostSpeedFalloff = 5f,
                VehicleBoostTime = 2f,
                VehicleBoostRechargeTime = 2.5f
            },
            new ExocraftData {
                Name = "TRUCK", //COLOSSUUS
				Speed = 25f,
                BoostForce = 550f,
                BoostMaxSpeed = 35f,
                BoostExtraMaxSpeedAir = 55f,
                VehicleBoostSpeedFalloff = 2.5f,
                VehicleBoostTime = 2.5f,
                VehicleBoostRechargeTime = 3f
            },
            new ExocraftData {
                Name = "SUBMARINE", //NATILON
				Speed = 50f,
                BoostForce = 2250f,
                BoostMaxSpeed = 50f,
                BoostExtraMaxSpeedAir = 50f,
                VehicleBoostSpeedFalloff = 2.5f,
                VehicleBoostTime = 5f,
                VehicleBoostRechargeTime = 5f
            },
            new ExocraftData {
                Name = "MECH",
                Speed = 4f,
                BoostForce = 2250f,
                BoostMaxSpeed = 50f,
                BoostExtraMaxSpeedAir = 50f,
                VehicleBoostSpeedFalloff = 2.5f,
                VehicleBoostTime = 5f,
                VehicleBoostRechargeTime = 5f
            }
        };

        protected override void Execute()
        {
            

            ImproveExoCrafts();
            //ChangeMechTechDamage();
        }

        //...........................................................

        protected void ImproveExoCrafts()
        {
            var Mbin = ExtractMbin<GcVehicleGlobals>(
                "GCVEHICLEGLOBALS.GLOBAL.MBIN"
            );

            float MechSuitJPForce = 100f;
            float MechSuitJPMaxSpeed = 50f;
            float MechSuitJPMaxUpSpeed = 80f;
            float MechSuitJPDrainRate = 0.40f;
            float MechSuitJPFillRate = 0.60f;

            float VehicleFuelRate = 0.3f;
            float VehicleFuelRateSurvival = 0.5f;
            float VehicleBoostFuelRate = 1f;
            float VehicleBoostFuelRateSurvival = 2f;

            Mbin.MechJetpackForce = MechSuitJPForce;
            Mbin.MechJetpackMaxSpeed = MechSuitJPMaxSpeed;
            Mbin.MechJetpackMaxUpSpeed = MechSuitJPMaxUpSpeed;
            Mbin.MechJetpackDrainRate = MechSuitJPDrainRate;
            Mbin.MechJetpackFillRate = MechSuitJPFillRate;

            Mbin.VehicleFuelRate = VehicleFuelRate;
            Mbin.VehicleFuelRateSurvival = VehicleFuelRateSurvival;
            Mbin.VehicleBoostFuelRate = VehicleBoostFuelRate;
            Mbin.VehicleBoostFuelRate = VehicleBoostFuelRateSurvival;

            foreach (var exoCraftData in ExocraftDataArray)
            {
                var exocraft = Mbin.VehicleDataTable.Find(EXOCRAFT => EXOCRAFT.Name == exoCraftData.Name);
                if (exoCraftData.Name == "SUBMARINE")
                {
                    float NautilonUnderwaterEnginePower = 10f; // Acceleration speed
                    float NautilonUnderwaterEngineFalloff = 1f; // 1 = 100 % so no fall of , 0.9 = 90 % means speed wil be 10 % slower  => 45u

                    exocraft.UnderwaterEngineMaxSpeed = exoCraftData.Speed;
                    exocraft.UnderwaterEnginePower = NautilonUnderwaterEnginePower;
                    exocraft.UnderwaterEngineFalloff = NautilonUnderwaterEngineFalloff;
                }
                else
                {
                    exocraft.TopSpeedForward = exoCraftData.Speed;
                    exocraft.TopSpeedReverse = exoCraftData.Speed;
                }

                exocraft.VehicleBoostForce = exoCraftData.BoostForce;
                exocraft.VehicleBoostMaxSpeed = exoCraftData.BoostMaxSpeed;
                exocraft.VehicleBoostExtraMaxSpeedAir = exoCraftData.BoostExtraMaxSpeedAir;
                exocraft.VehicleBoostSpeedFalloff = exoCraftData.VehicleBoostSpeedFalloff;
                exocraft.VehicleBoostTime = exoCraftData.VehicleBoostTime;
                exocraft.VehicleBoostRechargeTime = exoCraftData.VehicleBoostRechargeTime;
            }
        }
        protected void ChangeMechTechDamage()
        {
            float MechSuitLaserDamange = 350f;
            float MechSuitCanonDamange = 2500f;
            var Mbin = ExtractMbin<GcTechnologyTable>(
                "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
            );
            var Laser = Mbin.Table.Find(TECH => TECH.ID == "MECH_LASER");
            Laser.StatBonuses.Find(BONUS => BONUS.Stat.StatsType == GcStatsTypes.StatsTypeEnum.Vehicle_LaserDamage).Bonus = MechSuitLaserDamange;
            var Cannon = Mbin.Table.Find(TECH => TECH.ID == "MECH_GUN");
            Cannon.StatBonuses.Find(BONUS => BONUS.Stat.StatsType == GcStatsTypes.StatsTypeEnum.Vehicle_GunDamage).Bonus = MechSuitCanonDamange;


        }
    }
}

//=============================================================================
