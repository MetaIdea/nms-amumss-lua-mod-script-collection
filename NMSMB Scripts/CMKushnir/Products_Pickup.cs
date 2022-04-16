//=============================================================================
// Allow products to be picked up and placed in player inventory.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Products_Pickup : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcBaseBuildingTable();
		}

		//...........................................................
		
		protected void GcBaseBuildingTable()
		{
			var paths = new [] {
				"METADATA/REALITY/TABLES/BASEBUILDINGTABLE.MBIN",
				"METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
			};
			var products = new [] {
				"BUILDHARVESTER",  // Autonomous Mining Unit
			};
			foreach( var path in paths ) {
				var mbin = ExtractMbin<GcBaseBuildingTable>(path);
				foreach( var product in products ) {
					var entry = mbin.Objects.Find(ENTRY => ENTRY.ID == product);
					entry.CanPickUp = true;
				}
			}
		}
	}
}

//=============================================================================
