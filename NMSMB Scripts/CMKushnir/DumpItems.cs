//=============================================================================

using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Text;

using nms     = global::libMBIN.NMS;
using mbin_gl = global::libMBIN.NMS.Globals;
using mbin_gc = global::libMBIN.NMS.GameComponents;
using mbin_tk = global::libMBIN.NMS.Toolkit;

//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class DumpItems : cmk.NMS.IScriptQuery
	{
		protected override void Execute()
		{
			var save_path = Dialog.SaveFile();
			if( save_path.IsNullOrEmpty() ) return;
			
			var file = System.IO.File.CreateText(save_path);
			
			Game.PAK.InfoTree.ForEachTag(INFO => {
				file.WriteLine($"{INFO.File.Name} {INFO.Path}");
			});
		}
	}
}

//=============================================================================
