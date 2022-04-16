//=============================================================================
// Adjust distances to starting ship and nearest building.
// Set initial money, make all runes known.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using InventoryClassEnum = GcInventoryClass.InventoryClassEnum;
	
	//=========================================================================

	public class Start : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcDebugOptions());
			Try(() => GcBuildingGlobals());
			Try(() => GcBiomeFileList());
			Try(() => GcDefaultSaveData());
		}

		//...........................................................

		protected void GcDebugOptions()
		{
			var mbin = ExtractMbin<GcDebugOptions>(
				"GCDEBUGOPTIONS.GLOBAL.MBIN"
			);		
			mbin.ForceInitialShip   = false;
			mbin.ForceInitialWeapon = false;
		}

		//...........................................................

		protected void GcBuildingGlobals()
		{
			var mbin = ExtractMbin<GcBuildingGlobals>(
				"GCBUILDINGGLOBALS.GLOBAL.MBIN"
			);
			// don't seem to work anymore
			mbin.StartCrashSiteMinDistance = 100;
			mbin.StartCrashSiteMaxDistance = 300;
			mbin.StartShelterMinDistance   = 100;
			mbin.StartShelterMaxDistance   = 300;
		}

		//...........................................................

		protected void GcBiomeFileList()
		{
			var mbin = ExtractMbin<GcBiomeFileList>(
				"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN"
			);
			// - GcBiomeFileListOptions[16:BiomeEnum] biome sub-type weights
			// - List<GcBiomeType> ValidStartPlanetBiome
		}	

		//...........................................................

		protected void GcDefaultSaveData()
		{
			var paths = new [] {
				"METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
				"METADATA/GAMESTATE/DEFAULTSAVEDATACREATIVE.MBIN"
			};		
			foreach( var path in paths ) {
				var mbin = ExtractMbin<GcDefaultSaveData>(path);
			
				mbin.State.HasAccessToNexus = true;
				
				mbin.State.Units    = 10000000;
				mbin.State.Nanites  =   100000;
				mbin.State.Specials =   100000;  // quicksilver
	
				// start off knowing all portal glyphs, see Portal.
				mbin.State.KnownPortalRunes = 0xffff;  // bitmap
	
				for( var index = 0; index < mbin.State.ShipUsesLegacyColours.Length; ++index ) {
					mbin.State.ShipUsesLegacyColours[index] = false;
				}			
				SetStartingShip(mbin);
			}
		}
		
		//...........................................................

		protected void SetStartingShip( GcDefaultSaveData MBIN )
		{
			// default is Fighter "Radiant Pillar BC1" 0xa547ab958c97e439
			// setting seed will gen a C class ship i.e. crappy stats (SHIP_DAMAGE, SHIP_SHIELD, SHIP_HYPERDRIVE),
			// trying to set MBIN.State.ShipOwnership[0] works for name but not stats.
			// 0x5388D639B7EBF6F4 - Exotic, White,  Silver Trim, Fins, 2 short Engine, No Nose, Open Tail
			MBIN.State.CurrentShip.Seed.UseSeedValue = true;
			MBIN.State.CurrentShip.Seed.Seed = 0x5388D639B7EBF6F4;
			MBIN.State.CurrentShip.Filename  = "MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN";
		}
	}
}

//=============================================================================
