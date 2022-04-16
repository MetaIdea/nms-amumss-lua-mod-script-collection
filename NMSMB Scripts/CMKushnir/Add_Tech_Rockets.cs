//=============================================================================
// Add new (proc gen) tech upgrade(s) for ship rocket launcher.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using StatsTypeEnum      = GcStatsTypes.StatsTypeEnum;
	using WeightingCurveEnum = GcWeightingCurve.WeightingCurveEnum;

	//=========================================================================

	public class Add_Tech_Rockets : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			//LanguageMbinPrefix = "ROCKET";  // add new language ID's to LANGUAGE/ROCKET_*.MBIN, default is LANGUAGE/NMSMB_*.MBIN
			GcTechnologyTable();              // fixed   upgrades
			GcProceduralTechnologyTable();    // procgen upgrades
			GcRealityManagerData();           // sell in space station shop
			GcUnlockableTrees();              // add fixed to ship tech tree
		}

		//...........................................................

		public static bool AddShipRocketTech     = false;  // add fixed spec upgrade to ship tech tree
		public static bool AddShipRocketProcTech = true;   // add proc gen tech upgrade(s)

		//...........................................................
		
		protected void GcTechnologyTable()
		{
			if( !AddShipRocketTech ) return;			
			var mbin = ExtractMbin<GcTechnologyTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
			);
			
			var dmg = CloneMbin(mbin.Table.Find(TECH => TECH.ID == "UT_ROCKETS"));  // clone Large Rocket Tubes
			dmg.ID          = "UT_ROCKETS_DMG";
			dmg.Name        = "HIGH DAMAGE ROCKETS";
			dmg.NameLower   = "High Damage Rockets";
			dmg.Description = "High yield warheads";
			dmg.StatBonuses.Clear();
			dmg.StatBonuses.Add(new(){
				Stat = new GcStatsTypes{ StatsType = StatsTypeEnum.Ship_Weapons_Guns_Damage },
				Bonus = 100000,  // ~1,500 %
				Level = 1
			});
			dmg.StatBonuses.Add(new(){
				Stat = new GcStatsTypes{ StatsType = StatsTypeEnum.Ship_Weapons_Guns_Damage_Radius },
				Bonus = 5,  // not displayed in game, end up damage ourselves if too high
				Level = 1
			});
			dmg.StatBonuses.Add(new(){
				Stat = new GcStatsTypes{ StatsType = StatsTypeEnum.Ship_Weapons_Guns_CoolTime },
				Bonus = 0.1f,  // 90 %
				Level = 1
			});
			
			mbin.Table.Add(dmg);
		}

		//...........................................................
		
		protected void GcProceduralTechnologyTable()
		{
			if( !AddShipRocketProcTech ) return;
			// map existing text to rocket upgrade name gen text options.
			// by using existing id's we can support all languages.
			// note: x-class uses RARE_ADJ
			var lang_map = new Tuple<string,string> [] {
				new("UP_BOLT_COMMON_ADJ_1",  "UP_SHIPROCKETS_RARE_ADJ_1"),   // "Well-Crafted"
				new("UP_BOLT_COMMON_ADJ_3",  "UP_SHIPROCKETS_RARE_ADJ_2"),   // "Double"
				new("UP_BOLT_COMMON_ADJ_4",  "UP_SHIPROCKETS_RARE_ADJ_3"),   // "Hybrid"
				new("UP_BOLT_COMMON_ADJ_5",  "UP_SHIPROCKETS_RARE_ADJ_4"),   // "Efficient"
				new("UP_BOLT_EPIC_ADJ_5",    "UP_SHIPROCKETS_RARE_ADJ_5"),   // "Electron"
				new("UP_BOLT_RARE_ADJ_1",    "UP_SHIPROCKETS_RARE_ADJ_6"),   // "Vacuum"
				new("UP_BOLT_SCLASS_ADJ_1",  "UP_SHIPROCKETS_RARE_ADJ_7"),   // "Ancient"
				new("UP_BOOST_COMMON_ADJ_4", "UP_SHIPROCKETS_RARE_ADJ_8"),   // "Specialist"
				new("UP_BOOST_EPIC_ADJ_1",   "UP_SHIPROCKETS_RARE_ADJ_9"),   // "Hybrid"
				new("UP_BOOST_RARE_ADJ_4",   "UP_SHIPROCKETS_RARE_ADJ_10"),  // "Bypass"
				new("UP_BOLT_COMP_1",        "UP_SHIPROCKETS_COMP_1"),       // "Ioniser"
				new("UP_BOLT_COMP_5",        "UP_SHIPROCKETS_COMP_2"),       // "Energy Lattice"
				new("UP_BOLT_COMP_6",        "UP_SHIPROCKETS_COMP_3"),       // "Projectile Web"
				new("UP_CANNON_COMP_2",      "UP_SHIPROCKETS_COMP_4"),       // "Plasma Unit"
				new("UP_GREN_COMP_5",        "UP_SHIPROCKETS_COMP_5"),       // "Gas Expander"
				new("UP_HYPERDRIVE_COMP_2",  "UP_SHIPROCKETS_COMP_6"),       // "Antimatter Injector"
				new("UP_HYPERDRIVE_COMP_3",  "UP_SHIPROCKETS_COMP_7"),       // "Reality Destabiliser"
				new("UP_LAUNCHER_COMP_3",    "UP_SHIPROCKETS_COMP_8"),       // "Launch Computer"
				new("UP_LAUNCHER_COMP_10",   "UP_SHIPROCKETS_COMP_9"),       // "Gravity Shifter"
				new("UP_LAUNCHER_COMP_8",    "UP_SHIPROCKETS_COMP_10"),      // "Gyroscope"
			};

			// add a tech template
			var tech_mbin = ExtractMbin<GcTechnologyTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
			);
			var template = CloneMbin(tech_mbin.Table.Find(TECH => TECH.ID == "T_SHIPGUN"));		
			template.ID            = "T_SHIPROCKETS";
			template.Group         = "SHIP_ROCKETS_NAME_L";
			template.RequiredTech  = "SHIPROCKETS";
			template.Icon.Filename = "TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/RENDER.ROCKETMOD.DDS";
			template.BaseStat.StatsType = StatsTypeEnum.Ship_Weapons_Rockets;
			tech_mbin.Table.Add(template);
			
			// add proc tech that uses new template
			var proc_mbin = ExtractMbin<GcProceduralTechnologyTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"
			);		
			var proc = CloneMbin(proc_mbin.Table.Find(PROC => PROC.ID == "UP_SGUNX"));  // Illegal
			proc.ID          = "UP_SROCKETSX";
			proc.Template    = "T_SHIPROCKETS";
			proc.Group       = "SHIP_ROCKETS_NAME_L";
			proc.Name        = "UP_SHIPROCKETS";  // UP_SHIPGUN, need to create UP_SHIPROCKETS_COMP_*, UP_SHIPROCKETS_*_ADJ_* strings
			proc.NameLower   = "SHIP_ROCKETS_NAME_L";
			proc.Description = "UP_SROCKETSX_DESC";
			proc.NumStatsMin = 2;
			proc.NumStatsMax = 3;
			proc.StatLevels.Clear();
			proc.StatLevels.Add(new() {
				Stat           = new GcStatsTypes{ StatsType = StatsTypeEnum.Ship_Weapons_Guns_Damage },
				ValueMin       =  10000 / 4,
				ValueMax       = 100000 / 4,
				WeightingCurve = new GcWeightingCurve{ WeightingCurve = WeightingCurveEnum.MaxIsRare },
				AlwaysChoose   = true,
			});
			proc.StatLevels.Add(new() {
				Stat           = new GcStatsTypes{ StatsType = StatsTypeEnum.Ship_Weapons_Guns_Damage_Radius },
				ValueMin       = 0.25f,
				ValueMax       = 1.00f,
				WeightingCurve = new GcWeightingCurve{ WeightingCurve = WeightingCurveEnum.MaxIsRare },
			});
			proc.StatLevels.Add(new() {
				Stat           = new GcStatsTypes{ StatsType = StatsTypeEnum.Ship_Weapons_Guns_CoolTime },
				ValueMin       = 0.9f,
				ValueMax       = 0.8f,
				WeightingCurve = new GcWeightingCurve{ WeightingCurve = WeightingCurveEnum.MinIsRare },
			});			
			proc_mbin.Table.Add(proc);
			
			// add proc tech language text used when building instance name
			foreach( var identifier in NMS.Game.Language.Identifier.List ) {
				if( identifier != Game.Language.Identifier ) continue;  // comment out to add to all lang mbin's		
				foreach( var pair in lang_map ) {
					var data = GetLanguageData(identifier, pair.Item1);       // get existing text for existing id
					SetLanguageText(data.Identifier, pair.Item2, data.Text);  // set existing text for new id
				}
			}

			// add proc tech to products
			var prod_mbin = ExtractMbin<GcProductTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
			);
			var prod = CloneMbin(prod_mbin.Table.Find(PROD => PROD.Id == "U_SHIPGUNX"));
			prod.Id            =  "U_SROCKETSX";
			prod.DeploysInto   = "UP_SROCKETSX";
			prod.Name          = "SUSPICIOUS ROCKET LAUNCHER MODULE";
			prod.NameLower     = "Suspicious Rocket Launcher Module";
			prod.Description   =
				"A <SPECIAL>black-market modification<> for the <TECHNOLOGY>Starship Rocket Launcher<>. Use <VAL_ON><IMG>FE_ALT1<><> to begin upgrade <VAL_ON>installation process<>.\r\n"
			+	"The module is flexible, and exact upgrade statistics are <SPECIAL>unknown<> until installation is complete.\r\n"
			+	"Potential improvements include: <STELLAR>damage<>, <STELLAR>radius<> and <STELLAR>overheat times<>."
			;
			prod_mbin.Table.Add(prod);
		}

		//...........................................................

		protected void GcRealityManagerData()
		{
			var mbin = ExtractMbin<GcRealityManagerData>(
				"METADATA/REALITY/DEFAULTREALITY.MBIN"
			);
			if( AddShipRocketTech ) {
				mbin.StationTechShops.AvailableTech.Add("UT_ROCKETS_DMG");
			}
			if( AddShipRocketProcTech ) {  // only get from warriors
				mbin.TradeSettings.LoneWar.AlwaysPresentProducts.Add("U_SROCKETSX");
				mbin.TradeSettings.WarShip.AlwaysPresentProducts.Add("U_SROCKETSX");
			}
		}
			
		//...........................................................

		protected void GcUnlockableTrees()
		{
			if( !AddShipRocketTech ) return;
			var mbin = ExtractMbin<GcUnlockableTrees>(
				"METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN"
			);
			var ship_tree   = mbin.Trees[(int)GcUnlockableItemTreeGroups.UnlockableItemTreeEnum.ShipTech];
			var ship_guns   = ship_tree.Trees[0].Root.Children.Find(UNLOCKABLE => UNLOCKABLE.Unlockable == "SHIPGUN1");
			var ship_rocket = ship_guns.Children.Find(UNLOCKABLE => UNLOCKABLE.Unlockable == "SHIPROCKETS");
			ship_rocket.Children.Add(new GcUnlockableItemTreeNode{
				Unlockable = "UT_ROCKETS_DMG",
				Children   = new()
			});
		}
	}
}

//=============================================================================
