//=============================================================================
// Adjust mineral|gas extractor rates and silo storage.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using DependsOnHotspotsEnum = GcBaseLinkGridData.DependsOnHotspotsEnum;

	//=========================================================================
	
	public class Base_Extractor : cmk.NMS.ModScript
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

				// Mineral Extractors mine faster, hold less (use silos)
				var item = mbin.Objects.Find(OBJECT => OBJECT.ID == "U_EXTRACTOR_S");
				item.LinkGridData.DependsOnHotspots = DependsOnHotspotsEnum.None;
				item.LinkGridData.Rate    = 200;  // 100
				item.LinkGridData.Storage = 200;  // 360,000
	
				// Gas Extractors extract faster, hold less (use silos)
				item = mbin.Objects.Find(OBJECT => OBJECT.ID == "U_GASEXTRACTOR");
				item.LinkGridData.DependsOnHotspots = DependsOnHotspotsEnum.None;
				item.LinkGridData.Rate    = 200;  // 100
				item.LinkGridData.Storage = 200;  // 360,000
	
				// Silos hold more
				item = mbin.Objects.Find(OBJECT => OBJECT.ID == "U_SILO_S");
				item.LinkGridData.Storage = 4000000;  // 1,440,000
			}
		}
	}
}

//=============================================================================
