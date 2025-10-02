NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 	= "Rotating Atmosphere 3.4",
["MOD_AUTHOR"]		= "Lo2k",
["LUA_AUTHOR"]		= "Mjjstral",
["NMS_VERSION"]		= "5.75",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = {"MODELS\SPACE\PLANETS\ATMOSPHERE\ATMOSPHERE.SCENE.MBIN", "MODELS\SPACE\PLANETS\ATMOSPHERE\ATMOSPHEREHIGHPOLY.SCENE.MBIN"},
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pSphere1"},
              ["PRECEDING_KEY_WORDS"] = {"Attributes"},
							["REPLACE_TYPE"] = "ADDendSECTION",						
							["ADD"] = 
[[
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\SPACE\PLANETS\ATMOSPHERE\ENTITIES\ATMOSPHERE.ENTITY.MBIN" />
        </Property>
]],		
						},			
					},
				},	
				{
					["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"EnableVariableUpdate", "false"}
							}
						},			
					},
				},						
			},
		},
	},
["ADD_FILES"] = 
	{
		{			
            ["FILE_DESTINATION"] = [[MODELS\SPACE\PLANETS\ATMOSPHERE\ENTITIES\ATMOSPHERE.ENTITY.MXML]],
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAttachmentData">
	<Property name="AdditionalData" />
	<Property name="Components">
		<Property name="Components" value="TkRotationComponentData" _index="0">
			<Property name="TkRotationComponentData">
				<Property name="Speed" value="0.000700" />
				<Property name="Axis">
					<Property name="X" value="1.000000" />
					<Property name="Y" value="0.000000" />
					<Property name="Z" value="0.000000" />
				</Property>
				<Property name="AlwaysUpdate" value="false" />
				<Property name="SyncGroup" value="-1" />
			</Property>
		</Property>
	</Property>
	<Property name="LodDistances">
		<Property name="LodDistances" value="0.000000" _index="0" />
		<Property name="LodDistances" value="50.000000" _index="1" />
		<Property name="LodDistances" value="80.000000" _index="2" />
		<Property name="LodDistances" value="150.000000" _index="3" />
		<Property name="LodDistances" value="500.000000" _index="4" />
	</Property>
</Data>
]],
		},	
	},	
}