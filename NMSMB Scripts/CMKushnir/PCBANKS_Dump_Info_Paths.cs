//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class PCBANKS_Dump_Info_Paths : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{
			var save_path = Dialog.SaveFile();
			if( save_path.IsNullOrEmpty() ) return;
			
			var file = System.IO.File.CreateText(save_path);
			
			Game.PCBANKS.InfoTree.ForEachTag(( INFO, CANCEL, LOG ) => {
				file.WriteLine($"{INFO.File.Name} {INFO.Path}");
			},	Cancel, Log);

			Log.AddSuccess("Finished");
		}
	}
}

//=============================================================================
