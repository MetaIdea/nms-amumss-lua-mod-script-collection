//=============================================================================
//Author: Jackty89

//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class BurnBabyBurn : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			GcTechnologyTable technology = ExtractMbin<GcTechnologyTable>("METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN");
			string incineratorId = "FLAME";

			AddIncinerator(technology, incineratorId);
			ChangeIncineratorStats(technology, incineratorId);
			AddIncineratorToWeaponTechTree(incineratorId);
		}

		//...........................................................

		protected void AddIncinerator(GcTechnologyTable technology, string incineratorId)
		{
			var tech = technology.Table.Find(TECH => TECH.ID == incineratorId);
			tech.WikiEnabled = true; //enable tech in wiki
			tech.ChargeMultiplier = 2;
			tech.FragmentCost = 2500; //add cost of 2.5k 
			tech.TechShopRarity = new GcTechnologyRarity { TechnologyRarity = GcTechnologyRarity.TechnologyRarityEnum.Common };
			tech.Rarity = new GcTechnologyRarity { TechnologyRarity = GcTechnologyRarity.TechnologyRarityEnum.Common };
		}
		protected void ChangeIncineratorStats(GcTechnologyTable technology, string incineratorId)
		{
			var addBounce = new GcStatsBonus { Stat = new GcStatsTypes { StatsType = GcStatsTypes.StatsTypeEnum.Weapon_Projectile_Bounce }, Bonus = 2, Level = 3};
			var moreProjectiles = new GcStatsBonus { Stat = new GcStatsTypes { StatsType = GcStatsTypes.StatsTypeEnum.Ship_Weapons_Guns_CoolTime }, Bonus = 1, Level = 1 };
			var addDot = new GcStatsBonus { Stat = new GcStatsTypes { StatsType = GcStatsTypes.StatsTypeEnum.Weapon_FireDOT }, Bonus = 100, Level = 1 };
			var addDotDuratiom = new GcStatsBonus { Stat = new GcStatsTypes { StatsType = GcStatsTypes.StatsTypeEnum.Weapon_FireDOT_Duration }, Bonus = 10, Level = 1 };
			var addDotDPS = new GcStatsBonus { Stat = new GcStatsTypes { StatsType = GcStatsTypes.StatsTypeEnum.Weapon_FireDOT_DPS }, Bonus = 500, Level = 3 };

			var tech = technology.Table.Find(TECH => TECH.ID == incineratorId);
			tech.StatBonuses.Find(STAT => STAT.Stat.StatsType == GcStatsTypes.StatsTypeEnum.Weapon_Projectile_Dispersion).Bonus = 15;
			tech.StatBonuses.Find(STAT => STAT.Stat.StatsType == GcStatsTypes.StatsTypeEnum.Weapon_Projectile_Dispersion).Bonus = 250;
			tech.StatBonuses.Find(STAT => STAT.Stat.StatsType == GcStatsTypes.StatsTypeEnum.Weapon_Projectile_Dispersion).Bonus = 5;
			tech.StatBonuses.Find(STAT => STAT.Stat.StatsType == GcStatsTypes.StatsTypeEnum.Weapon_Projectile_Dispersion).Bonus = 150;
			tech.StatBonuses.Find(STAT => STAT.Stat.StatsType == GcStatsTypes.StatsTypeEnum.Weapon_Projectile_Dispersion).Bonus = 12;

			tech.StatBonuses.Add(addBounce);
			tech.StatBonuses.Add(moreProjectiles);
			tech.StatBonuses.Add(addDot);
			tech.StatBonuses.Add(addDotDPS);
			tech.StatBonuses.Add(addDotDuratiom);

		}
		protected void AddIncineratorToWeaponTechTree(string incineratorId)
		{
			var tree = ExtractMbin<GcUnlockableTrees>("METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN");
			var weapTree = tree.Trees[(int)GcUnlockableItemTreeGroups.UnlockableItemTreeEnum.WeapTech];
			weapTree.Trees[0].Root.Children.Insert(0, new GcUnlockableItemTreeNode
			{
				Unlockable = incineratorId,
				Children = new()
			});

		}
	}
}

//=============================================================================
