//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class UniqueSpaceShips : cmk.NMS.ModScript
	{

        protected class ShipMultiplierData
        {
            public GcSpaceshipClasses.ShipClassEnum ShipType;
            public string StatId;
            public float CclassMultiplier;
            public float BclassMultiplier;
            public float AclassMultiplier;
            public float SclassMultiplier;
        }
        protected List<ShipMultiplierData> ShipData = new List<ShipMultiplierData>();

        protected override void Execute()
		{
			float ReduceLow = 0.9f;
            float ReduceMedium = 0.8f;
            float ReduceHigh = 0.7f;

            float NormalValue = 1f;
            float LowValue = 1.1f;
            float LowMedValue = 1.25f;
            float MedVale = 1.5f;
            float MedHighValue = 1.75f;
            float HighValue = 2f;
            float HighExtrValue = 2.5f;
            float ExtremeValue = 3f;

            float FreighterC = 5f;
            float FreighterB = 6f;
            float FreighterA = 7f;
            float FreighterS = 8f;

            var Freighter = GcSpaceshipClasses.ShipClassEnum.Freighter;
            var Dropship = GcSpaceshipClasses.ShipClassEnum.Dropship;
            var Shuttle = GcSpaceshipClasses.ShipClassEnum.Shuttle;
            var Fighter = GcSpaceshipClasses.ShipClassEnum.Fighter;
            var Royal = GcSpaceshipClasses.ShipClassEnum.Royal;
            var Scientific = GcSpaceshipClasses.ShipClassEnum.Scientific;
            var Alien = GcSpaceshipClasses.ShipClassEnum.Alien;

            string HyperDrive = "SHIP_HYPERDRIVE";
            string Damage = "SHIP_DAMAGE";
            string Shield = "SHIP_SHIELD";
            string FreighterHyper = "FREI_HYPERDRIVE";

            //Hypderdrive MP's added
            ShipData.Add(new ShipMultiplierData { 
                ShipType = Scientific, 
                StatId = HyperDrive, 
                CclassMultiplier = MedHighValue, 
                BclassMultiplier = HighValue, 
                AclassMultiplier = HighExtrValue, 
                SclassMultiplier = ExtremeValue 
            });
            ShipData.Add(new ShipMultiplierData { 
                ShipType = Dropship, 
                StatId = HyperDrive, 
                CclassMultiplier = ReduceHigh, 
                BclassMultiplier = ReduceMedium, 
                AclassMultiplier = ReduceLow, 
                SclassMultiplier = NormalValue 
            });
            ShipData.Add(new ShipMultiplierData { 
                ShipType = Fighter, 
                StatId = HyperDrive, 
                CclassMultiplier = MedVale, 
                BclassMultiplier = MedHighValue, 
                AclassMultiplier = HighValue, 
                SclassMultiplier = HighExtrValue 
            });
            ShipData.Add(new ShipMultiplierData { 
                ShipType = Shuttle, 
                StatId = HyperDrive, 
                CclassMultiplier = NormalValue,
                BclassMultiplier = LowValue, 
                AclassMultiplier = LowMedValue, 
                SclassMultiplier = MedVale 
            });
            ShipData.Add(new ShipMultiplierData { 
                ShipType = Royal, 
                StatId = HyperDrive, 
                CclassMultiplier = LowMedValue,
                BclassMultiplier = MedVale, 
                AclassMultiplier = MedHighValue, 
                SclassMultiplier = HighValue 
            });
            ShipData.Add(new ShipMultiplierData { 
                ShipType = Alien, 
                StatId = HyperDrive, 
                CclassMultiplier = 0f,
                BclassMultiplier = 0f, 
                AclassMultiplier = 0f, 
                SclassMultiplier = HighValue 
            });
            //Damage MP's Added
            ShipData.Add(new ShipMultiplierData
            {
                ShipType = Scientific,
                StatId = Damage,
                CclassMultiplier = LowValue,
                BclassMultiplier = LowMedValue,
                AclassMultiplier = MedVale,
                SclassMultiplier = MedHighValue
            });
            ShipData.Add(new ShipMultiplierData
            {
                ShipType = Dropship,
                StatId = Damage,
                CclassMultiplier = MedVale,
                BclassMultiplier = MedHighValue,
                AclassMultiplier = HighValue,
                SclassMultiplier = HighExtrValue
            });
            ShipData.Add(new ShipMultiplierData
            {
                ShipType = Fighter,
                StatId = Damage,
                CclassMultiplier = MedHighValue,
                BclassMultiplier = HighValue,
                AclassMultiplier = HighExtrValue,
                SclassMultiplier = ExtremeValue
            });
            ShipData.Add(new ShipMultiplierData
            {
                ShipType = Shuttle,
                StatId = Damage,
                CclassMultiplier = NormalValue,
                BclassMultiplier = LowValue,
                AclassMultiplier = LowMedValue,
                SclassMultiplier = MedVale
            });
            ShipData.Add(new ShipMultiplierData
            {
                ShipType = Royal,
                StatId = Damage,
                CclassMultiplier = LowMedValue,
                BclassMultiplier = MedVale,
                AclassMultiplier = MedHighValue,
                SclassMultiplier = HighValue
            });
            ShipData.Add(new ShipMultiplierData
            {
                ShipType = Alien,
                StatId = Damage,
                CclassMultiplier = 0f,
                BclassMultiplier = 0f,
                AclassMultiplier = 0f,
                SclassMultiplier = HighValue
            });
            //Shield MP's Added
            ShipData.Add(new ShipMultiplierData
            {
                ShipType = Scientific,
                StatId = Shield,
                CclassMultiplier = ReduceHigh,
                BclassMultiplier = ReduceMedium,
                AclassMultiplier = ReduceLow,
                SclassMultiplier = NormalValue
            });
            ShipData.Add(new ShipMultiplierData
            {
                ShipType = Dropship,
                StatId = Shield,
                CclassMultiplier = MedHighValue,
                BclassMultiplier = HighValue,
                AclassMultiplier = HighExtrValue,
                SclassMultiplier = ExtremeValue
            });
            ShipData.Add(new ShipMultiplierData
            {
                ShipType = Fighter,
                StatId = Shield,
                CclassMultiplier = LowValue,
                BclassMultiplier = LowMedValue,
                AclassMultiplier = MedVale,
                SclassMultiplier = MedHighValue
            });
            ShipData.Add(new ShipMultiplierData
            {
                ShipType = Shuttle,
                StatId = Shield,
                CclassMultiplier = NormalValue,
                BclassMultiplier = LowValue,
                AclassMultiplier = LowMedValue,
                SclassMultiplier = MedVale
            });
            ShipData.Add(new ShipMultiplierData
            {
                ShipType = Royal,
                StatId = Shield,
                CclassMultiplier = LowMedValue,
                BclassMultiplier = MedVale,
                AclassMultiplier = MedHighValue,
                SclassMultiplier = HighValue
            });
            ShipData.Add(new ShipMultiplierData
            {
                ShipType = Alien,
                StatId = Shield,
                CclassMultiplier = 0f,
                BclassMultiplier = 0f,
                AclassMultiplier = 0f,
                SclassMultiplier = HighValue
            });
            //Frieghter HD MP Added
            ShipData.Add(new ShipMultiplierData
            {
                ShipType = Freighter,
                StatId = FreighterHyper,
                CclassMultiplier = FreighterC,
                BclassMultiplier = FreighterB,
                AclassMultiplier = FreighterA,
                SclassMultiplier = FreighterS
            });
            
            SpaceShipEdits();
        }

        protected void SpaceShipEdits()
		{
            var mbin = ExtractMbin<GcInventoryTable>(
                "METADATA\\REALITY\\TABLES\\INVENTORYTABLE.MBIN"
            );
            var Cclass = GcInventoryClass.InventoryClassEnum.C;
            var Bclass = GcInventoryClass.InventoryClassEnum.B;
            var Aclass = GcInventoryClass.InventoryClassEnum.A;
            var Sclass = GcInventoryClass.InventoryClassEnum.S;

            foreach (ShipMultiplierData shipData in ShipData)
            {
                GcSpaceshipClasses.ShipClassEnum shipType = shipData.ShipType;
                string statId = shipData.StatId;
                float cClassMultiplier = shipData.CclassMultiplier;
                float bClassMultiplier = shipData.BclassMultiplier;
                float aClassMultiplier = shipData.AclassMultiplier;
                float sClassMultiplier = shipData.SclassMultiplier;

                if (shipType == GcSpaceshipClasses.ShipClassEnum.Alien)
                {
                    var sStat = mbin.ShipBaseStatsData[(int)shipType].BaseStatsPerClass[(int)Sclass].BaseStats.Find(STAT => STAT.BaseStatID == statId);
                    sStat.Min *= sClassMultiplier;
                    sStat.Max *= sClassMultiplier;

                }
                else
                {
                    var cStat = mbin.ShipBaseStatsData[(int)shipType].BaseStatsPerClass[(int)Cclass].BaseStats.Find(STAT => STAT.BaseStatID == statId);
                    cStat.Min *= cClassMultiplier;
                    cStat.Max *= cClassMultiplier;

                    var bStat = mbin.ShipBaseStatsData[(int)shipType].BaseStatsPerClass[(int)Bclass].BaseStats.Find(STAT => STAT.BaseStatID == statId);
                    bStat.Min *= bClassMultiplier;
                    bStat.Max *= bClassMultiplier;

                    var aStat = mbin.ShipBaseStatsData[(int)shipType].BaseStatsPerClass[(int)Aclass].BaseStats.Find(STAT => STAT.BaseStatID == statId);
                    aStat.Min *= aClassMultiplier;
                    aStat.Max *= aClassMultiplier;

                    var sStat = mbin.ShipBaseStatsData[(int)shipType].BaseStatsPerClass[(int)Sclass].BaseStats.Find(STAT => STAT.BaseStatID == statId);
                    sStat.Min *= sClassMultiplier;
                    sStat.Max *= sClassMultiplier;
                }
            }
        }
	}
}

//=============================================================================
