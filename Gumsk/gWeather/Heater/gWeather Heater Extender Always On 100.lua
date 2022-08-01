Range = 100				--2.761828

Author = "Gumsk"
ModName = "gWeather Heater Extender"
ModNameSub = Range
BaseDescription = "Extends the range on the heaters"
GameVersion = "397"
ModVersion = "a"
FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\STANDINGLIGHT_SMALL.SCENE.MBIN"

Collision_Add = [[    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Physics" />
      <Property name="NameHash" value="1932763104" />
      <Property name="Type" value="LOCATOR" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="HEATER_COLLISION" />
          <Property name="NameHash" value="4019623986" />
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
                  <Property name="Value" value="Box" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="WIDTH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.484206" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="HEIGHT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.465250" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="DEPTH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.484206" />
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
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","RADIUS"},
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] = {
								{"Value",Range},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TransY","0.730225"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\STANDINGLIGHT_SMALL\ENTITIES\STANDINGLIGHT_SMALL.ENTITY.MBIN"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","INTERACT"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","OFF"},
							["REMOVE"] = "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","StandingLight"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = Collision_Add
						},
					},
				},
			}
		}
	}
}