//=============================================================================
// Alter freq. of space battles that give freighter.
// Multiply freighter jump distances by 10.
// Reduce negative frigate traits.
// Reduce flash when freighters|frigates warp into system.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using InventoryClassEnum       = GcInventoryClass.InventoryClassEnum;
	using StatsTypeEnum            = GcStatsTypes.StatsTypeEnum;
	using FrigateStatTypeEnum      = GcFrigateStatType.FrigateStatTypeEnum;
	using FrigateTraitStrengthEnum = GcFrigateTraitStrength.FrigateTraitStrengthEnum;
	
	//=========================================================================

	public class Freighter : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcDebugOptions());
			Try(() => GcGameplayGlobals());
			Try(() => GcPlayerGlobals());
			Try(() => GcTechnologyTable());
			Try(() => GcFleetGlobals());
			Try(() => GcExplosionDataTable());
		}

		//...........................................................

		protected void GcDebugOptions()
		{
			var mbin = ExtractMbin<GcDebugOptions>(
				"GCDEBUGOPTIONS.GLOBAL.MBIN"
			);
			mbin.MultiplePlayerFreightersInASystem = true;
		}

		//...........................................................

		protected void GcGameplayGlobals()
		{
			var mbin = ExtractMbin<GcGameplayGlobals>(
				"GCGAMEPLAYGLOBALS.GLOBAL.MBIN"
			);

			mbin.WarpsBetweenBattles = 1;  // 5
			mbin.HoursBetweenBattles = 0;  // 3
			
			// note: 6 entries, not sure what other are for, always = 0
			mbin.FreighterTechQualityWeightings[(int)InventoryClassEnum.C] = 35;  // 55
			mbin.FreighterTechQualityWeightings[(int)InventoryClassEnum.B] = 35;  // 25
			mbin.FreighterTechQualityWeightings[(int)InventoryClassEnum.A] = 20;  // 15
			mbin.FreighterTechQualityWeightings[(int)InventoryClassEnum.S] = 10;  //  5
		}
		
		//...........................................................

		protected void GcPlayerGlobals()
		{
			var mbin = ExtractMbin<GcPlayerGlobals>(
				"GCPLAYERGLOBALS.GLOBAL.MBIN"
			);
			mbin.NumberOfWarpsRequiredForFreightersToSpawn = 5;  // 2
		}
		
		//...........................................................

		protected void GcTechnologyTable()
		{
			var mbin = ExtractMbin<GcTechnologyTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
			);
			// big ship should be able to do big jumps
			foreach( var tech in mbin.Table ) {
				var bonus  = tech.StatBonuses.Find(BONUS => BONUS.Stat.StatsType == StatsTypeEnum.Freighter_Hyperdrive_JumpDistance);
				if( bonus != null ) bonus.Bonus *= 20;
			}
		}

		//...........................................................

		protected void GcFleetGlobals()
		{
			var mbin = ExtractMbin<GcFleetGlobals>(
				"GCFLEETGLOBALS.GLOBAL.MBIN"
			);
			
			mbin.PercentChangeOfFrigateBeingPurchasable =   70;  //   60
			mbin.NumberOfExpeditionChoices              =    8;  //    5
			mbin.TimeTakenForExpeditionEvent            = 1000;  // 5400
			//mbin.ExpeditionsCompleteInstantly         = true;  // false
			mbin.LevelupProgressRequiredToNotBeSadAboutDamage = .80f;  // 0.95
			
			// reduce possible penalty values for frigates
			
			var stat = mbin.FrigateTraitStrengths.FrigateStatType[(int)FrigateStatTypeEnum.Combat].StatAlteration;
			stat[(int)FrigateTraitStrengthEnum.NegativeLarge]  = -2;  // -6
			stat[(int)FrigateTraitStrengthEnum.NegativeMedium] = -1;  // -4
			stat[(int)FrigateTraitStrengthEnum.NegativeSmall]  = -0;  // -2

			stat = mbin.FrigateTraitStrengths.FrigateStatType[(int)FrigateStatTypeEnum.Exploration].StatAlteration;
			stat[(int)FrigateTraitStrengthEnum.NegativeLarge]  = -3;  // -6
			stat[(int)FrigateTraitStrengthEnum.NegativeMedium] = -2;  // -4
			stat[(int)FrigateTraitStrengthEnum.NegativeSmall]  = -1;  // -2

			stat = mbin.FrigateTraitStrengths.FrigateStatType[(int)FrigateStatTypeEnum.Mining].StatAlteration;
			stat[(int)FrigateTraitStrengthEnum.NegativeLarge]  = -3;  // -6
			stat[(int)FrigateTraitStrengthEnum.NegativeMedium] = -2;  // -4
			stat[(int)FrigateTraitStrengthEnum.NegativeSmall]  = -1;  // -2

			stat = mbin.FrigateTraitStrengths.FrigateStatType[(int)FrigateStatTypeEnum.Diplomatic].StatAlteration;
			stat[(int)FrigateTraitStrengthEnum.NegativeLarge]  = -6;  // -6
			stat[(int)FrigateTraitStrengthEnum.NegativeMedium] = -4;  // -4
			stat[(int)FrigateTraitStrengthEnum.NegativeSmall]  = -2;  // -2

			stat = mbin.FrigateTraitStrengths.FrigateStatType[(int)FrigateStatTypeEnum.FuelBurnRate].StatAlteration;
			stat[(int)FrigateTraitStrengthEnum.NegativeLarge]  = 2;  // 4
			stat[(int)FrigateTraitStrengthEnum.NegativeMedium] = 1;  // 2
			stat[(int)FrigateTraitStrengthEnum.NegativeSmall]  = 0;  // 1
		}
		
		//...........................................................

		protected void GcExplosionDataTable()
		{
			var mbin = ExtractMbin<GcExplosionDataTable>(
				"METADATA/EFFECTS/EXPLOSIONTABLE.MBIN"
			);
			// reduce flash of light when freighters & frigates warp-in
			foreach( var data in mbin.Table ) {
				if( !data.Id.Value.StartsWith("WARP_") ) continue;
				data.Scale             *= 0.1f;
				data.CamShake           = false;
				data.CamShakeSpaceScale = false;
			}
		}
	}
}

//=============================================================================
