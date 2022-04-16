//=============================================================================

using nms = libMBIN.NMS;
using libMBIN.NMS.Globals;
using libMBIN.NMS.GameComponents;
using libMBIN.NMS.Toolkit;

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using WeightingCurveEnum = GcWeightingCurve.WeightingCurveEnum;

	//=========================================================================

	// Adjust min | max stats for proc gen tech.
	// To max, easier to just set LuckyWithTech = true in GCPLAYERGLOBALS.GLOBAL.MBIN
	public class Technology_MaxStats : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			//GcProceduralTechnologyTable();
		}

		//...........................................................

		protected void GcProceduralTechnologyTable()
		{
			var mbin = ExtractMbin<GcProceduralTechnologyTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"
			);
			mbin.Table.ForEach(ITEM => {
				ITEM.NumStatsMin = ITEM.NumStatsMax;
				if( IsMaxBest(ITEM.WeightingCurve.WeightingCurve) ) {
					ITEM.NumStatsMin = ITEM.NumStatsMax;
				}
				else {
					ITEM.NumStatsMax = ITEM.NumStatsMin;
				}
				ITEM.StatLevels.ForEach(STAT => {
					if( IsMaxBest(STAT.WeightingCurve.WeightingCurve) ) {
						STAT.ValueMin = STAT.ValueMax;
					}
					else {
						STAT.ValueMax = STAT.ValueMin;
					}				                        		
				});
			});
		}

		//...........................................................
		
		protected bool IsMaxBest( WeightingCurveEnum ENUM )
		{
			switch( ENUM ) {
				case WeightingCurveEnum.MaxIsUncommon:
				case WeightingCurveEnum.MaxIsRare:
				case WeightingCurveEnum.MaxIsSuperRare: return true;
			}
			return false;
		}      		
	}
}

//=============================================================================
