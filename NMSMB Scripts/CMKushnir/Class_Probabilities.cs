//=============================================================================
// Adjust spawning probabilities for C, B, A, S class items.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using WealthClassEnum    = GcWealthClass.WealthClassEnum;
	using InventoryClassEnum = GcInventoryClass.InventoryClassEnum;
	
	//=========================================================================
	
	public class Class_Probabilities : cmk.NMS.ModScript
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
			//GcInventoryClassProbabilitiesS(mbin.ClassProbabilityData);  // testing
		}

		//...........................................................
		
		protected void GcInventoryClassProbabilities( GcInventoryClassProbabilities [] DATA )
		{
			var wealth_class = DATA[(int)WealthClassEnum.Poor];
			wealth_class.ClassProbabilities[(int)InventoryClassEnum.C] = 50;  // 60
			wealth_class.ClassProbabilities[(int)InventoryClassEnum.B] = 30;  // 30
			wealth_class.ClassProbabilities[(int)InventoryClassEnum.A] = 15;  // 10
			wealth_class.ClassProbabilities[(int)InventoryClassEnum.S] =  5;  //  0

			wealth_class = DATA[(int)WealthClassEnum.Average];
			wealth_class.ClassProbabilities[(int)InventoryClassEnum.C] = 35;  // 49
			wealth_class.ClassProbabilities[(int)InventoryClassEnum.B] = 35;  // 35
			wealth_class.ClassProbabilities[(int)InventoryClassEnum.A] = 20;  // 15
			wealth_class.ClassProbabilities[(int)InventoryClassEnum.S] = 10;  //  1

			wealth_class = DATA[(int)WealthClassEnum.Wealthy];
			wealth_class.ClassProbabilities[(int)InventoryClassEnum.C] = 20;  // 30
			wealth_class.ClassProbabilities[(int)InventoryClassEnum.B] = 40;  // 40
			wealth_class.ClassProbabilities[(int)InventoryClassEnum.A] = 25;  // 28
			wealth_class.ClassProbabilities[(int)InventoryClassEnum.S] = 15;  //  2
		}

		//...........................................................

		// s-class for everything
		protected void GcInventoryClassProbabilitiesS( GcInventoryClassProbabilities [] DATA )
		{
			foreach( var wealth_class in DATA ) {
				for( var i = 0; i < wealth_class.ClassProbabilities.Length; ++i ) {
					wealth_class.ClassProbabilities[i] = 0;
				}
				wealth_class.ClassProbabilities[(int)InventoryClassEnum.S] = 100;
			}
		}
	}
}

//=============================================================================
