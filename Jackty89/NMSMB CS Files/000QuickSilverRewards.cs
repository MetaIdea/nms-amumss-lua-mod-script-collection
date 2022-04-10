//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class QuickSilverRewards : cmk.NMS.ModScript
	{
		//METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN
		//RS_QUICKSILV_S  //derelict freighter drops? id => options[0] ->rewards.add(new reward)
		Tuple<string, int, int>[] FreighterRewardS = new Tuple<string, int, int>[]
		{
			new ("ALL_ABANDONED_", 1,34),
			new ("TRA_CRA_", 1,20),
			new ("EXP_CRA_", 1,20),
			new ("WAR_CRA_", 1,20),
			new ("FOURTH_CRA_", 1,20),
			new ("EXP_CRA_", 1,20)
		};
		
		string[] RewardS = new string[]
		{
			"QUAD_LOOT", 
			"PIRATE_BOUNTY1", 
			"PROC_PROD_BONES", 
			"PROC_PROD_SCRAP", 
			"MB_STAND_LOW"
		};

		string[] RewardM = new string[]
		{
			"WALKER_LOOT", 
			"PIRATE_BOUNTY2", 
			"BEGIN_SALVAGE", 
			"PIRATE_REJECT", 
			"MB_STAND_MED"
		};

		string[] RewardL = new string[]
		{
			"PIRATE_BOUNTY3", 
			"PROC_PROD_CHEST", 
			"R_SEACHEST", 
			"R_SALVAGE", 
			"R_CRASHSITE_FLY", 
			"MB_STAND_HIGH"
		};

		string[] RewardXL = new string[]
		{
			"R_ABAND_END", 
			"R_NEXUS_MEGA_C"
		};

		protected override void Execute()
		{
			AddFreighterQsRewards();

			//AddMissionReward();

			AddQsRewards(RewardS, 10, 25);
			AddQsRewards(RewardM, 25, 50);
			AddQsRewards(RewardL, 50, 100);
			AddQsRewards(RewardXL, 100, 150);
		}

		//...........................................................

		protected void AddFreighterQsRewards()
		{
			var mbin = ExtractMbin<GcAlienPuzzleTable>(
				"METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"
			);

			foreach (var reward in FreighterRewardS)
            {
				string id = reward.Item1;
				int start = reward.Item2;
				int end = reward.Item3;
				for(int i = start; i <= end; i++)
                {
					var puzzleId = id + i;
					
					var puzzle = mbin.Table.Find(PUZZLE => PUZZLE.Id == puzzleId);
					puzzle.Options[0].Rewards.Add("RS_QUICKSILV_S");
                }
			}
		}

		protected void AddMissionReward()
		{
			var mbin = ExtractMbin<GcMissionTable>(
				"METADATA/SIMULATION/MISSIONS/NPCMISSIONTABLE.MBIN"
			);

			var mission = mbin.Missions.Find(MISSION => MISSION.MissionID == "KILL_ROBOT_HARD");
			var stageCnt = mission.Stages.Count - 1;
			GcGenericMissionStage stage = CloneMbin(mission.Stages[stageCnt]);

			stage.Stage = new GcMissionSequenceReward {
				Message = "UI_REWARD_FAILED_MSG",
				CanOverride = false,
				DebugText = "",
				Reward = "RS_QUICKSILV_S" 
			} ;
			mission.Stages.Add(stage);
		}

		protected void AddQsRewards(string[] data, int min, int max)
		{
			var mbin = ExtractMbin<GcRewardTable>(
				"METADATA/REALITY/TABLES/REWARDTABLE.MBIN"
			);
			var GcRewardTable_t = typeof(GcRewardTable);
			var GcGenericRewardTableEntry_t = typeof(List<GcGenericRewardTableEntry>);

			foreach (var item in data)
            {
				//Log.AddInformation($"item  = {item }");
				List<GcGenericRewardTableEntry> reward = new();

				foreach (var field in GcRewardTable_t.GetFields())
                {
					GcGenericRewardTableEntry rewardEntrty = new();
					if (field.FieldType == GcGenericRewardTableEntry_t)
					{
						reward = field.GetValue(mbin) as List<GcGenericRewardTableEntry>;
						rewardEntrty = reward.Find(ITEM => ITEM.Id == item);
					}
					if (rewardEntrty != null)
                    {
						rewardEntrty.List.List.Insert(0,(new GcRewardTableItem
						{
							LabelID = "",
							PercentageChance = 100,
							Reward = new GcRewardMoney
							{
								AmountMin = min,
								AmountMax = max,
								Currency = new GcCurrency
								{
									Currency = GcCurrency.CurrencyEnum.Specials
								}
							}
						}));
						break;
					}	
				}			
            }
		}
	}
}

//=============================================================================
