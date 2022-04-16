//=============================================================================
// Enable more creatures to become companion pets.
// Adds GcCreatureComponentData to robots and creatures that currently don't have it.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Creature_Pet : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			TkAttachmentData();
		}

		//...........................................................
		
		protected void TkAttachmentData()
		{
			// get non-cached interaction data to use as cloning source
			var mbin = Game.PCBANKS.ExtractMbin<TkAttachmentData>(
				"MODELS/PLANETS/CREATURES/ANTELOPERIG/ANTELOPE/ENTITIES/_BODY_SKINNY.ENTITY.MBIN"
			);
			var source = mbin.Components.FindFirst<GcInteractionComponentData>();		
			source.InteractDistance = 40;
			
			// get class for entity.mbin items
			var TkAttachmentDataClass = Game.Mbinc.FindClass("TkAttachmentData");
			
			// iterate through all entity.mbin's
			foreach( var path in TkAttachmentDataClass.PakItems ) {
				// before extracting mbins, do coarse filter using path
				var  is_robot  =  path.Contains("ROBOT") || path.Contains("CYBER");			
				if( !is_robot && !path.Contains("CREATURE") ) continue;
				
				// get non-cached instance, since we don't know if we want to mod it
				mbin = Game.PCBANKS.ExtractMbin<TkAttachmentData>(path);
				if( mbin == null ) continue;
				
				// make sure entity is for a creature ...
				var creature  = mbin.Components.FindFirst<GcCreatureComponentData>();
				if( creature == null ) continue;
					
				// ... and that the creature isn't already able to be a pet
				var interaction  = mbin.Components.FindFirst<GcInteractionComponentData>();
				if( interaction != null ) continue;
	
				// what do we need to feed it
				source.SecondaryActivationCost.SubstanceId = is_robot ? 
					"POWERCELL" : "BAIT_BASIC"
				;
				
				// now that we know we want to mod it, get a cached instance
				mbin = ExtractMbin<TkAttachmentData>(path, false);				
				mbin.Components.Add(CloneMbin(source));
			}
		}
	}
}

//=============================================================================
