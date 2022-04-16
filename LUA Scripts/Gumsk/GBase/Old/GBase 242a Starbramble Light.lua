Author = "Gumsk"
ModName = "GBase"
ModNameSub = "Starbramble Light"
BaseDescription = "Adds light to base starbramble"
GameVersionA = "2"
GameVersionB = "4"
GameVersionC = "2"
ModVersion = "a"
FileSource1 = "MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMLUSH.SCENE.MBIN"

StarbrambleTransX		= 0			--Light source left/right from centerline
StarbrambleTransY		= 0			--Light source down/up from centerline
StarbrambleTransZ		= 0			--Light source back/forward from 
StarbrambleFOV		= 360
StarbrambleFalloff	= "linear"
StarbrambleIntensity	= "35000.0"
StarbrambleRed		= 0.667
StarbrambleGreen		= 0.947
StarbrambleBlue		= 1.0
StarbrambleText = [[					<Property value="TkSceneNodeData.xml">
					  <Property name="Name" value="pointLight1" />
					  <Property name="NameHash" value="422545419" />
					  <Property name="Type" value="LIGHT" />
					  <Property name="Transform" value="TkTransformData.xml">
						<Property name="TransX" value="]]..StarbrambleTransX..[[" />
						<Property name="TransY" value="]]..StarbrambleTransY..[[" />
						<Property name="TransZ" value="]]..StarbrambleTransZ..[[" />
						<Property name="RotX" value="-10.6" />
						<Property name="RotY" value="180" />
						<Property name="RotZ" value="0" />
						<Property name="ScaleX" value="23.54772" />
						<Property name="ScaleY" value="23.54772" />
						<Property name="ScaleZ" value="23.54772" />
					  </Property>
					  <Property name="Attributes">
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="FOV" />
						  <Property name="AltID" value="" />
						  <Property name="Value" value="]]..StarbrambleFOV..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="FALLOFF" />
						  <Property name="AltID" value="" />
						  <Property name="Value" value="]]..StarbrambleFalloff..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="INTENSITY" />
						  <Property name="AltID" value="" />
						  <Property name="Value" value="]]..StarbrambleIntensity..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="COL_R" />
						  <Property name="AltID" value="" />
						  <Property name="Value" value="]]..StarbrambleRed..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="COL_G" />
						  <Property name="AltID" value="" />
						  <Property name="Value" value="]]..StarbrambleGreen..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="COL_B" />
						  <Property name="AltID" value="" />
						  <Property name="Value" value="]]..StarbrambleBlue..[[" />
						</Property>
						<Property value="TkSceneNodeAttributeData.xml">
						  <Property name="Name" value="MATERIAL" />
						  <Property name="AltID" value="" />
						  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
						</Property>
					  </Property>
					  <Property name="Children" />
					</Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersionA..GameVersionB..GameVersionC..ModVersion.." "..ModNameSub..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersionA.."."..GameVersionB.."."..GameVersionC,
["MODIFICATIONS"]	= {

	{["MBIN_CHANGE_TABLE"] = {
		{["MBIN_FILE_SOURCE"]	= FileSource1,
		["EXML_CHANGE_TABLE"] 	= 
				{{["SPECIAL_KEY_WORDS"]	= {"Name","SUB2STEP2_STATICLOD1"},
				["ADD"] 				= StarbrambleText,
				["REPLACE_TYPE"]		= "AddAfterSection"}}
	}}}
}}