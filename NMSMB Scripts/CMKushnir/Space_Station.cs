//=============================================================================
// poc: Clone a shootable|destructable entity and attach to the various exterior
// geometry models (scenes) used for space stations.
// Remove crime for shooting at SpaceStation.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class SpaceStation : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			//Scenes();
			//Station();
			NoCrime();
		}

		//...........................................................
	
		protected void Scenes()
		{
			var parts = new [] {
				"FACE_TRIANGLE",
				"FACE_SQUARE",
			};
			foreach( var part in parts ) {		
				var scene = ExtractMbin<TkSceneNodeData>(
					$"MODELS/SPACE/SPACESTATION/MODULARPARTS/EXTERIOR/{part}.SCENE.MBIN"
				);		
				var entity = CloneMbin<TkAttachmentData>(
					 "MODELS/SPACE/ASTEROIDS/NONDESTRUCTIBLE/BIGASTEROID01/ENTITIES/BIGASTEROID.ENTITY.MBIN",
					$"MODELS/SPACE/SPACESTATION/MODULARPARTS/EXTERIOR/ENTITIES/{part}.ENTITY.MBIN"
				);
				
				var shootable    = entity.Components.FindFirst<GcShootableComponentData>();
				var destructable = entity.Components.FindFirst<GcDestructableComponentData>();
				
				shootable.Health = 1000;
				shootable.AutoAimTarget = true;
				shootable.FiendCrimeModifier = 0;
				shootable.StaticUntilShot = true;
				shootable.HitEffectEnabled = true;
				shootable.HitEffectEntireModel = true;
				shootable.IsArmoured = false;
				shootable.DamageMultiplier = "CARGO";
				
				destructable.CanDestroyFromStoredInteraction = false;
				destructable.RemoveModel = true;
				destructable.HideModel = false;
				destructable.ShowInteractRange = 2000;
				//destructable.DestroyedModel = "MODELS/SPACE/SPACESTATION/SPACESTATION_ABANDONED.SCENE.MBIN";
	
				var attr = new TkSceneNodeAttributeData();
				attr.Name  = "ATTACHMENT";
				attr.Value = $"MODELS/SPACE/SPACESTATION/MODULARPARTS/EXTERIOR/ENTITIES/{part}.ENTITY.MBIN";
				
				scene.Children.ForEach(CHILD => CHILD.Attributes.Add(attr));
			}
		}

		//...........................................................
	
		protected void Station()
		{
			var source = Game.PCBANKS.ExtractMbin<TkAttachmentData>(
				"MODELS/SPACE/ASTEROIDS/NONDESTRUCTIBLE/BIGASTEROID01/ENTITIES/BIGASTEROID.ENTITY.MBIN"
			);
			var entity = ExtractMbin<TkAttachmentData>(
				"MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/BACK_SECTION/ENTITIES/SPACESTATIONEXTERIOR.ENTITY.MBIN"
			);
			
			var shootable    = entity.Components.FindFirst<GcShootableComponentData>();
			var destructable = CloneMbin(source.Components.FindFirst<GcDestructableComponentData>());
			
			shootable.Health = 1000;
			shootable.AutoAimTarget = true;
			shootable.FiendCrimeModifier = 0;
			//shootable.StaticUntilShot = true;
			shootable.HitEffectEnabled = true;
			shootable.HitEffectEntireModel = true;
			shootable.IsArmoured = false;
			shootable.DamageMultiplier = "CARGO";
			
			destructable.CanDestroyFromStoredInteraction = false;
			destructable.RemoveModel = false;
			destructable.HideModel = true;
			destructable.ShowInteractRange = 2000;
			//destructable.DestroyedModel = "MODELS/SPACE/SPACESTATION/SPACESTATION_ABANDONED.SCENE.MBIN";
			
			entity.Components.Add(destructable);
		}

		//...........................................................
	
		protected void NoCrime()
		{
			var entity = ExtractMbin<TkAttachmentData>(
				"MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/BACK_SECTION/ENTITIES/SPACESTATIONEXTERIOR.ENTITY.MBIN"
			);
			var shootable = entity.Components.FindFirst<GcShootableComponentData>();		
			entity.Components.Remove(shootable);
		}
	}
}

//=============================================================================
