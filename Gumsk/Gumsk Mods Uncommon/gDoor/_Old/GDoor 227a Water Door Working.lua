Texture = "Brown Tree Bark"
Quality = "5"
TexturePath = "TEXTURES/PLANETS/BIOMES/BARREN/HQ/TREES"
TextureFile = "BARK_DETAIL.DDS"

NMS_MOD_DEFINITION_CONTAINER = {
MOD_FILENAME	= "GDoor 227a Water Door "..Texture.." "..Quality..".pak",
MOD_DESCRIPTION	= "Watertight Door Recolor",
MOD_AUTHOR		= "Gumsk",
NMS_VERSION		= "2.27",
MODIFICATIONS	= {
	{MBIN_CHANGE_TABLE = {
	{MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UNDERWATERBASE\DOOR\HOLOGRAMDISPLACEMENT_MAT2.MATERIAL.MBIN",
	EXML_CHANGE_TABLE = {{
		PRECEDING_KEY_WORDS = {"Samplers"},
		VALUE_CHANGE_TABLE = {
--Flat surface across door entrance. Texture placed in a radial pattern starting at 09:30 with the bottom of the texture closest to the middle and becoming more compressed closer to the middle. Works best with a uniform texture.
			{"Map",TexturePath.."/"..TextureFile}
}}}},
	{MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UNDERWATERBASE\DOOR\HOLOGRAMDISPLACEMENT_MAT3.MATERIAL.MBIN",
	EXML_CHANGE_TABLE = {{
		PRECEDING_KEY_WORDS = {"Samplers"},
		VALUE_CHANGE_TABLE = {
--Cylinder emanating horizontally from door. Texture placed around circumference in a clockwise pattern starting at 09:30. Works best with a top to bottom fade.
			{"Map",TexturePath.."/"..TextureFile}
}}}}
}}}}