Range = 50				--2.761828

Author = "Gumsk"
ModName = "gWeather Heater Extender Always On"
ModNameSub = Range
BaseDescription = "Extends the range on the heaters and makes them always on"
GameVersion = "408"
ModVersion = "a"

--Files Modified
--MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\STANDINGLIGHT_SMALL\ENTITIES\STANDINGLIGHT_SMALL.ENTITY.MBIN

HeaterAdd = [[                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Heater" />
                  <Property name="NameHash" value="72205453" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="1.404783" />
                    <Property name="TransZ" value="0" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="ATTACHMENT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\STANDINGLIGHT_SMALL\ENTITIES\HEATER.ENTITY.MBIN" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\STANDINGLIGHT_SMALL" />
                      <Property name="NameHash" value="635332889" />
                      <Property name="Type" value="COLLISION" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="0" />
                        <Property name="TransY" value="0" />
                        <Property name="TransZ" value="0" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="0" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="TYPE" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="Sphere" />
                        </Property>
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="RADIUS" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="2.761828" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\STANDINGLIGHT_SMALL.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","OFF"},
							["PRECEDING_KEY_WORDS"] = {"Children"},
							["ADD_OPTION"] = "ADDafterLINE",
							["ADD"] = HeaterAdd
						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","RADIUS"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Value",Range},
							}
						},
					},
				},
			}
		}
	}
}