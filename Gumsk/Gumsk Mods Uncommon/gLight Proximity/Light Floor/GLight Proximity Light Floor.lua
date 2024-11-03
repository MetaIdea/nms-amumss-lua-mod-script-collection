Author = "Gumsk"
ModName = "GLight Proximity"
GameVersion = "5.2.2.0"
ModVersion = "a"
ModNameSub = "Light Floor"
BaseDescription = "Adds a proximity sensor to the light floor"

EntityText = [[		<Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="GUMSK/GLIGHTPROXLIGHTFLOOR.ENTITY.MBIN" />
        </Property>]]

FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\LIGHT\BASIC_FLOOR_QUARTER.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
MOD_FILENAME	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
MOD_DESCRIPTION	= BaseDescription,
MOD_AUTHOR		= Author,
NMS_VERSION		= GameVersion,
ADD_FILES = {
	{
		FILE_DESTINATION 		= "GUMSK/GLIGHTPROXLIGHTFLOOR.ENTITY.EXML",
		["EXTERNAL_FILE_SOURCE"] 	= "GLIGHTPROXLIGHTFLOOR.ENTITY.EXML",
	},
},
MODIFICATIONS	= {{
MBIN_CHANGE_TABLE = {
{
	MBIN_FILE_SOURCE = FileSource1,
	EXML_CHANGE_TABLE = {
	
	-- {SPECIAL_KEY_WORDS = {"Name","CeilingLight_Ring1"},
		-- LINE_OFFSET = "-3",
		-- REMOVE = "LINE",
	-- },
	{SPECIAL_KEY_WORDS = {"Name","Lightbox"},
		LINE_OFFSET = "+14",
		ADD = EntityText,
	},
	-- {SPECIAL_KEY_WORDS = {"Name","FALLOFF"},
		-- VALUE_CHANGE_TABLE = {
			-- {"Value","linear"},
		-- },
	-- },
	-- {SPECIAL_KEY_WORDS = {"Name","FOV"},
		-- VALUE_CHANGE_TABLE = {
			-- {"Value","360"},
		-- },
	-- },
	-- {SPECIAL_KEY_WORDS = {"Name","INTENSITY"},
		-- VALUE_CHANGE_TABLE = {
			-- {"Value","25000"},
		-- },
	-- },
}},

}},}}