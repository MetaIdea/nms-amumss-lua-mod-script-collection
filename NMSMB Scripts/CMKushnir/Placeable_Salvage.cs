//=============================================================================
// Make ship salvage terminal (on space station) buildable anywhere.
// If construct in a base then need to supply power.
// If construct outside a base then don't need to supply power
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using BaseTerrainEditShapeEnum = GcBaseBuildingEntry.BaseTerrainEditShapeEnum;
	
	//=========================================================================
	
	public class Placeable_Salvage : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Try(() => GcAISpaceshipGlobals());
			GcProductTable();
			// generally one of:
			GcPurchaseableBuildingBlueprints();  // buy after start
			GcDefaultSaveData();                 // optional: known at start
		}

		//...........................................................

		// tweak crashed ship settings e.g. salvage value, broken slots, ...
		protected void GcAISpaceshipGlobals()
		{
			var mbin = ExtractMbin<GcAISpaceshipGlobals>(
				"GCAISPACESHIPGLOBALS.GLOBAL.MBIN"
			);
			mbin.SalvageValueMultiplier                  = 0.8f;  // 0.6
			mbin.CrashedShipMinNonBrokenSlots            = 4;     // 3
			mbin.CrashedShipBrokenSlotChance             = 0.6f;  // 0.75
			mbin.CrashedShipBrokenTechChance             = 0.5f;  // 0.7
			mbin.CrashedShipRepairSlotCostIncreaseFactor = 1.2f;  // 1.3
			mbin.CrashedShipGeneralCostDiscount          = 0.8f;  // 0.7
			mbin.CrashedShipTechSlotsCostDiscount        = 0.2f;  // 0.1
			mbin.AbandonedSystemShipSpawnProbablity      = 2;     // 0
		}

		//...........................................................
		// ID's need to be <= 16 char in length, so we use "SALVAGE_TERM".
		// File paths use SHIPSALVAGETERMINAL to be consistant w/ existing mbins names.
		// Clone DRESSING_TABLE (CUSTOMISESTATION) for required sections and files
		// as it's close in size and shape to the salvage terminal.
		//...........................................................
		
		protected static readonly string SourceProductID = "DRESSING_TABLE";
		protected static readonly string SourcePartID    = "_" + SourceProductID;
		protected static readonly string SourceFileName  = "CUSTOMISESTATION";	
		
		public static readonly string ProductID = "SALVAGE_TERM"; 
		public static readonly string PartID    = "_" + ProductID; 
		public static readonly string FileName  = "SHIPSALVAGETERMINAL"; 

		//...........................................................
			
		// have it show up in build quick menu as a placeable item
		protected void GcProductTable()
		{
			var mbin = ExtractMbin<GcProductTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
			);
			
			var dressing_table = mbin.Table.Find(OBJECT => OBJECT.Id == SourceProductID);
			var salvage_term   = CloneMbin(dressing_table);

			salvage_term.Id                = ProductID;
			salvage_term.Name              = "SALVAGE";
			salvage_term.NameLower         = "Salvage";
			salvage_term.Subtitle.Value    = "Salvage";
			salvage_term.Description.Value = "UI_SALVAGE_DESC";
			salvage_term.Icon.Filename     = "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/RACESHIPSTART.DDS";

			mbin.Table.Add(salvage_term);
			
			GcBaseBuildingPartsTable();
			GcBaseBuildingTable();
		}

		//...........................................................

		// add a part that points to the actual scene data
		protected void GcBaseBuildingPartsTable()
		{
			var mbin = ExtractMbin<GcBaseBuildingPartsTable>(
				"METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN"
			);
			
			var dressing_table = mbin.Parts.Find(OBJECT => OBJECT.ID == SourcePartID);
			var salvage_term   = CloneMbin(dressing_table);
			
			// use existing dressing table files for other files:
			// Inactive = CUSTOMISESTATION_LOD.SCENE.MBIN
			// SHIPSALVAGETERMINAL.SCENE.MBIN already exists
			salvage_term.ID = PartID;
			salvage_term.StyleModels[0].Model.Filename = salvage_term.StyleModels[0].Model.Filename.Value.Replace(SourceFileName, FileName);
			
			mbin.Parts.Add(salvage_term);
		}

		//...........................................................

		// add a buildable that points to the model | placement scene,
		// put in both old BASEBUILDINGTABLE and new BASEBUILDINGOBJECTSTABLE
		protected void GcBaseBuildingTable()
		{
			var paths = new [] {
				"METADATA/REALITY/TABLES/BASEBUILDINGTABLE.MBIN",
				"METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN"
			};
			foreach( var path in paths ) {
				var mbin = ExtractMbin<GcBaseBuildingTable>(path);
	
				var dressing_table = mbin.Objects.Find(OBJECT => OBJECT.ID == SourceProductID);
				var salvage_term   = CloneMbin(dressing_table);
	
				salvage_term.ID                    = ProductID;
				salvage_term.BaseTerrainEditShape  = BaseTerrainEditShapeEnum.Cylinder;
				salvage_term.IsFromModFolder       = true;
				salvage_term.PlanetBaseLimit       = 0;
				salvage_term.BuildableOnPlanetBase = true;
				salvage_term.BuildableOnSpaceBase  = true;
				salvage_term.BuildableOnFreighter  = true;
				salvage_term.BuildableOnPlanet     = true;
				salvage_term.EnableCollision       = true;
				salvage_term.CanPlaceOnItself      = true;
				salvage_term.CanRotate3D           = true;
				salvage_term.CanScale              = true;
				salvage_term.CanChangeColour       = true;
				salvage_term.CanChangeMaterial     = true;
	
				if( path.Contains("BASEBUILDINGTABLE") ) {
					// use existing dressing table files for other files:
					// PlacementScene = CUSTOMISESTATION_SNAPPOINT.SCENE.MBIN
					// SnapPoints     = CUSTOMISESTATION_SNAPPOINT.SCENE.MBIN
					// InactiveModel  = CUSTOMISESTATION_LOD.SCENE.MBIN
					// SHIPSALVAGETERMINAL.SCENE.MBIN already exists
					salvage_term.PlacementScene.Filename = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIPSALVAGETERMINAL.SCENE.MBIN";
				}
				else {  // BASEBUILDINGOBJECTSTABLE
					// only PlacementScene needs to be defined.
					// need to create SHIPSALVAGETERMINAL_PLACEMENT.SCENE.MBIN
					salvage_term.PlacementScene.Filename = dressing_table.PlacementScene.Filename.Value.Replace(SourceFileName, FileName);  // placement scene
					TkSceneNodeData_Placement(dressing_table.PlacementScene.Filename, salvage_term.PlacementScene.Filename);
				}
				
				mbin.Objects.Add(salvage_term);
			}
		}

		//...........................................................

		// create a new placement scene
		protected void TkSceneNodeData_Placement( string SOURCE_FILENAME, string TARGET_FILENAME )
		{
			var mbin  = CloneMbin<TkSceneNodeData>(SOURCE_FILENAME, TARGET_FILENAME);	
			mbin.Name = mbin.Name.Value.Replace(SourceFileName, FileName);
			var node  = mbin.Children.Find(CHILD => CHILD.Name == "PlacementData");
			
			// need to create SHIPSALVAGETERMINAL_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN
			var dressing_table_entity = node.Attributes[0].Value.Value;
			node.Attributes[0].Value  = dressing_table_entity.Replace(SourceFileName, FileName);
			
			TkAttachmentData_PlacementEntity(dressing_table_entity, node.Attributes[0].Value);
		}
		
		//...........................................................
		
		// create a new placement entity
		protected void TkAttachmentData_PlacementEntity( string SOURCE_FILENAME, string TARGET_FILENAME )
		{
			var mbin      = CloneMbin<TkAttachmentData>(SOURCE_FILENAME, TARGET_FILENAME);		
			var placement = mbin.Components.FindFirst<GcBasePlacementComponentData>();
			placement.Rules[0].PartID = PartID;  // from GcBaseBuildingPartsTable
		}
		
		//...........................................................

		// add as purchasable blueprint
		protected void GcPurchaseableBuildingBlueprints()
		{
			var mbin = ExtractMbin<GcPurchaseableBuildingBlueprints>(
				"METADATA/REALITY/TABLES/PURCHASEABLEBUILDINGBLUEPRINTS.MBIN"
			);
			mbin.Table.Add(new(){
				ProductID = ProductID,
				GroupId   = 0,
			});
		}

		//...........................................................

		// add as known product, so can build right-away in new game
		protected void GcDefaultSaveData()
		{
			var paths = new [] {
				"METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
				"METADATA/GAMESTATE/DEFAULTSAVEDATACREATIVE.MBIN"
			};		
			foreach( var path in paths ) {
				var mbin = ExtractMbin<GcDefaultSaveData>(path);
				mbin.State.KnownProducts.AddUnique(ProductID);
			}
		}
	}
}

//=============================================================================
