//=============================================================================
// Recurse through all loose files for this script, and for each ./TEXTURES/*/*.dds
// create|mod the required mbin's so that the dds can be used as a decal|poster in-game.

// Given:
// nmsmb/Scripts/Mod/Add_Decal/TEXTURES/NMSMB/POSTERS/XOSTIR/Bubble Time.dds
// nmsmb/Scripts/Mod/Add_Decal/TEXTURES/NMSMB/POSTERS/XOSTIR/Bubble Time_icon.dds
// Will add to pak as:
// TEXTURES/NMSMB/POSTERS/XOSTIR/BUBBLETIME.DDS
// TEXTURES/NMSMB/POSTERS/XOSTIR/BUBBLETIME_ICON.DDS
// Will generate and add to pak:
// MODELS/NMSMB/POSTERS/XOSTIR/BUBBLETIME/BUBBLETIME.DESCRIPTOR.MBIN
// MODELS/NMSMB/POSTERS/XOSTIR/BUBBLETIME/BUBBLETIME.SCENE.MBIN
// MODELS/NMSMB/POSTERS/XOSTIR/BUBBLETIME/BUBBLETIME.MATERIAL.MBIN
// MODELS/NMSMB/POSTERS/XOSTIR/BUBBLETIME/BUBBLETIME_PLACEMENT.SCENE.MBIN
// MODELS/NMSMB/POSTERS/XOSTIR/BUBBLETIME/ENTITIES/PLACEMENTDATA.ENTITY.MBIN
//
// - The icon dds is optional, but desired if main dds not a square, in order
//   to get correct aspect ratio in build menu (not required for placement).
// - Using Paint.NET saving dds as BC3 (Linear, DXT5) seems to work.
//   For icons take main dds, expand canvas to make width == height (centered),
//   then fill surround w/ white & alpha = 0, then resize to 256x256.
// - Wil use existing geometry mbin's from clone source.
// - Will add entries to products, parts, building tables.
//=============================================================================

namespace cmk.NMS.Scripts.Mod
{
	public class Add_Decal : cmk.NMS.ModScript
	{
		protected override void Execute()
		{
			Decals();
		}

		//...........................................................

		protected struct DecalData {
			public NMS.PAK.Item.Path Dds;     // main .dds in pak
			public NMS.PAK.Item.Path Icon;    // icon .dds in pak, may be same as Dds
			public string            Name;    // name from disk path (case sensitive w/ spaces)
			public int               Width;   // .dds width  (pixels)
			public int               Height;  // .dds height (pixels)
			public string            Id;      // product
			public string            Part;    // '_' + Id
			public NMS.ModelPaths    Model;
		}
		
		//...........................................................

		protected void Decals()
		{
			var files = GetLoose();  // get loose files for this script
			
			for( var i = 0; i < files.Count; ++i ) {
				var  file = files[i];
				
				if( !file.Key.StartsWith("TEXTURES/", StringComparison.OrdinalIgnoreCase) ||
				    !file.Key.EndsWith  (".DDS",      StringComparison.OrdinalIgnoreCase) || 
				     file.Key.EndsWith  ("_ICON.DDS", StringComparison.OrdinalIgnoreCase)
				)	continue;

				var id = $"DECAL_MOD{i:d5}";
				
				var image  = Pfim.Pfim.FromFile(file.Value) as Pfim.Dds;
				var width  = image?.Width  ?? 0;
				var height = image?.Height ?? 0;
				if( width < 16 || height < 16 ) {
					Log.AddWarning($"{file.Value} {width}x{height}, too small");
					continue;
				}

				var disk = new cmk.IO.Path(file.Value);
				var dds  = new NMS.PAK.Item.Path(file.Key);
				var icon = new NMS.PAK.Item.Path(file.Key);
				
				icon.Name = icon.Name + "_ICON";
				var index = files.FindIndex(KV => string.Equals(KV.Key, icon, StringComparison.OrdinalIgnoreCase));
				if( index < 0 ) icon = dds;
				else            icon = files[index].Key;
				
				var data = new DecalData {
					Dds    = dds,
					Icon   = icon,
					Name   = disk.Name,
					Width  = width,
					Height = height,
					Id     =       id,  // <= 15 char
					Part   = '_' + id,  // <= 16 char
					Model  = NMS.ModelPaths.Create(dds.Directory.Replace("TEXTURES/", "MODELS/"), dds.Name),
				};
				
				GcProductTable            (data);
				GcBaseBuildingPartsTable  (data);
				GcBaseBuildingTable       (data);
				GcBaseBuildingObjectsTable(data);
			}
		}

		//...........................................................
			
		protected void GcProductTable( DecalData DATA )
		{
			var mbin = ExtractMbin<GcProductTable>(
				"METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN"
			);		
			var clone = CloneMbin(mbin.Table.Find(PRODUCT => PRODUCT.Id == "BUILDDECALSIMP1"));

			clone.Id            = DATA.Id;
			clone.Name          = DATA.Name.ToUpper();
			clone.NameLower     = DATA.Name;
			clone.Icon.Filename = DATA.Icon.Full;

			mbin.Table.Add(clone);
		}

		//...........................................................

		protected void GcBaseBuildingPartsTable( DecalData DATA )
		{
			var mbin = ExtractMbin<GcBaseBuildingPartsTable>(
				"METADATA/REALITY/TABLES/BASEBUILDINGPARTSTABLE.MBIN"
			);		
			var clone = CloneMbin(mbin.Parts.Find(OBJECT => OBJECT.ID == "_BUILDDECALSIMP1"));
			
			clone.ID = DATA.Part;
			clone.StyleModels[0].Model.Filename = DATA.Model.Scene.Full;
			
			mbin.Parts.Add(clone);
		}

		//...........................................................

		protected void GcBaseBuildingTable( DecalData DATA )
		{
			// doesn't have any posters, always use decal as source
			var mbin = ExtractMbin<GcBaseBuildingTable>(
				"METADATA/REALITY/TABLES/BASEBUILDINGTABLE.MBIN"
			);
			var source = mbin.Objects.Find(OBJECT => OBJECT.ID == "BUILDDECALSIMP1");
			var clone  = CloneMbin(source);

			GcBaseBuildingEntry(clone, DATA.Id);

			if( DATA.Dds.Directory.Contains("POSTER") ) {
				clone.Groups[0].SubGroupName = "WALLPOSTERS";
			}
			
			clone.PlacementScene.Filename = DATA.Model.Scene.Full;
			TkSceneNodeData_Scene(DATA, source.PlacementScene.Filename.Value);
			
			mbin.Objects.Add(clone);
		}

		//...........................................................

		protected void GcBaseBuildingObjectsTable( DecalData DATA )
		{
			var mbin = ExtractMbin<GcBaseBuildingTable>(
				"METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN"
			);
			var source = mbin.Objects.Find(OBJECT => OBJECT.ID == "BUILDDECALSIMP1");
			var clone  = CloneMbin(source);

			GcBaseBuildingEntry(clone, DATA.Id);

			if( DATA.Dds.Directory.Contains("POSTER") ) {
				clone.Groups[0].SubGroupName = "WALLPOSTERS";
			}
			
			clone.PlacementScene.Filename = DATA.Model.PlacementScene.Full;
			TkSceneNodeData_Placement(DATA, source.PlacementScene.Filename.Value);
			
			mbin.Objects.Add(clone);
		}

		//...........................................................

		protected void GcBaseBuildingEntry( GcBaseBuildingEntry ENTRY, string ID )
		{
			ENTRY.ID                   = ID;
			ENTRY.IsFromModFolder      = true;
			ENTRY.PlanetBaseLimit      = 0;
			ENTRY.FreighterBaseLimit   = 0;
			ENTRY.BuildableOnSpaceBase = true;
			ENTRY.BuildableOnPlanet    = true;
			ENTRY.CanPlaceOnItself     = true;
			ENTRY.CanRotate3D          = true;
			ENTRY.CanScale             = true;
		}

		//...........................................................

		// scene
		protected void TkSceneNodeData_Scene( DecalData DATA, NMS.PAK.Item.Path SOURCE )
		{
			var mbin  = CloneMbin<TkSceneNodeData>(SOURCE, DATA.Model.Scene);
			var name  = DATA.Model.Scene.Full.Remove(DATA.Model.Scene.Full.IndexOf(".SCENE"));
			mbin.Name = name;
			
			var child = mbin.Children.Find(DATA => DATA.Type == "MESH");
			if( DATA.Height > DATA.Width ) {
				child.Transform.ScaleX *= ((float)DATA.Width / DATA.Height);
			}
			else if( DATA.Height < DATA.Width ) {
				child.Transform.ScaleY *= ((float)DATA.Height / DATA.Width);
			}		
			
			child.Children.Find(DATA => DATA.Type == "COLLISION").Name = name;
			
			var material   = child.Attributes.Find(DATA => DATA.Name == "MATERIAL");
			var source     = material.Value.Value;
			material.Value = DATA.Model.Material.Full;
			
			TkModelDescriptorList_Scene(DATA, SOURCE.Full.Replace(".SCENE", ".DESCRIPTOR"));
			TkMaterialData(DATA, source);
		}
		
		//...........................................................

		// descriptor
		protected void TkModelDescriptorList_Scene( DecalData DATA, NMS.PAK.Item.Path SOURCE )
		{
			var mbin  = CloneMbin<TkModelDescriptorList>(SOURCE, DATA.Model.Descriptor);
		}
		
		//...........................................................

		// material
		protected void TkMaterialData( DecalData DATA, NMS.PAK.Item.Path SOURCE )
		{
			var mbin  = CloneMbin<TkMaterialData>(SOURCE, DATA.Model.Material);
			mbin.Name = DATA.Model.Material.Name.Remove(DATA.Model.Material.Name.IndexOf(".MATERIAL"));		
			mbin.Samplers[0].Map = DATA.Dds.Full;
		}
		
		//...........................................................

		// placement scene
		protected void TkSceneNodeData_Placement( DecalData DATA, NMS.PAK.Item.Path SOURCE )
		{
			var mbin  = CloneMbin<TkSceneNodeData>(SOURCE, DATA.Model.PlacementScene);
			var name  = DATA.Model.PlacementScene.Full.Remove(DATA.Model.PlacementScene.Full.IndexOf(".SCENE"));
			mbin.Name = name;

			var node   = mbin.Children.Find(CHILD => CHILD.Name == "PlacementData");
			var source = node.Attributes[0].Value.Value;
			node.Attributes[0].Value = DATA.Model.PlacementEntity.Full;
			node.Children  [0].Name  = name;
		
			TkAttachmentData_Placement(DATA, source);
		}
		
		//...........................................................
		
		// placement entity
		protected void TkAttachmentData_Placement( DecalData DATA, NMS.PAK.Item.Path SOURCE )
		{
			var mbin = CloneMbin<TkAttachmentData>(SOURCE, DATA.Model.PlacementEntity);		
			var data = mbin.Components.FindFirst<GcBasePlacementComponentData>();
			data.Rules[0].PartID = DATA.Part;
		}
	}
}

//=============================================================================
