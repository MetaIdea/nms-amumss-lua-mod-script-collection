//=============================================================================
// Search all entity mbin's for specific criteria.
//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class SearchEntities : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{
			var TkAttachmentDataClass = Game.Mbinc.FindClass("TkAttachmentData");
			
			foreach( var path in TkAttachmentDataClass.PakItems ) {
				var mbin = ExtractMbin<TkAttachmentData>(path, true, false);
				// edit search criteria as desired:
				var comp = mbin?.Components.FindFirst<GcMaintenanceComponentData>();
				var elem = comp?.PreInstalledTech.Find(ELEM =>
					ELEM.AmountEmptyTimePeriod != 0 &&
					ELEM.Type.InventoryType != GcInventoryType.InventoryTypeEnum.Technology
				);
				if( elem != null ) Log.AddInformation($"{path}");
			}
			
			Log.AddSuccess("Finished");
		}
	}
}

//=============================================================================
