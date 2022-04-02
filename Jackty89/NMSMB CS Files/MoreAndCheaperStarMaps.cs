//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class MoreAndCheaperStarMaps : cmk.NMS.ModScript
	{
		protected List<GcProductData> Products;
		protected List<GcConsumableItem> Consumables;
		protected List<GcGenericRewardTableEntry> Rewards;
		protected GcTradeData MapShopSettings;

		protected override void Execute()
		{		
			StarMaps();
		}

		//...........................................................

		protected void StarMaps()
		{
			Products = ExtractMbin<GcProductTable>("METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN").Table;
			Consumables = ExtractMbin<GcConsumableItemTable>("METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN").Table;
			Rewards = ExtractMbin<GcRewardTable>("METADATA/REALITY/TABLES/REWARDTABLE.MBIN").SpecialRewardTable;
			MapShopSettings = ExtractMbin<GcRealityManagerData>("METADATA/REALITY/DEFAULTREALITY.MBIN").TradeSettings.MapShop;

			var starMapCrashedShipId = "CHART_CRASHSHIP";
			var starMapCrashedShipRewardId = "R_CHART_CRASHSHIP";
			var scanEvent = "DISTRESS";
			var scanEventLabel = "Distress";

			var hiveMapId = "CHART_HIVE";
			var settleMentId = "CHART_SETTLE";

			//Reduce cost of settlment map chart
			Products.Find(SETTLE => SETTLE.Id == settleMentId).RecipeCost = 1;

			//Make a copy of STARCHART_A to make custom made
			var crashedShipMap = CloneMbin(Products.Find(PRODUCT => PRODUCT.Id == "STARCHART_A"));
			crashedShipMap.Id = starMapCrashedShipId;
			crashedShipMap.Icon.Filename = "TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.STARCHART.CRASHEDSHIP.dds";
			Products.Add(crashedShipMap);

			//Make a copy of STARCHART_A to make custom made
			var consumable = CloneMbin(Consumables.Find(CONSUMABLE => CONSUMABLE.ID == "STARCHART_A"));
			consumable.ID = starMapCrashedShipId;
			consumable.RewardID = starMapCrashedShipRewardId;
			Consumables.Add(consumable);

			//Make a copy of STARCHART_A to make custom made
			var reward = CloneMbin(Rewards.Find(REWARD => REWARD.Id == "R_STARCHART_A"));
			reward.List.List.RemoveRange(1, reward.List.List.Count - 1);  // only need 1 reward in clone
			var reward_item = reward.List.List[0];
			var reward_scan = reward_item.Reward as GcRewardScanEvent;
			reward.Id = starMapCrashedShipRewardId;
			reward_item.PercentageChance = 100;
			reward_item.LabelID = scanEvent;
			reward_scan.Event = scanEventLabel;
			Rewards.Add(reward);

			MapShopSettings.AlwaysPresentProducts.Add(starMapCrashedShipId);
			MapShopSettings.AlwaysPresentProducts.Add(hiveMapId);

			int size = MapShopSettings.AlwaysPresentProducts.Count;
			MapShopSettings.MinItemsForSale = size;
			MapShopSettings.MaxItemsForSale = size;
		}
	}
}

//=============================================================================
