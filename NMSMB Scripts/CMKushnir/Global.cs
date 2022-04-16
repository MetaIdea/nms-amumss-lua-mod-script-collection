//=============================================================================

using nms = libMBIN.NMS;
using libMBIN.NMS.Globals;
using libMBIN.NMS.GameComponents;
using libMBIN.NMS.Toolkit;

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	// Misc. usabilty tweaks.
	public class Global : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcDebugOptions());
			Try(() => GcCameraGlobals());
			Try(() => GcGraphicsGlobals());
			Try(() => GcCharacterGlobals());
		}

		//...........................................................

		protected void GcDebugOptions()
		{
			var mbin = ExtractMbin<GcDebugOptions>(
				"GCDEBUGOPTIONS.GLOBAL.MBIN"
			);				
			mbin.SkipIntro = true;
			mbin.SkipLogos = true;
			mbin.BootMusic = false;
			mbin.DisableSaveSlotSorting     = true;
			mbin.UseHeavyAir                = false;
			mbin.SpecialsShop               = true;
			mbin.DisableProfanityFilter     = true;
			mbin.GenerateFarLodBuildingDist = 4000;  // 1000
		}

		//...........................................................

		protected void GcCameraGlobals()
		{
			var mbin = ExtractMbin<GcCameraGlobals>(
				"GCCAMERAGLOBALS.GLOBAL.MBIN"
			);
			// deactivate all camera shake effects
			foreach( var data in mbin.CameraShakeTable ) {
				data.CapturedData  .Active = false;
				data.MechanicalData.Active = false;
			}
		}

		//...........................................................

		protected void GcGraphicsGlobals()
		{
			var mbin = ExtractMbin<GcGraphicsGlobals>(
				"GCGRAPHICSGLOBALS.GLOBAL.MBIN"
			);
			mbin.LensDirt     = 0;  // 0.3
			mbin.LensDirtCave = 0;  // 0.4
			mbin.TargetTextureMemUsageMB = 5120;  // 1280
		}

		//...........................................................

		protected void GcCharacterGlobals()
		{
			var mbin = ExtractMbin<GcCharacterGlobals>(
				"GCCHARACTERGLOBALS.GLOBAL.MBIN"
			);
			// prevent ladder auto-mount, useful w/ ladders in bases
			mbin.LadderDistanceToAutoMount = 0.05f;  // 0.4
		}
	}
}

//=============================================================================
