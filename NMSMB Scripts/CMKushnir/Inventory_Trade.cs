//=============================================================================
// Alter lists of items in various stores.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Inventory_Trade : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcRealityManagerData();
		}

		//...........................................................
		
		protected void GcRealityManagerData()
		{
			var mbin = ExtractMbin<GcRealityManagerData>(
				"METADATA/REALITY/DEFAULTREALITY.MBIN"
			);
			var trade = mbin.TradeSettings;		
			#if false
			// just add some useful items to space station atm
			GcTradeDataMinor(trade.SpaceStation);
			#else
			var products = ExtractMbin<GcProductTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
			);
			var substances = ExtractMbin<GcSubstanceTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCSUBSTANCETABLE.MBIN"
			);
			#if true
			// or, add everything as optional to various vendors
			GcTradeDataAllOptional(trade.SpaceStation, products, substances);
			GcTradeDataAllOptional(trade.Shop,         products, substances);
			GcTradeDataAllOptional(trade.Ship,         products, substances);
			GcTradeDataAllOptional(trade.ExpShip,      products, substances);
			GcTradeDataAllOptional(trade.TraShip,      products, substances);
			GcTradeDataAllOptional(trade.WarShip,      products, substances);
			GcTradeDataAllOptional(trade.LoneExp,      products, substances);
			GcTradeDataAllOptional(trade.LoneTra,      products, substances);
			GcTradeDataAllOptional(trade.LoneWar,      products, substances);
			GcTradeDataAllOptional(trade.IllegalProds, products, substances);
			GcTradeDataAllOptional(trade.Scrap,        products, substances);
			#else
			// or, just add all s-class upgrades to space station always present list
			GcTradeDataSAlwaysPresent(trade.SpaceStation, products);
			#endif
			#endif
		}

		//...........................................................
		
		protected void GcTradeDataMinor( GcTradeData DATA )
		{
			DATA.MinItemsForSale = 20;  // 15
			DATA.MaxItemsForSale = 30;  // 18
			
			// Default SpaceStation never sells:
			// - CREATURE1 (Mordite)
			// - GAS1 (Sulphurine), GAS2 (Radon), GAS3 (Nitrogen)
			// - LAUNCHSUB (Di-hydrogen), LAUNCHSUB2 (Deuterium)
			// - LAVA1 (Basalt)
			// - WATERPLANT (Cyto-Phosphate), PLANT_* (growable + kelp sac)
			// - FUEL1 (Carbon), FUEL2 (Condensed Carbon)
			// - SAND1 (Silicate Powder)
			// - RED2, EX_RED, GREEN2, EX_GREEN, BLUE2, EX_BLUE
			
			var list = DATA.AlwaysPresentSubstances;
			list.Remove("YELLOW1");       // no such substance
			list.AddUnique("LAUNCHSUB");  // Di-hydrogen
			
			list = DATA.OptionalSubstances;
			list.AddUnique("GAS1");   // Sulphurine
			list.AddUnique("GAS2");   // Radon
			list.AddUnique("GAS3");   // Nitrogen
			list.AddUnique("LAVA1");  // Basalt
			list.AddUnique("FUEL1");  // Carbon
			list.AddUnique("FUEL2");  // Condensed Carbon
			list.AddUnique("SAND1");  // Silicate Powder
		}
		
		//...........................................................

		protected void GcTradeDataAllOptional( GcTradeData DATA, GcProductTable PRODUCTS, GcSubstanceTable SUBSTANCES )
		{
			DATA.MinItemsForSale += 4;
			DATA.MaxItemsForSale += 4;
			DATA.MinAmountOfProductAvailable  [(int)GcWealthClass.WealthClassEnum.Poor] *= 2;
			DATA.MaxAmountOfProductAvailable  [(int)GcWealthClass.WealthClassEnum.Poor] *= 2;
			DATA.MinAmountOfSubstanceAvailable[(int)GcWealthClass.WealthClassEnum.Poor] *= 2;
			DATA.MaxAmountOfSubstanceAvailable[(int)GcWealthClass.WealthClassEnum.Poor] *= 2;
			foreach( var product in PRODUCTS.Table ) {
				switch( product.Type.ProductCategory ) {
					//case GcProductCategory.ProductCategoryEnum.Curiosity:
						// may want to add some curiosities
					case GcProductCategory.ProductCategoryEnum.Component:
					case GcProductCategory.ProductCategoryEnum.Consumable:
					case GcProductCategory.ProductCategoryEnum.Tradeable:	
						break;
					default: continue;
				}
				DATA.OptionalProducts.AddUnique(product.Id);
			}
			foreach( var substance in SUBSTANCES.Table ) {
				if( !substance.WikiEnabled ) continue;
				DATA.OptionalSubstances.AddUnique(substance.ID);
			}
		}

		//...........................................................

		protected void GcTradeDataSAlwaysPresent( GcTradeData DATA, GcProductTable PRODUCTS )
		{
			var proc_mbin = ExtractMbin<GcProceduralTechnologyTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"
			);			
			foreach( var product in PRODUCTS.Table ) {
				if( product.DeploysInto.Value.IsNullOrEmpty() ) continue;  // must be proc gen
				
				var proc  = proc_mbin.Table.Find(PROC => PROC.ID == product.DeploysInto.Value);
				if( proc == null ) {
					Log.AddWarning($"{product.DeploysInto} not found in NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE");
				}
				if( proc.Quality != GcProceduralTechnologyData.QualityEnum.Legendary ) continue;  // must be s-class
				
				DATA.AlwaysPresentProducts.AddUnique(product.Id);
			}
		}
	}
}

//=============================================================================
