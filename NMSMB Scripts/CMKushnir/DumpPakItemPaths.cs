//=============================================================================



//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class DumpPakItemPaths : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{
			var save_path = Dialog.SaveFile();
			if( save_path.IsNullOrEmpty() ) return;
			
			var file = System.IO.File.CreateText(save_path);
			
			Game.PAK.InfoTree.ForEachTag(( INFO, CANCEL, LOG ) => {
				file.WriteLine($"{INFO.File.Name} {INFO.Path}");
			},	Cancel, Log);
		}
	}
}

//=============================================================================
