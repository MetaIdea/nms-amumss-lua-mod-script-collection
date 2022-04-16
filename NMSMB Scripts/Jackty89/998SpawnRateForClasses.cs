//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class SpawnRateForClasses : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcInventoryTable();
		}

		//...........................................................

		protected void GcInventoryTable()
		{
			var mbin = ExtractMbin<GcInventoryTable>(
				"METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"
			);
			GcInventoryClassProbabilities(mbin.ClassProbabilityData);
		}

		//...........................................................
		
		protected void GcInventoryClassProbabilities( GcInventoryClassProbabilities [] DATA )
		{
			var Cclass = GcInventoryClass.InventoryClassEnum.C;
            var Bclass = GcInventoryClass.InventoryClassEnum.B;
            var Aclass = GcInventoryClass.InventoryClassEnum.A;
            var Sclass = GcInventoryClass.InventoryClassEnum.S;
			
			var wealth_class = DATA[(int)GcWealthClass.WealthClassEnum.Average];
			wealth_class.ClassProbabilities[(int)Cclass] = 40;  // 49
			wealth_class.ClassProbabilities[(int)Bclass] = 35;  // 35
			wealth_class.ClassProbabilities[(int)Aclass] = 23;  // 15
			wealth_class.ClassProbabilities[(int)Sclass] = 2;  //  1

			wealth_class = DATA[(int)GcWealthClass.WealthClassEnum.Wealthy];
			wealth_class.ClassProbabilities[(int)Cclass] = 30;  // 30
			wealth_class.ClassProbabilities[(int)Bclass] = 37;  // 40
			wealth_class.ClassProbabilities[(int)Aclass] = 28;  // 28
			wealth_class.ClassProbabilities[(int)Sclass] = 5;  //  2
		}
	}
}

//=============================================================================
