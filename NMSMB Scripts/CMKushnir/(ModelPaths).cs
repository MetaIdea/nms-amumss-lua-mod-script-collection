//=============================================================================

namespace cmk.NMS
{
	public class ModelPaths
	{
		public NMS.PAK.Item.Path Descriptor;
		public NMS.PAK.Item.Path Scene;
		public NMS.PAK.Item.Path Geometry;
		public NMS.PAK.Item.Path GeometryData;
		public NMS.PAK.Item.Path Material;
		public NMS.PAK.Item.Path Entity;
		public NMS.PAK.Item.Path PlacementScene;
		public NMS.PAK.Item.Path PlacementGeometry;
		public NMS.PAK.Item.Path PlacementGeometryData;
		public NMS.PAK.Item.Path PlacementMaterial;
		public NMS.PAK.Item.Path PlacementEntity;

		/// <summary>
		/// MODELS e.g.            "MODELS/CMK/POSTERS/"
		/// NAME   e.g.            "POSTER001"
		/// Descriptor:            "MODELS/CMK/POSTERS/POSTER001/POSTER001.DESCRIPTOR.MBIN"
		/// Scene:                 "MODELS/CMK/POSTERS/POSTER001/POSTER001.SCENE.MBIN"
		/// Geometry:              "MODELS/CMK/POSTERS/POSTER001/POSTER001.GEOMETRY.MBIN.PC"
		/// GeometryData:          "MODELS/CMK/POSTERS/POSTER001/POSTER001.GEOMETRY.DATA.MBIN.PC"
		/// Material:              "MODELS/CMK/POSTERS/POSTER001/POSTER001.MATERIAL.MBIN"
		/// PlacementScene:        "MODELS/CMK/POSTERS/POSTER001/POSTER001_PLACEMENT.SCENE.MBIN"
		/// PlacementGeometry:     "MODELS/CMK/POSTERS/POSTER001/POSTER001_PLACEMENT.GEOMETRY.MBIN.PC"
		/// PlacementGeometryData: "MODELS/CMK/POSTERS/POSTER001/POSTER001_PLACEMENT.GEOMETRY.DATA.MBIN.PC"
		/// PlacementMaterial:     "MODELS/CMK/POSTERS/POSTER001/POSTER001_PLACEMENT.MATERIAL.MBIN"
		/// Entity:                "MODELS/CMK/POSTERS/POSTER001/ENTITIES/POSTER001.ENTITY.MBIN"
		/// PlacementEntity:       "MODELS/CMK/POSTERS/POSTER001/ENTITIES/PLACEMENTDATA.ENTITY.MBIN"
		/// There may also be a POSTER001_LOD set of folder|mbin's.
		/// </summary>
		public static ModelPaths Create( string PATH, string NAME )
		{
			var path     = System.IO.Path.Combine(PATH, NAME, NAME);        // "MODELS/CMK/POSTERS/POSTER001/POSTER001"
			var entities = System.IO.Path.Combine(PATH, NAME, "ENTITIES");  // "MODELS/CMK/POSTERS/POSTER001/ENTITIES"
			return new() {
				Descriptor   = new NMS.PAK.Item.Path(path + ".DESCRIPTOR.MBIN"),
				Scene        = new NMS.PAK.Item.Path(path + ".SCENE.MBIN"),
				Geometry     = new NMS.PAK.Item.Path(path + ".GEOMETRY.MBIN.PC"),
				GeometryData = new NMS.PAK.Item.Path(path + ".GEOMETRY.DATA.MBIN.PC"),
				Material     = new NMS.PAK.Item.Path(path + ".MATERIAL.MBIN"),
				PlacementScene        = new NMS.PAK.Item.Path(path + "_PLACEMENT.SCENE.MBIN"),
				PlacementGeometry     = new NMS.PAK.Item.Path(path + "_PLACEMENT.GEOMETRY.MBIN.PC"),
				PlacementGeometryData = new NMS.PAK.Item.Path(path + "_PLACEMENT.GEOMETRY.DATA.MBIN.PC"),
				PlacementMaterial     = new NMS.PAK.Item.Path(path + "_PLACEMENT.MATERIAL.MBIN"),
				Entity          = new NMS.PAK.Item.Path(System.IO.Path.Combine(entities, NAME) + ".ENTITY.MBIN"),
				PlacementEntity = new NMS.PAK.Item.Path(System.IO.Path.Combine(entities, "PLACEMENTDATA.ENTITY.MBIN")),
			};
		}
	}
}

//=============================================================================
