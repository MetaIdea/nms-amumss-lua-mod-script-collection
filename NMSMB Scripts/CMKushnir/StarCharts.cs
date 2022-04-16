//=============================================================================
// Go through each starchart reward (R_STARCHART_A - R_STARCHART_D) and
// create a new chart for each reward e.g. a new chart for each of
// Depot, Factory, ..., Ruin.
// Will use any changes made by Reward_Location e.g. create charts for base and portal.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Starcharts : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			CreateCharts();
		}
		
		//...........................................................

		protected List<GcProductData>             Products;
		protected List<GcConsumableItem>          Consumables;
		protected List<GcGenericRewardTableEntry> Rewards;
		protected List<nms.NMSString0x10>         MapShop;

		//...........................................................

		protected void CreateCharts()
		{
			try {
				Products = ExtractMbin<GcProductTable>(
					"METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
				).Table;
				
				Consumables = ExtractMbin<GcConsumableItemTable>(
					"METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN"
				).Table;
				
				Rewards = ExtractMbin<GcRewardTable>(
					"METADATA/REALITY/TABLES/REWARDTABLE.MBIN"
				).SpecialRewardTable;
				
				MapShop = ExtractMbin<GcRealityManagerData>(
					"METADATA/REALITY/DEFAULTREALITY.MBIN"
				).TradeSettings.MapShop.AlwaysPresentProducts;

				var charts = Rewards.FindAll(REWARD => REWARD.Id.Value.StartsWith("R_STARCHART_"));
				foreach( var chart in charts ) {
					foreach( var reward in chart.List.List ) {
						var scan_event = reward.Reward as GcRewardScanEvent;
						CreateChart(chart.Id.Value.Substring(2), scan_event.Event, reward.LabelID);  // STARCHART_A, DEPOT, Depot
					}
				}
			}
			finally {
				MapShop     = null;
				Rewards     = null;
				Consumables = null;
				Products    = null;
			}
		}

		//...........................................................

		protected void CreateChart( string CHART, string SCAN, string LABEL )
		{		
			var product_id = "MAP_" + SCAN;      //   MAP_DEPOT, must be <= 14 char
			if( product_id.Length > 14 ) product_id = product_id.Substring(0, 14);
			var  reward_id = "R_" + product_id;  // R_MAP_DEPOT, must be <= 16 char
	
			Log.AddInformation($"{CHART} {SCAN} {LABEL} -> {product_id}");
			
			var product = CloneMbin(Products.Find(PRODUCT => PRODUCT.Id == CHART));
			product.Id          = product_id;  // MAP_DEPOT
			product.Subtitle    = LABEL;
			product.Description = LABEL;
	
			var consumable = CloneMbin(Consumables.Find(CONSUMABLE => CONSUMABLE.ID == CHART));
			consumable.ID       = product_id;  //   MAP_DEPOT
			consumable.RewardID =  reward_id;  // R_MAP_DEPOT
			
			var reward = CloneMbin(Rewards.Find(REWARD => REWARD.Id == "R_" + CHART));
			reward.List.List.RemoveRange(1, reward.List.List.Count - 1);  // only need 1 reward in clone
			var reward_item = reward.List.List[0];
			var reward_scan = reward_item.Reward as GcRewardScanEvent;
			reward.Id = reward_id;               // R_MAP_DEPOT
			reward_item.PercentageChance = 100;  // 0% chance of not finding anything
			reward_item.LabelID = LABEL;         // Depot
			reward_scan.Event   = SCAN;          // DEPOT
			
			Products   .Add(product);
			Consumables.Add(consumable);
			Rewards    .Add(reward);
			MapShop    .Add(product_id);
		}
	}
}

//=============================================================================
