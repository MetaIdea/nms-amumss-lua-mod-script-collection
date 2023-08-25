NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Rotating Atmosphere 2.6.pak",
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "4.40",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\SPACE\PLANETS\ATMOSPHERE\ATMOSPHERE.SCENE.MBIN", "MODELS\SPACE\PLANETS\ATMOSPHERE\ATMOSPHEREHIGHPOLY.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MESHLINK"}, 
							["REPLACE_TYPE"] = "ADDAFTERSECTION",						
							["ADD"] 				= 
[[
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\SPACE\PLANETS\ATMOSPHERE\ENTITIES\ATMOSPHERE.ENTITY.MBIN" />
        </Property>
]],		
						},			
					},
				},	
				{
					["MBIN_FILE_SOURCE"] 	= "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EnableVariableUpdate", "False"}
							}
						},			
					},
				},						
			},
		},
	},
["ADD_FILES"] 			= 
	{
		{			
            ["FILE_DESTINATION"] = [[MODELS\SPACE\PLANETS\ATMOSPHERE\ENTITIES\ATMOSPHERE.ENTITY.EXML]],
            ["FILE_CONTENT"]      = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="TkRotationComponentData.xml">
      <Property name="Speed" value="0.0007" />  		--change this value to tweak rotation speed
      <Property name="Axis" value="Vector3f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
      </Property>
      <Property name="SyncGroup" value="-1" />
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="500" />
  </Property>
</Data>
]],
		},	
	},	
}