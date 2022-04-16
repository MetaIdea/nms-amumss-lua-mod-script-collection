//=============================================================================
// Learn more words when interacting with NPC's, Knowledge stones, ...
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using RaceEnum = GcAlienRace.AlienRaceEnum;
	using WordEnum = GcWordCategoryTableEnum.gcwordcategorytableEnumEnum;
	
	//=========================================================================
	
	public class Reward_MoreWords : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcRewardTable();
		}

		//...........................................................

		protected void GcRewardTable()
		{
			var mbin = ExtractMbin<GcRewardTable>(
				"METADATA/REALITY/TABLES/REWARDTABLE.MBIN"
			);
			
			var GcRewardTable_t             = typeof(GcRewardTable);
			var GcGenericRewardTableEntry_t = typeof(List<GcGenericRewardTableEntry>);
			
			// GcRewardTable has a bunch of List<GcGenericRewardTableEntry> fields, instead of a list of them.
			// Use reflection to iterate through all the List<GcGenericRewardTableEntry> fields.
			foreach( var field in GcRewardTable_t.GetFields() ) {
				if( field.FieldType == GcGenericRewardTableEntry_t ) {
					GcGenericRewardTableEntryList(field.GetValue(mbin) as List<GcGenericRewardTableEntry>);
				}
			}
		}

		//...........................................................
		
		// entry.Id:
		// WORD                   - Stone
		// (race)_WORD            - Reward for helping NPC, single interaction
		// TEACHWORD_(race)       - Monolith | Plaque | Ruins
		// (race)_WORD_(category) - NPC, pick a category, repeat interaction 
		protected void GcGenericRewardTableEntryList( List<GcGenericRewardTableEntry> LIST )
		{
			foreach( var entry in LIST ) {
				var source_race     = RaceEnum.Diplomats;  // WORD uses None, none use Diplomats
				var source_category = WordEnum.MISC;
				foreach( var reward in entry.List.List ) {
					if( reward.Reward is GcRewardTeachWord word ) {
						entry.List.RewardChoice = GcRewardTableItemList.RewardChoiceEnum.GiveAll;
						source_race     = word.Race.AlienRace;
						source_category = word.Category.gcwordcategorytableEnum;
						break;
					}
				}
				if( source_race == RaceEnum.Diplomats ) continue;  // no learn word reward found
				
				// add 3 more words, same race & category, 100% chance
				for( var i = 0; i < 3; ++i ) {
					var word = CreateGcRewardTableItemTeachWord(source_race, source_category);
					entry.List.List.Add(word);
				}
				
				// add 3 more words, Atlas, misc category, 30% chance
				for( var i = 0; i < 3; ++i ) {
					var word = CreateGcRewardTableItemTeachWord(RaceEnum.Atlas, WordEnum.MISC, 30.0f);			
					entry.List.List.Add(word);
				}
			}
		}

		//...........................................................
		
		protected GcRewardTableItem CreateGcRewardTableItemTeachWord(
			RaceEnum RACE,
			WordEnum CATEGORY = WordEnum.MISC,
			float    CHANCE   = 100.0f  // 0 - 100
		){
			return new GcRewardTableItem {
				PercentageChance = CHANCE,
				Reward = new GcRewardTeachWord {
					Race        = new GcAlienRace { AlienRace = RACE },
					UseCategory = CATEGORY != WordEnum.MISC,
					Category    = new GcWordCategoryTableEnum { gcwordcategorytableEnum = CATEGORY },
					AmountMin   = 1,
					AmountMax   = 1
				},
				LabelID = ""
			};
		}
	}
}

//=============================================================================
