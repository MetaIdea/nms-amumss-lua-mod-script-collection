//=============================================================================
// Specify common usings here, so don't have to put in each script.
//=============================================================================

global using global::System;
global using global::System.Collections;
global using global::System.Collections.Generic;
global using global::System.IO;
global using global::System.Reflection;
global using global::System.Text;
global using global::System.Text.RegularExpressions;
global using global::System.Threading;
global using global::System.Threading.Tasks;

global using nms = global::libMBIN.NMS;
global using global::libMBIN.NMS.Globals;
global using global::libMBIN.NMS.GameComponents;
global using global::libMBIN.NMS.Toolkit;
global using global::libMBIN.NMS.SketchNodes;

global using global::cmk;
global using global::cmk.NMS;
global using global::cmk.NMS.Scripts;

//=============================================================================

// All mod scripts have a subfolder with the same name as the script file.
// i.e. <app>/Scripts/Mod/(Global)/
//
// Any files placed in those folders will be included in the mod pak if the mod is enabled.
// Later scripts may replace any loose files of the same name added by prior scripts.
// If this happens a warning will be displayed in the build log.
//
// The files must be placed in the proper pak sub-folder
// e.g. <app>/Scripts/Mod/(Global)/Textures/ColourLUT.dds
// would be added to mod pak as "TEXTURES/COLOURLUT.DDS".
//
// (Global) can be used as a place to put loose files that you don't want tied to a mod,
// i.e. not tied to script code that you may want to disable.
//
// Mod scripts are executed in the order they appear in the listbox.
// If the execute order matters then rename scripts to get desired order.
//
namespace cmk.NMS.Scripts.Mod
{
	public partial class Global : cmk.NMS.ModScript
	{
		protected override void Execute() {}
	}

	//=========================================================================
	// Extension methods:
	//=========================================================================
	
	public static partial class x
	{
		public static void AddSubstance( this List<GcTechnologyRequirement> LIST, string ID, int AMOUNT )
		=>	LIST.Add(new GcTechnologyRequirement{
				ID            = ID,
				InventoryType = new GcInventoryType{ InventoryType = GcInventoryType.InventoryTypeEnum.Substance },
				Amount        = AMOUNT
			}
		);

		public static void AddProduct( this List<GcTechnologyRequirement> LIST, string ID, int AMOUNT )
		=>	LIST.Add(new GcTechnologyRequirement{
				ID            = ID,
				InventoryType = new GcInventoryType{ InventoryType = GcInventoryType.InventoryTypeEnum.Product },
				Amount        = AMOUNT
			}
		);
	}	
}

//=============================================================================
