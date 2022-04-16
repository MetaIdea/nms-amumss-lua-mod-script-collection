//=============================================================================
// Set all unlockable items as known when starting a new game.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using TradeCategoryEnum = GcTradeCategory.TradeCategoryEnum;

	//=========================================================================

	public class Start_KnowAll : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcDefaultSaveData();
		}

		//...........................................................

		protected void GcDefaultSaveData()
		{
			var mbin = ExtractMbin<GcDefaultSaveData>(
				"METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN"
			);
			Add_AllProducts    (mbin.State);
			Add_AllTechnologies(mbin.State);
			Add_Known_Recipes  (mbin.State);
			// todo: don't try to set known specials, buggy, just aquire|buy them
		}

		//...........................................................

		protected void Add_AllProducts( GcPlayerStateData STATE )
		{
			var mbin = ExtractMbin<GcProductTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
			);
			foreach( var product in mbin.Table ) {
				if( product.TradeCategory.TradeCategory != TradeCategoryEnum.SpecialShop &&
				  (!product.Consumable || !product.Requirements.IsNullOrEmpty())
				)	STATE.KnownProducts.AddUnique(product.Id);
			}
		}
		
		//...........................................................

		protected void Add_AllTechnologies( GcPlayerStateData STATE )
		{
			var mbin = ExtractMbin<GcTechnologyTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
			);
			foreach( var technology in mbin.Table ) {
				if( technology.Name.Value != "TEMPLATE_NAME" &&
				   !technology.ID.Value.Contains("_DMG")
				)	STATE.KnownTech.AddUnique(technology.ID);
			}
		}

		//...........................................................

		protected void Add_Known_Recipes( GcPlayerStateData STATE )
		{
			var mbin = Game.PCBANKS.ExtractMbin<GcRecipeTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN"
			);
			foreach( var recipe in mbin.Table ) {
				STATE.KnownRefinerRecipes.AddUnique(recipe.Id);
			}
		}
	}
}

//=============================================================================
