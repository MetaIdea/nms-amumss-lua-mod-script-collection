//=============================================================================
// Search all scene mbin's for specific criteria.
//=============================================================================

namespace cmk.NMS.Scripts.Query
{
	public class SearchScenes : cmk.NMS.QueryScript
	{
		protected override void Execute()
		{
			var save_path = Dialog.SaveFile(null, "Scenes.txt");
			if( save_path.IsNullOrEmpty() ) return;
			
			var file = System.IO.File.CreateText(save_path);
			
			var anim_t               = typeof(TkAnimationComponentData);		
			var TkSceneNodeDataClass = Game.Mbinc.FindClass("TkSceneNodeData");
			
			foreach( var mbin_path in TkSceneNodeDataClass.PakItems ) {
				var scene_mbin = ExtractMbin<TkSceneNodeData>(mbin_path, true, false);
				if( scene_mbin == null || scene_mbin.Children.IsNullOrEmpty() ) continue;
				
				foreach( var child in scene_mbin.Children ) {
					if( child.Type == "MESH" || child.Attributes.IsNullOrEmpty() ) continue;
					
					foreach( var attrib in child.Attributes ) {
						if( attrib.Name != "ATTACHMENT" || !attrib.Value.Value.EndsWith(".ENTITY.MBIN") ) continue;
							
						var entity_mbin = ExtractMbin<TkAttachmentData>(attrib.Value, true, false);
						if( entity_mbin == null || entity_mbin.Components.IsNullOrEmpty() ) continue;
						
						foreach( var component in entity_mbin.Components ) {
							if( component.GetType() == anim_t ) {
								file.WriteLine($"{mbin_path} {child.Type.Value} {attrib.Value.Value}");
							}
						}
					}
				}
			}
			
			file.Flush();
			Log.AddSuccess("Finished");
		}
	}
}

//=============================================================================
