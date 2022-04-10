//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class CleanMultiplayer : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			RemoveCollisionAndMesh();
			RemoveText();
			HideLines();
			Line3DEdit();
		}

		//...........................................................

		protected void RemoveCollisionAndMesh()
		{
			var mbin = ExtractMbin<TkSceneNodeData>(
				"MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PROPS\\MESSENGER\\MESSENGER.SCENE.MBIN"
			);
			//removes mesh
			mbin.Children[0].Children = new ();
			//removes collision
			mbin.Children[1].Children = new ();
		}
		
		protected void RemoveText()
		{
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PROPS\\MESSENGER\\ENTITIES\\MESSENGER.ENTITY.MBIN"
			);
			//removes mesh
			mbin.Components = new();
		}
		
		protected void HideLines()
		{
			var mbin = ExtractMbin<TkSceneNodeData>(
				"MODELS\\EFFECTS\\LINES\\LINERENDERER.SCENE.MBIN"
			);
			//mbin.Attributes[0].Value = "MATERIALS/LINE3D.EMPTY.MATERIAL.MBIN";			
			//mbin.Attributes[0].Value = "";
			mbin.Attributes[1].Value = "1";
		}
		
		protected void Line3DEdit()
		{
			var mbin = ExtractMbin<TkMaterialData>(
				"MATERIALS\\LINE3D.MATERIAL.MBIN"
			);
			
			mbin.Uniforms[0].Values = new();
			mbin.Samplers = new();		
		}
	}
}

//=============================================================================
