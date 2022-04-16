//=============================================================================
// Make all runes known, all portal buttons free (no charge substance required).
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using CompletionRequirementEnum = GcMaintenanceElement.CompletionRequirementEnum;
	
	//=========================================================================
	
	public class Portal: cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcGameplayGlobals());
			Try(() => TkAttachmentData());
		}

		//...........................................................

		protected void GcGameplayGlobals()
		{
			var mbin = ExtractMbin<GcGameplayGlobals>(
				"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"
			);
			// know all portal glyphs, see Start.
			mbin.Portal.KnowAllRunes = true;
		}
		
		//...........................................................

		protected void TkAttachmentData()
		{
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN"
			);
			// make all portal buttons free (don't need to charge w/ substances)
			var maint = mbin.Components.FindFirst<GcMaintenanceComponentData>();
			//foreach( var button in maint.PreInstalledTech ) {
			//	button.MaxCapactiy           = 0;    // -1, old way
			//	button.MinRandAmount         = 100;  //  0, old old way
			//	button.MaxRandAmount         = 100;  //  0, old old way
			//	button.CompletionRequirement = CompletionRequirementEnum.NoRequirement;  // new way
			//}
			// another option is to delete all maint comp data for the buttons
			mbin.Components.Remove(maint);
		}
	}
}

//=============================================================================
