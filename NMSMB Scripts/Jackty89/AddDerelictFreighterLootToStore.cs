//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class AddDerelictFreighterLootToStore : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			ChangeScrapDealer();
		}

		//...........................................................

		protected void ChangeScrapDealer()
		{
			GcTradeData scrapDealer = ExtractMbin<GcRealityManagerData>("METADATA/REALITY/DEFAULTREALITY.MBIN").TradeSettings.Scrap;
			string[] listOfIds =
			{
				"MEDTUBE",
				"HEATER",
				"FOORLIGHT",
				"PLANTTUBE",
				"LOCKER2",
				"ABAND_SHELF",
				"ABAND_CRATE_M",
				"ABAND_CRATE_L",
				"ABAND_CRATE_XL",
				"ABAND_CASE",
				"FOOTLOCKER",
				"ABAND_BENCH",
				"PALLET",
				"ABAND_BARREL"
			};

			foreach (string id in listOfIds)
            {
				scrapDealer.OptionalProducts.Remove(scrapDealer.OptionalProducts.Find(PRODUCT => PRODUCT.Value == id));
				scrapDealer.AlwaysPresentProducts.Add(id);
			}
			scrapDealer.MinItemsForSale = scrapDealer.AlwaysPresentProducts.Count + 1;
			scrapDealer.MaxItemsForSale = scrapDealer.AlwaysPresentProducts.Count + 1;
		}
	}
}

//=============================================================================
