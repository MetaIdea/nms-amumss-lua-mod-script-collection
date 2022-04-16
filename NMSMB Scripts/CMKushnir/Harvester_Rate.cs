//=============================================================================
// Adjust rates for various harvesters that don't pipe to storage.
// See: Base_Extractor, Base_Power for storage based harvesters.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Harvester_Rate : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			TkAttachmentData();
		}
		
		//...........................................................

		protected void TkAttachmentData()
		{
			var paths = new [] {  // all mbin w/ GcGeneratorUnitComponentData
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/GASHARVESTER/ENTITIES/GASHARVESTER.ENTITY.MBIN",           // Atmosphere Harvester
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/GASHARVESTER/ENTITIES/OXYGENHARVESTER.ENTITY.MBIN",        // Oxygen Harvester
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/HARVESTER/ENTITIES/RESOURCEHARVESTER.ENTITY.MBIN",         // AMU - Autonomous Mining Unit
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/OXYGENHARVESTER180/ENTITIES/OXYGENHARVESTER.ENTITY.MBIN",  // Oxygen Harvester ???
				// Just has GcMaintenanceComponentData, no parent GcGeneratorUnitComponentData:
				//"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/ANTIMATTERHARVESTER/ENTITIES/ANTIMATTERHARVESTER.ENTITY.MBIN"
			};
			foreach( var path in paths ) {
				var mbin = ExtractMbin<TkAttachmentData>(path);
				var data = mbin.Components.FindFirst<GcGeneratorUnitComponentData>();
				data.MaintenanceData.PreInstalledTech[0].AmountEmptyTimePeriod =  300;
				data.MaintenanceData.PreInstalledTech[1].AmountEmptyTimePeriod = -300;  // 5 min to get
				data.MaintenanceData.PreInstalledTech[1].MaxCapactiy           = 1000;  // a stack of 1,000
			}
		}
	}
}

//=============================================================================
