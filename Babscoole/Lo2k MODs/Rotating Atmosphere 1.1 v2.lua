NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Rotating Atmosphere 1.1.pak",
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.22",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\PLANETS\ATMOSPHERE\ATMOSPHERE.SCENE.MBIN",
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
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\PLANETS\ATMOSPHERE\ATMOSPHEREHIGHPOLY.SCENE.MBIN",
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

<Data template="TkAnimMetadata">
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="NodeData" /> 
  <Property name="AnimFrameData">
    <Property value="TkAnimNodeFrameData.xml">
      <Property name="Rotations" />  
      <Property name="Translations" /> 
      <Property name="Scales" />
    </Property>  
  </Property>    
  <Property name="StillFrameData" value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
    <Property name="Translations" /> 
    <Property name="Scales" />      
 </Property>
</Data>  
]],
		},	
	},	
}