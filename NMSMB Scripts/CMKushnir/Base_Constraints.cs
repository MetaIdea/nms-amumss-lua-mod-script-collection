//=============================================================================
// Adjust base radius limits and building item constraints.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Base_Constraints : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcDebugOptions());
			Try(() => GcBuildingGlobals());
			Try(() => GcBaseBuildingTable());
		}

		//...........................................................

		protected void GcDebugOptions()
		{
			var mbin = ExtractMbin<GcDebugOptions>(
				"GCDEBUGOPTIONS.GLOBAL.MBIN"
			);
			mbin.DisableBaseBuildingLimits = true;
		}

		//...........................................................

		protected void GcBuildingGlobals()
		{
			var mbin = ExtractMbin<GcBuildingGlobals>(
				"GCBUILDINGGLOBALS.GLOBAL.MBIN"
			);

			mbin.MinRadiusForBases       = 1000;  //  300
			mbin.MaxRadiusForPlanetBases = 2000;  // 1000
			mbin.MaxRadiusForSpaceBases  = 2000;  //  400
			mbin.BaseRadiusExtension     =  250;  //   50

			mbin.BuildingPlacementMaxConnectionLength = 2 * mbin.MaxRadiusForPlanetBases;  // 200

			mbin.BuildingPlacementScaleMinMax.x = 0.1f;  // 0.25
			mbin.BuildingPlacementScaleMinMax.y = 5;     // 3
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
				mbin.Objects.ForEach(ITEM => {
					ITEM.RemovesAttachedDecoration = false;
					ITEM.CheckPlaceholderCollision = false;
					ITEM.CanChangeColour           = true;
					ITEM.CanPlaceOnItself          = true;
					ITEM.CanRotate3D               = true;
					ITEM.CanScale                  = true;
					// no limit on # can create
					ITEM.FreighterBaseLimit = 0;
					ITEM.PlanetBaseLimit    = 0;
					ITEM.PlanetLimit        = 0;
					ITEM.RegionLimit        = 0;
					// don't dig-out safes if placed outside
					if( string.Compare(ITEM.ID, 0, "CONTAINER", 0, 9) == 0 ) {
						ITEM.EditsTerrain = false;
					}
				});
			}
		}
	}
}

//=============================================================================
