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
			
			var interaction = CloneMbin(mbin.Components[1]);
			var emptyNode = CloneMbin(mbin.Components[2]);
			//interaction.ActivationCost = 1;
			//interaction.InteractDistance = 0.01f;
			//interaction.InteractAngle = 1;
			interaction = new GcInteractionComponentData();
			
			mbin.Components.Clear();
			mbin.Components.Add(interaction);
			mbin.Components.Add(emptyNode);
			mbin.Components.Add(emptyNode);
		}
		
		protected void HideLines()
		{
			var mbin = ExtractMbin<TkSceneNodeData>(
				"MODELS\\EFFECTS\\LINES\\LINERENDERER.SCENE.MBIN"
			);
			mbin.Attributes[0].Value = "MATERIALS/LINE3D.EMPTY.MATERIAL.MBIN";			
			mbin.Attributes[1].Value = "1";
		}
		
		protected void Line3DEdit()
		{
			var copyMbin = CloneMbin<TkMaterialData>("MATERIALS/LINE3D.MATERIAL.MBIN", "MATERIALS/LINE3D.EMPTY.MATERIAL.MBIN");
			
			copyMbin.Uniforms[0].Values = new();
			copyMbin.Samplers = new();		
		}
	}
}

//=============================================================================
