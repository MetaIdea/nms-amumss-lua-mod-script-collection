//=============================================================================
// Alter existing product requirements.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Recipe_Products : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			//FRIG_BOOST_SPD();
			TECH_COMP();
		}

		//...........................................................

		// Test: Fuel Oxidiser - change requirements
		// Replace Quad Servo and Gold w/ Mineral Compressor, Quantum Computer, Gold
		protected void FRIG_BOOST_SPD()
		{
			var mbin = ExtractMbin<GcProductTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
			);
			var product = mbin.Table.Find(PRODUCT => PRODUCT.Id == "FRIG_BOOST_SPD");
			product.Requirements.Clear();  // replace all current requirements
			product.Requirements.AddProduct  ("FRIG_BOOST_MIN", 1);  // Mineral Compressor
			product.Requirements.AddProduct  ("COMPUTER",       2);  // Quantum Computer
			product.Requirements.AddSubstance("ASTEROID2",     50);  // Gold
		}

		//...........................................................

		// Wiring Loom - crafable
		protected void TECH_COMP()
		{
			var mbin = ExtractMbin<GcProductTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
			);
			var tech_comp = mbin.Table.Find(PRODUCT => PRODUCT.Id == "TECH_COMP");  // Wiring Loom
			tech_comp.IsCraftable = true;
			tech_comp.Requirements.AddSubstance("ASTEROID1",  2);  // Silver
			tech_comp.Requirements.AddSubstance("ASTEROID2",  2);  // Gold
			tech_comp.Requirements.AddSubstance("LAND2",      4);  // Pure Ferrite
			tech_comp.Requirements.AddSubstance("NANOTUBES", 10);  // Carbon Nanotubes
		}
	}
}

//=============================================================================
