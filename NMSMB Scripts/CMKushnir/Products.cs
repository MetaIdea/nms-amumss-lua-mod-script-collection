//=============================================================================

using System.Collections.Generic;

using nms = libMBIN.NMS;
using libMBIN.NMS.Globals;
using libMBIN.NMS.GameComponents;
using libMBIN.NMS.Toolkit;

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Products : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			//GcProductTable();
		}

		//...........................................................

		// Test: change requirements to build a Fuel Oxidiser,
		// Replace Quad Servo and Gold w/ Mineral Compressor, Quantum Computer, Gold
		protected void GcProductTable()
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
	}

	//=========================================================================
	// Extension methods:
	//=========================================================================
	
	public static partial class x
	{
		public static void AddSubstance( this List<GcTechnologyRequirement> LIST, string ID, int AMOUNT )
		=>	LIST.Add(new GcTechnologyRequirement{
				ID            = ID,
				InventoryType = new GcInventoryType{ InventoryType = GcInventoryType.InventoryTypeEnum.Substance },
				Amount        = AMOUNT
			}
		);

		public static void AddProduct( this List<GcTechnologyRequirement> LIST, string ID, int AMOUNT )
		=>	LIST.Add(new GcTechnologyRequirement{
				ID            = ID,
				InventoryType = new GcInventoryType{ InventoryType = GcInventoryType.InventoryTypeEnum.Product },
				Amount        = AMOUNT
			}
		);
	}	
}

//=============================================================================
