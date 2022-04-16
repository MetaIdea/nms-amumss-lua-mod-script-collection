//=============================================================================
// Adjust rates and storage for power related building items.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using DependsOnHotspotsEnum = GcBaseLinkGridData.DependsOnHotspotsEnum;

	//=========================================================================

	public class Base_Power : cmk.NMS.ModScript
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
				"METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN"
			};
			foreach( var path in paths ) {
				var mbin = ExtractMbin<GcBaseBuildingTable>(path);			
			
				// Batteries hold more and have an ambient trickle-charge ability
				var item = mbin.Objects.Find(OBJECT => OBJECT.ID == "U_BATTERY_S");
				item.LinkGridData.Rate    = 10;      // 0
				item.LinkGridData.Storage = 200000;  // 45,000
	
				// Bio-Generator provides more power, has little storage (use batteries)
				item = mbin.Objects.Find(OBJECT => OBJECT.ID == "U_BIOGENERATOR");
				foreach( var connection in item.LinkGridData.DependentConnections ) {
					connection.DependentRate = 500;  // 50
				}
				item.LinkGridData.Storage = 100;  // 3600
	
				// Solar Panel provides more power, have some backup storage for brown-outs
				item = mbin.Objects.Find(OBJECT => OBJECT.ID == "U_SOLAR_S");
				item.LinkGridData.Rate    =  200;  // 50
				item.LinkGridData.Storage = 1000;  // 0
	
				// EM Generator has > S-Class power, can be placed anywhere, has some backup storage
				// See: METADATA/SIMULATION/SCANNING/REGIONHOTSPOTSTABLE.MBIN for class rates
				item = mbin.Objects.Find(OBJECT => OBJECT.ID == "U_GENERATOR_S");
				item.LinkGridData.DependsOnHotspots = DependsOnHotspotsEnum.None;
				item.LinkGridData.Rate    =  500;  // 1
				item.LinkGridData.Storage = 2000;  // 0
			}
		}
	}
}

//=============================================================================
