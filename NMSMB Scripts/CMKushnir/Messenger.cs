//=============================================================================
// Reduce visual clutter due to messenger beacons left by other users.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Messenger : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			TkAttachmentData();
		}

		//...........................................................

		protected void TkAttachmentData()
		{
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/MESSENGER/ENTITIES/MESSENGER.ENTITY.MBIN"
			);

			var scannable  = mbin.Components.FindFirst<GcScannableComponentData>();
			if( scannable == null ) {
				scannable  = new GcScannableComponentData{
					ScanName      = "SCAN_WAYPOINT",
					ScanTime      = 30,
					UseModelNode  = true,
					Icon          = new(){ ScanIconType = GcScannerIconTypes.ScanIconTypeEnum.SignalBooster },
					ScannableType = GcScannableComponentData.ScannableTypeEnum.Binoculars,
					CompassRangeMultiplier = 1,  // 0 - 1, gives both compass icon and range
					DisableIfInBase        = true,
					DisableIfBuildingPart  = true,
				};
				mbin.Components.Add(scannable);
			}		

			scannable.ScanRange                  = 300;  // max is based on a lod? range ~2,100u
			scannable.AlwaysShowRange            = 300;
			scannable.MinDisplayDistanceOverride = 200;  // hide when get this close

			scannable.CanTagIcon        = true;
			scannable.ClearTagOnArrival = true;
		}
	}
}

//=============================================================================
