//=============================================================================
// Seasonal expedition initial state seems to be a combo of:
// - METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN, including it's GcSeasonalGameModeData data
// - METADATA/GAMESTATE/DEFAULTSEASONALDATA.MBIN
// - <user>\AppData\Roaming\HelloGames\NMS\st_...\cache\SEASON_DATA_CACHE.JSON
// SEASON_DATA_CACHE.JSON is outside scope of current script and should be edited manually.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Seasonal : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcSeasonalGameModeData();
			GcDefaultSaveData();
		}

		//...........................................................
		
		protected void GcSeasonalGameModeData()
		{		
			var nms_class = Game.Mbinc.FindClass("GcSeasonalGameModeData");		
			foreach( var path in nms_class.PakItems ) {
				var mbin = ExtractMbin<GcSeasonalGameModeData>(path);
				GcSeasonalGameModeData_Update(mbin);
			}
		}

		//...........................................................

		protected void GcDefaultSaveData()
		{
			var mbin = ExtractMbin<GcDefaultSaveData>(
				"METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN"
			);
			GcSeasonalGameModeData_Update(mbin.State.SeasonData);
		}

		//...........................................................

		protected void GcSeasonalGameModeData_Update( GcSeasonalGameModeData SEASONAL )
		{	
			SEASONAL.StartingSuitSlots      = 48;
			SEASONAL.StartingSuitTechSlots  = 48;
			SEASONAL.StartingSuitCargoSlots = 48;
			SEASONAL.WeaponInventoryLayout.Slots = 48;
			SEASONAL.ShipInventoryLayout.Slots     = 48;
			SEASONAL.ShipTechInventoryLayout.Slots = 48;
			SEASONAL.ShipType.ShipClass = GcSpaceshipClasses.ShipClassEnum.Royal;
		}
	}
}

//=============================================================================
