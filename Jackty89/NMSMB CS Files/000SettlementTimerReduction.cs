//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class SettlementTimerReduction : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcSettlementGlobals();
		}

		//...........................................................

		protected void GcSettlementGlobals()
		{
			var mbin = ExtractMbin<GcSettlementGlobals>(
				"GCSETTLEMENTGLOBALS.MBIN"
			);
			var multiplier = 0.1;
			
			//Math.Round(val, decimals) might be useable			
			mbin.BuildingUpgradeTimeInSeconds = (ulong)(multiplier * mbin.BuildingUpgradeTimeInSeconds);
			mbin.BuildingFreeUpgradeTimeInSeconds = (ulong)(multiplier * mbin.BuildingFreeUpgradeTimeInSeconds);
			mbin.BuildingUpgradeTimeInSeconds = (ulong)(multiplier * mbin.BuildingUpgradeTimeInSeconds);
			mbin.JudgementWaitTimeMin = (int)(multiplier * mbin.JudgementWaitTimeMin);
			mbin.JudgementWaitTimeMax = (int)(multiplier * mbin.JudgementWaitTimeMax);
			
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_LandingZone] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_LandingZone] );
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Bar] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Bar] );
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Tower] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Tower] );
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Market] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Market] );
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Small] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Small] );
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_SmallIndustrial] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_SmallIndustrial] );
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Medium] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Medium] );
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Large] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Large] );
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Monument] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Monument] );
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_SheriffsOffice] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_SheriffsOffice] );
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Double] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Double] );
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Farm] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Farm] );
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Factory] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Factory] );
			mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Clump] = (ulong)(multiplier * mbin.SettlementBuildingTimes[(int)GcBuildingClassification.BuildingClassEnum.Settlement_Clump] );
		}
	}
}

//=============================================================================
