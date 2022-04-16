//=============================================================================
// Set each economy, conflict, production level|type to use the same text,
// e.g. set all low conflict descriptions to "Stable".
// Since it's using existing localized strings it will work for all languages.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Normalize_Names : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			TkLocalisationTable();
		}

		//...........................................................
		
		protected void TkLocalisationTable()
		{
			foreach( var identifier in NMS.Game.Language.Identifier.List ) {
				// language mbin's are big, generally only mod for your language,
				// don't bloat mod pak with language mbin's that will never be used.
				// Loop is to illustrate how you'd update all languages,
				// normally you'd just use Game.Language and Game.Language.Identifier.
				if( identifier != Game.Language.Identifier ) continue;
				
				var language = Game.Languages.Get(identifier);  // cached, load-on-demand
				
				var econ_low    = language.GetText("UI_ECON_LEVEL_LOW_6");   // "Destitute"
				var econ_medium = language.GetText("UI_ECON_LEVEL_MED_2");   // "Balanced"
				var econ_high   = language.GetText("UI_ECON_LEVEL_HIGH_1");  // "Wealthy"
				for( var i = 1; i <= 8; ++i ) {
					SetLanguageText(identifier, $"UI_ECON_LEVEL_LOW_{i}",  econ_low);
					SetLanguageText(identifier, $"UI_ECON_LEVEL_MED_{i}",  econ_medium);
					SetLanguageText(identifier, $"UI_ECON_LEVEL_HIGH_{i}", econ_high);
				}

				var conflict_low    = language.GetText("UI_CONFLICT_LEVEL_LOW_6");   // "Stable"
				var conflict_medium = language.GetText("UI_CONFLICT_LEVEL_MED_4");   // "Unstable"
				var conflict_high   = language.GetText("UI_CONFLICT_LEVEL_HIGH_2");  // "Dangerous"
				for( var i = 1; i <= 10; ++i ) {
					SetLanguageText(identifier, $"UI_CONFLICT_LEVEL_LOW_{i}",  conflict_low);
					SetLanguageText(identifier, $"UI_CONFLICT_LEVEL_MED_{i}",  conflict_medium);
					SetLanguageText(identifier, $"UI_CONFLICT_LEVEL_HIGH_{i}", conflict_high);
				}

				var class_alloy    = language.GetText("UI_ECON_CLASS_ALLOY_1");     // "Material Fusion"
				var class_manufact = language.GetText("UI_ECON_CLASS_MANUFACT_1");  // "Manufacturing"
				var class_mining   = language.GetText("UI_ECON_CLASS_MINING_1");    // "Mining"
				var class_power    = language.GetText("UI_ECON_CLASS_POWER_1");     // "Power Generation"
				var class_science  = language.GetText("UI_ECON_CLASS_SCIENCE_2");   // "Scientific"
				var class_tech     = language.GetText("UI_ECON_CLASS_TECH_2");      // "Technology"
				var class_trade    = language.GetText("UI_ECON_CLASS_TRADE_2");     // "Trading"
				for( var i = 1; i <= 4; ++i ) {
					SetLanguageText(identifier, $"UI_ECON_CLASS_ALLOY_{i}",    class_alloy);
					SetLanguageText(identifier, $"UI_ECON_CLASS_MANUFACT_{i}", class_manufact);
					SetLanguageText(identifier, $"UI_ECON_CLASS_MINING_{i}",   class_mining);
					SetLanguageText(identifier, $"UI_ECON_CLASS_POWER_{i}",    class_power);
					SetLanguageText(identifier, $"UI_ECON_CLASS_SCIENCE_{i}",  class_science);
					SetLanguageText(identifier, $"UI_ECON_CLASS_TECH_{i}",     class_tech);
					SetLanguageText(identifier, $"UI_ECON_CLASS_TRADE_{i}",    class_trade);
				}				
			}
		}
	}
}

//=============================================================================
