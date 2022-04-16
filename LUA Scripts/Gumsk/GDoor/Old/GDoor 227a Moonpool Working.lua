Texture = "Brown Tree Bark"
Quality = "5"
TexturePath = "TEXTURES/PLANETS/BIOMES/BARREN/HQ/TREES"
TextureFile = "BARK_DETAIL.DDS"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= "GDoor 227a Moonpool "..Texture.." "..Quality..".pak",
["MOD_DESCRIPTION"]	= "Moonpool Floor Recolor",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.27",
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {
	{["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UNDERWATERBASE\FLOOR_WATERDOOR\HOLOGRAMDISPLACEMENT_MAT.MATERIAL.MBIN",
	["EXML_CHANGE_TABLE"] = {{
		["PRECEDING_KEY_WORDS"] = {"Samplers"},
		["VALUE_CHANGE_TABLE"] = {
--Horizontal shifting overlay on top of pool. Placed on object in a radial pattern. Works best with a uniform pattern.
			{"Map",TexturePath.."/"..TextureFile}
}}}},
	{["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UNDERWATERBASE\FLOOR_WATERDOOR\HOLOGRAMDISPLACEMENT_MAT1.MATERIAL.MBIN",
	["EXML_CHANGE_TABLE"] = {{
		["PRECEDING_KEY_WORDS"] = {"Samplers"},
		["VALUE_CHANGE_TABLE"] = {
--Vertical cylinder glow emanating from pool going down, like holodoor. Works best with a left to right fade.
			{"Map",TexturePath.."/"..TextureFile}
}}}}
}}}}