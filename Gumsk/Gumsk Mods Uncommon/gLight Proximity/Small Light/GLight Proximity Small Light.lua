Author = "Gumsk"
ModName = "GLight Proximity"
GameVersion = "464"
ModVersion = "a"
ModNameSub = "Small"
BaseDescription = "Adds a proximity sensor to the small light and increases its intensity"

EntityText = [[		<Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="GUMSK/GLIGHTPROXSMALL.ENTITY.MBIN" />
        </Property>]]

FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\SMALLLIGHT.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
MOD_FILENAME	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
MOD_DESCRIPTION	= BaseDescription,
MOD_AUTHOR		= Author,
NMS_VERSION		= GameVersion,
ADD_FILES = {
	{
		FILE_DESTINATION 		= "GUMSK/GLIGHTPROXSMALL.ENTITY.EXML",
		["EXTERNAL_FILE_SOURCE"] 	= "GLIGHTPROXSMALL.ENTITY.EXML",
	},
},
MODIFICATIONS	= {{
MBIN_CHANGE_TABLE = {
{
	MBIN_FILE_SOURCE = FileSource1,
	EXML_CHANGE_TABLE = {	
		{SPECIAL_KEY_WORDS = {"Name","pointLight6"},
			LINE_OFFSET = "+14",
			["ADD"] = EntityText,
		},
		{SPECIAL_KEY_WORDS = {"Name","INTENSITY"},
			VALUE_CHANGE_TABLE = {
				{"Value","50000"},
			},
		},
}},}},}}