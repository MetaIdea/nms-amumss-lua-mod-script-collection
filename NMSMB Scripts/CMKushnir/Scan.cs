//=============================================================================
// Adjust general scan related settings.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using BuildingClassEnum    = GcBuildingClassification.BuildingClassEnum;
	using BuildingLocationEnum = GcScanEventData.BuildingLocationEnum;

	//=========================================================================

	public class Scan : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcGameplayGlobals());
			Try(() => GcBuildingGlobals());		
			Try(() => GcScanEventTable());		
		}
	
		//...........................................................

		protected void GcGameplayGlobals()
		{
			var mbin = ExtractMbin<GcGameplayGlobals>(
				"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"
			);
				
			mbin.MissionSurveyMaxGuidanceDistance =   100;  // 1500
			mbin.TerrainResourceScanRange         = 20000;  // 1200
			mbin.SurveyMaxDistance                =   100;  //  400

			// finds distress when use ship scan.
			// works but basically only finds 1 per planet
			// and disables ship scan of planets and stuff.
			//mbin.UseDebugScan             = true;   // false
			//mbin.DebugScanForceBuilding   = true;   // false
			//mbin.DebugScanForceBuildingType.BuildingClass = BuildingClassEnum.DistressSignal;  // None
		}

		//...........................................................

		protected void GcBuildingGlobals()
		{
			var mbin = ExtractMbin<GcBuildingGlobals>(
				"GCBUILDINGGLOBALS.GLOBAL.MBIN"
			);
			mbin.MaxLineLength        = 0;      //   30, vert leader line from object to icon ?
			mbin.UnknownBuildingRange = 20000;  //  600
			mbin.MaxIconRange         = 20000;  // 1200
			mbin.MinShipScanBuildings = 1;      //    0
			mbin.MaxShipScanBuildings = 3;      //    2
		}

		//...........................................................

		protected void GcScanEventTable()
		{
			var GcScanEventTable_class = Game.Mbinc.FindClass("GcScanEventTable");
			foreach( var path in GcScanEventTable_class.PakItems ) {
				var mbin = ExtractMbin<GcScanEventTable>(path);
				foreach( var data in mbin.Events ) {
					if( data.BuildingClass.BuildingClass == BuildingClassEnum.Portal ) {
						continue;
					}
					switch( data.BuildingLocation ) {
						case BuildingLocationEnum.Random:
							data.BuildingLocation = BuildingLocationEnum.Nearest;
							goto case BuildingLocationEnum.Nearest;
						case BuildingLocationEnum.AllNearest:
						case BuildingLocationEnum.Nearest:
							data.ForceWideRandom = false;  // does this do anything ?
							break;
						case BuildingLocationEnum.PlanetSearch:
						case BuildingLocationEnum.PlanetSettlement:
						case BuildingLocationEnum.RandomOnFarPlanet:
						case BuildingLocationEnum.RandomOnNearPlanet:
							data.ForceWideRandom = true;
							break;
					}
				}
			}
		}
	}
}

//=============================================================================
