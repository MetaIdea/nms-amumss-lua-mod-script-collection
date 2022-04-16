//=============================================================================
// Make all seasonal and twitch specials available at quicksilver vendor.
// note:
// - items should be unlocked in Binaries/SETTINGS/GCUSERSETTINGSDATA.MXML first
// - seasonal ships allow claim and exchange.
// - twitch ships and guns only allow exchange, not claim.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Rewards_Special : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcUnlockableSeasonRewards());
			Try(() => GcPurchaseableSpecials());
		}

		//...........................................................

		protected void GcUnlockableSeasonRewards()
		{
			var mbin = ExtractMbin<GcUnlockableSeasonRewards>(
				"METADATA/REALITY/TABLES/UNLOCKABLESEASONREWARDS.MBIN"
			);
			foreach( var reward in mbin.Table ) {			
				reward.MustBeUnlocked = false;
				for( var i = 0; i < reward.SeasonIds.Count; ++i ) reward.SeasonIds[i] =  0;
				for( var i = 0; i < reward.StageIds .Count; ++i ) reward.StageIds[i]  = -1;
			}
		}

		//...........................................................

		protected void GcCustomisationDescriptorGroups()
		{
			var mbin = ExtractMbin<GcCustomisationDescriptorGroups>(
				"METADATA/GAMESTATE/PLAYERDATA/CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN"
			);
			foreach( var group in mbin.DescriptorGroups ) {
				group.HiddenInCustomiser = false;  // xbox helmet, no longer works
			}
		}
		
		//...........................................................

		protected void GcPurchaseableSpecials()
		{
			// product lookup table, mainly to set purchaseable.IsConsumable
			var products = ExtractMbin<GcProductTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
			);
	
			// pull ProductId from twitch rewards
			var twitch = ExtractMbin<GcUnlockableTwitchRewards>(
				"METADATA/REALITY/TABLES/UNLOCKABLETWITCHREWARDS.MBIN"
			);		

			// add twitch to purchaseable
			// adding to seasonal doesn't work, says you have to complete mission #, regardless of #
			var purchaseable = ExtractMbin<GcPurchaseableSpecials>(
				"METADATA/REALITY/TABLES/PURCHASEABLESPECIALS.MBIN"
			);
			
			purchaseable.Table.ForEach(SPECIAL => SPECIAL.MissionTier = -1);	
			
			foreach( var reward in twitch.Table ) {
				var reward_id = reward.ProductId.Value;
				var purchase  = purchaseable.Table.Find(ITEM => ITEM.ID == reward_id);
				if( purchase != null ) continue;  // already purchaseable special

				var product  = products.Table.Find(PRODUCT => PRODUCT.Id == reward_id);
				if( product == null ) continue;  // no product ?

				var consume = product.Consumable;
				if( reward_id.Contains("_FIREW")  // fireworks
				)	consume = true;               // allows specifying # to buy
				
				purchaseable.Table.Add(new(){
					ID           = reward_id,
					ShopNumber   =  1,
					MissionTier  = -1,
					IsConsumable = consume
				});
			}
		}
	}
}

//=============================================================================
