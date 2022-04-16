//=============================================================================

using nms = libMBIN.NMS;
using libMBIN.NMS.Globals;
using libMBIN.NMS.GameComponents;
using libMBIN.NMS.Toolkit;

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	// All mod scripts have a subfolder with the same name as the script file.
	// i.e. <app>/Scripts/Mod/(Loose_Files)/
	//
	// Any files placed in those folders will be included in the mod pak if the mod is enabled.
	// Later scripts may replace any loose files of the same name added by prior scripts.
	// If this happens a warning will be displayed in the build log.
	//
	// The files must be placed in the proper pak sub-folder
	// e.g. <app>\Scripts\Mod\(Loose_Files)\Textures\ColourLUT.dds
	// would be added to mod pak as "TEXTURES/COLOURLUT.DDS".
	//
	// Loose_Files exists as a place to put loose files that you don't want tied to a mod,
	// i.e. not tied to script code that you may want to disable.
	//
	// Mods are executed in the order they appear in the listbox i.e. alphanumeric.
	// If the execute order matters then rename scripts to get desired order.
	//
	public partial class Loose_Files : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			//Test();
		}
		
		//...........................................................

		// Minimal change to a small mbin to test build process.
		protected void Test()
		{
			var mbin = ExtractMbin<GcSmokeTestOptions>(
				"GCSMOKETESTOPTIONS.GLOBAL.MBIN"
			);
			mbin.InitialPause = 10;
		}	
	}
}

//=============================================================================
