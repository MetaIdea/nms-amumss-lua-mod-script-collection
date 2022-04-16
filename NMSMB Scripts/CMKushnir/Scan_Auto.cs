//=============================================================================
// Automatically flag nearby locations when get within proximity, ~2,100u.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using BuildingClassEnum = GcBuildingClassification.BuildingClassEnum;
	using ScannableTypeEnum = GcScannableComponentData.ScannableTypeEnum;
	using ScanIconTypeEnum  = GcScannerIconTypes.ScanIconTypeEnum;
	
	//=========================================================================
	
	public class Scan_Auto : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => TkAttachmentData_BlackBox());          // crashed ship
			Try(() => TkAttachmentData_Bones());             // ancient bones
			Try(() => TkAttachmentData_Settlements());       // Frontiers settlement
			Try(() => TkAttachmentData_MinorSettlements());  // minor settlement (shop)
			Try(() => TkAttachmentData_BaseSite());          // base computer, generally don't use for bases
			Try(() => TkAttachmentData_Monolith());
			Try(() => TkAttachmentData_Portal());
			Try(() => TkAttachmentData_Grave());             // traveller grave w/ glyph, Start|Portal sets all known
		}

		//...........................................................
		
		// Use (Configure) to enable:
		public static bool EnableBlackBox         = false;
		public static bool EnableBones            = false;
		public static bool EnableSettlements      = false;
		public static bool EnableMinorSettlements = false;
		public static bool EnableBaseSite         = false;
		public static bool EnableMonolith         = false;
		public static bool EnablePortal           = false;
		public static bool EnableGrave            = false;

		//...........................................................

		protected void SetGcScannableComponentData(
			TkAttachmentData MBIN,
			string           NAME,
			ScanIconTypeEnum ICON_TYPE
		){
			var scannable  = MBIN.Components.FindFirst<GcScannableComponentData>();
			if( scannable == null ) {
				scannable  = new GcScannableComponentData{
					ScanName      = NAME,
					ScanTime      = 30,
					UseModelNode  = true,
					Icon          = new(){ ScanIconType = ICON_TYPE },
					ScannableType = ScannableTypeEnum.Marker,
					CompassRangeMultiplier = 1,  // 0 - 1, gives both compass icon and range
					DisableIfInBase        = true,
					DisableIfBuildingPart  = true,
				};
				MBIN.Components.Add(scannable);
			}		

			scannable.ScanRange                  = 10000;  // max is based on a lod? range ~2,100u
			scannable.AlwaysShowRange            = 10000;
			scannable.MinDisplayDistanceOverride =   300;  // hide when get this close

			scannable.CanTagIcon        = true;
			scannable.ClearTagOnArrival = true;
		}

		//...........................................................

		protected void TkAttachmentData_BlackBox()
		{
			if( !EnableBlackBox ) return;
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DISTRESSSIGNAL/PARTS/BLACKBOX/ENTITIES/BLACKBOX.ENTITY.MBIN"
			);
			SetGcScannableComponentData(mbin, "SIGNAL_DISTRESSSIGNAL", ScanIconTypeEnum.HazardPlant);
		}

		//...........................................................

		protected void TkAttachmentData_Bones()
		{
			if( !EnableBones ) return;
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/BONEPILE/ENTITIES/BONEPILE.ENTITY.MBIN"
			);
			SetGcScannableComponentData(mbin, "UI_UNDERGROUND_BONES_NAME_L", ScanIconTypeEnum.BuriedRare);
		}

		//...........................................................

		protected void TkAttachmentData_Settlements()
		{		
			if( !EnableSettlements ) return;
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/SETTLEMENT/CONSTRUCTION_TERMINAL/ENTITIES/CONSTRUCTIONTERMINAL.ENTITY.MBIN"
			);
			SetGcScannableComponentData(mbin, "SIGNAL_SHOP", ScanIconTypeEnum.FreighterDoor);

			//mbin = ExtractMbin<TkAttachmentData>(
			//	"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/SETTLEMENT/MAYOR_TERMINAL/ENTITIES/MAYORTERMINAL.ENTITY.MBIN"
			//);
			//SetGcScannableComponentData(mbin, "SIGNAL_SHOP", ScanIconTypeEnum.FreighterDoor);
		}

		//...........................................................

		protected void TkAttachmentData_MinorSettlements()
		{		
			if( !EnableMinorSettlements ) return;
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/TRADERPARTS/LANDINGPAD/ENTITIES/LANDINGPAD.ENTITY.MBIN" // landing pad w/ walkway
			);
			SetGcScannableComponentData(mbin, "SIGNAL_SHOP", ScanIconTypeEnum.FreighterDoor);
		}

		//...........................................................

		protected void TkAttachmentData_BaseSite()
		{
			if( !EnableBaseSite ) return;
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASECOMPUTER/ENTITIES/BASECOMPUTER.ENTITY.MBIN"
			);
			// requires SIGNAL_BASE to have been added to reward table
			// see: Add_ScanEvent, Reward_Location
			SetGcScannableComponentData(mbin, "SIGNAL_BASE", ScanIconTypeEnum.FreighterTerminal);
		}

		//...........................................................

		protected void TkAttachmentData_Monolith()
		{
			if( !EnableMonolith ) return;
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/RUINPARTS/CENTERPIECE/INTERACTIONPLATFORM/ENTITIES/INTERACTIONPLATFORM.ENTITY.MBIN"
			);
			SetGcScannableComponentData(mbin, "SIGNAL_MONOLITH", ScanIconTypeEnum.Artifact);
		}

		//...........................................................

		protected void TkAttachmentData_Portal()
		{
			if( !EnablePortal ) return;
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/PORTAL.ENTITY.MBIN"
			);
			// requires SIGNAL_PORTAL to have been added to reward table
			// see: Add_ScanEvent, Reward_Location
			SetGcScannableComponentData(mbin, "SIGNAL_PORTAL", ScanIconTypeEnum.Artifact);
		}

		//...........................................................

		protected void TkAttachmentData_Grave()
		{
			if( !EnableGrave ) return;
			var mbin = ExtractMbin<TkAttachmentData>(
				"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/GRAVEINCAVE/GRAVEINCAVE/ENTITIES/GRAVEINCAVE.ENTITY.MBIN"
			);
			SetGcScannableComponentData(mbin, "SCAN_GRAVE", ScanIconTypeEnum.Grave);
		}
	}
}

//=============================================================================
