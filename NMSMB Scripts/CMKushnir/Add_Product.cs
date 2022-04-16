//=============================================================================
// Add new products, in particular those that may be required by following scripts.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Add_Product : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
		//	GcProductTable();  // broken, add icons, use diff non-food source for chips
		}

		//...........................................................

		protected void GcProductTable()
		{
			var products = ExtractMbin<GcProductTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
			);
			var consumable = ExtractMbin<GcConsumableItemTable>(
				"METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN"
			);
			FOOD_SCHIPS    (products.Table);  // craft chip mix
			FOOD_SCHIPSA   (products.Table);
			FOOD_SCHIPCOOK (products.Table, consumable.Table);  // cook cookies
			FOOD_SCHIPCOOKA(products.Table, consumable.Table);
		}

		//...........................................................

		// craft mix of 'chips' from star products, use as ingredient to make cookies
		protected void FOOD_SCHIPS( List<GcProductData> PRODUCTS )
		{
			var product = CloneMbin(PRODUCTS.Find(PRODUCT => PRODUCT.Id == "FOOD_R_BCAKEMIX"));
			product.Id            = "FOOD_SCHIPS";
			product.Name          = "STELLAR CHIPS";
			product.NameLower     = "Stellar Chips";
			product.Icon.Filename = "";
			product.CraftAmountMultiplier = 10;
			product.EggModifierIngredient = false;
			product.IsCraftable           = true;
			product.Consumable            = false;
			product.Requirements.Clear();
			product.Requirements.AddProduct  ("RED2",   1);  // Cadmium
			product.Requirements.AddProduct  ("GREEN2", 1);  // Emeril
			product.Requirements.AddSubstance("BLUE2",  1);  // Indium
			PRODUCTS.Add(product);
		}

		//...........................................................

		// craft mix of 'chips' from star products, use as ingredient to make cookies
		protected void FOOD_SCHIPSA( List<GcProductData> PRODUCTS )
		{
			var product = CloneMbin(PRODUCTS.Find(PRODUCT => PRODUCT.Id == "FOOD_R_BCAKEMIX"));
			product.Id            = "FOOD_SCHIPSA";
			product.Name          = "ACTIVATED STELLAR CHIPS";
			product.NameLower     = "Activated Stellar Chips";
			product.Icon.Filename = "";
			product.CraftAmountMultiplier = 10;
			product.EggModifierIngredient = false;
			product.IsCraftable           = true;
			product.Consumable            = false;
			product.Requirements.Clear();
			product.Requirements.AddProduct  ("EX_RED",   1);  // Activated Cadmium
			product.Requirements.AddProduct  ("EX_GREEN", 1);  // Activated Emeril
			product.Requirements.AddSubstance("EX_BLUE",  1);  // Activated Indium
			PRODUCTS.Add(product);
		}

		//...........................................................

		// cook cookies from mix of star 'chips'
		protected void FOOD_SCHIPCOOK( List<GcProductData> PRODUCTS, List<GcConsumableItem> CONSUMABLES )
		{
			var product = CloneMbin(PRODUCTS.Find(PRODUCT => PRODUCT.Id == "FOOD_CM_APPLE"));
			product.Id            = "FOOD_SCHIPCOOK";
			product.Name          = "STELLAR CHIP COOKIES";
			product.NameLower     = "Stellar Chip Cookies";
			product.Icon.Filename = "";
			product.CraftAmountMultiplier = 10;
			product.EggModifierIngredient = false;
			PRODUCTS.Add(product);
			
			// RewardID = "DE_FOOD_ENERGY2"
			var consumable = CloneMbin(CONSUMABLES.Find(CONSUMABLE => CONSUMABLE.ID == "FOOD_R_BCAKEMIX"));
			consumable.ID  = "FOOD_SCHIPCOOK";
			CONSUMABLES.Add(consumable);
		}

		//...........................................................

		// cook cookies from mix of star 'chips'
		protected void FOOD_SCHIPCOOKA( List<GcProductData> PRODUCTS, List<GcConsumableItem> CONSUMABLES )
		{
			var product = CloneMbin(PRODUCTS.Find(PRODUCT => PRODUCT.Id == "FOOD_CM_APPLE"));
			product.Id            = "FOOD_SCHIPCOOKA";
			product.Name          = "ACTIVATED STELLAR CHIP COOKIES";
			product.NameLower     = "Activated Stellar Chip Cookies";
			product.Icon.Filename = "";
			product.CraftAmountMultiplier = 10;
			product.EggModifierIngredient = false;
			PRODUCTS.Add(product);

			// RewardID = "DE_FOOD_JETPACK"
			var consumable = CloneMbin(CONSUMABLES.Find(CONSUMABLE => CONSUMABLE.ID == "FOOD_CM_APPLE"));
			consumable.ID  = "FOOD_SCHIPCOOKA";
			CONSUMABLES.Add(consumable);
		}
	}
}

//=============================================================================
