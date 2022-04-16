//=============================================================================
// Make egg sequencer (on nexus) buildable anywhere.
// If construct in a base then need to supply power.
// If construct outside a base then don't need to supply power.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	using BaseTerrainEditShapeEnum = GcBaseBuildingEntry.BaseTerrainEditShapeEnum;
	
	//=========================================================================

	public class Placeable_Egg_Sequencer : cmk.NMS.ModScript
	{
		protected override void Execute()
		{			
			GcProductTable();
			GcPurchaseableBuildingBlueprints();
			GcDefaultSaveData();  // optional
		}

		//...........................................................
			
		protected void GcProductTable()
		{
			var mbin = ExtractMbin<GcProductTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
			);		
			var clone = CloneMbin(mbin.Table.Find(PRODUCT => PRODUCT.Id == "DRESSING_TABLE"));

			clone.Id                = "EGGMACHINE";
			clone.Name              = "UI_EGG_MODIFIER_NAME";
			clone.NameLower         = "UI_EGG_MODIFIER_NAME_L";
			clone.Subtitle.Value    = "UI_EGG_MODIFIER_NAME_L";
			clone.Description.Value = "UI_EGG_MODIFIER_NAME_L";
			clone.Icon.Filename     = "TEXTURES/UI/FRONTEND/ICONS/PRODUCTS/PRODUCT.CREATUREEGG.DDS";

			mbin.Table.Add(clone);

			GcBaseBuildingPartsTable();
			GcBaseBuildingTable();
		}

		//...........................................................

		protected void GcBaseBuildingPartsTable()
		{
			var mbin = ExtractMbin<GcBaseBuildingPartsTable>(
				"METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN"
			);		
			var clone = CloneMbin(mbin.Parts.Find(OBJECT => OBJECT.ID == "_DRESSING_TABLE"));
			
			clone.ID = "_EGGMACHINE";
			clone.StyleModels[0].Model.Filename = "MODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/EGGMACHINE.SCENE.MBIN";
			
			mbin.Parts.Add(clone);
		}

		//...........................................................

		protected void GcBaseBuildingTable()
		{
			var paths = new [] {
				"METADATA/REALITY/TABLES/BASEBUILDINGTABLE.MBIN",
				"METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN"
			};		
			foreach( var path in paths ) {
				var mbin   = ExtractMbin<GcBaseBuildingTable>(path);	
				var source = mbin.Objects.Find(OBJECT => OBJECT.ID == "DRESSING_TABLE");
				var clone  = CloneMbin(source);
	
				clone.ID                    = "EGGMACHINE";
				clone.BaseTerrainEditShape  = BaseTerrainEditShapeEnum.Cylinder;
				clone.IsFromModFolder       = true;
				clone.PlanetBaseLimit       = 0;
				clone.BuildableOnPlanetBase = true;
				clone.BuildableOnSpaceBase  = true;
				clone.BuildableOnFreighter  = true;
				clone.BuildableOnPlanet     = true;
				clone.EnableCollision       = true;
				clone.CanPlaceOnItself      = true;
				clone.CanRotate3D           = true;
				clone.CanScale              = true;
				clone.CanChangeColour       = true;
				clone.CanChangeMaterial     = true;
	
				if( path.Contains("BASEBUILDINGTABLE") ) {
					clone.PlacementScene.Filename = "MODELS/SPACE/NEXUS/PARTS/RIGHTSECTION/EGGMACHINE.SCENE.MBIN";
				}
				else {  // BASEBUILDINGOBJECTSTABLE
					clone.PlacementScene.Filename = clone.PlacementScene.Filename.Value.Replace("CUSTOMISESTATION", "EGGMACHINE");
					TkSceneNodeData_Placement(source.PlacementScene.Filename, clone.PlacementScene.Filename);
				}
				
				mbin.Objects.Add(clone);
			}
		}

		//...........................................................

		protected void TkSceneNodeData_Placement( string SOURCE, string TARGET )
		{
			var mbin  = CloneMbin<TkSceneNodeData>(SOURCE, TARGET);	
			mbin.Name = mbin.Name.Value.Replace("CUSTOMISESTATION", "EGGMACHINE");
			
			var node   = mbin.Children.Find(CHILD => CHILD.Name == "PlacementData");
			var source = node.Attributes[0].Value.Value;
			node.Attributes[0].Value = source.Replace("CUSTOMISESTATION", "EGGMACHINE");
			
			TkAttachmentData_PlacementEntity(source, node.Attributes[0].Value);
		}
		
		//...........................................................
		
		protected void TkAttachmentData_PlacementEntity( string SOURCE, string TARGET )
		{
			var mbin = CloneMbin<TkAttachmentData>(SOURCE, TARGET);		
			var data = mbin.Components.FindFirst<GcBasePlacementComponentData>();
			data.Rules[0].PartID = "_EGGMACHINE";
		}
		
		//...........................................................

		protected void GcPurchaseableBuildingBlueprints()
		{
			var mbin = ExtractMbin<GcPurchaseableBuildingBlueprints>(
				"METADATA/REALITY/TABLES/PURCHASEABLEBUILDINGBLUEPRINTS.MBIN"
			);
			mbin.Table.Add(new(){
				ProductID = "EGGMACHINE",
				GroupId   = 0,
			});
		}

		//...........................................................

		protected void GcDefaultSaveData()
		{
			var paths = new [] {
				"METADATA/GAMESTATE/DEFAULTSAVEDATA.MBIN",
				"METADATA/GAMESTATE/DEFAULTSAVEDATACREATIVE.MBIN"
			};		
			foreach( var path in paths ) {
				var mbin = ExtractMbin<GcDefaultSaveData>(path);
				mbin.State.KnownProducts.AddUnique("EGGMACHINE");
			}
		}
	}
}

//=============================================================================
