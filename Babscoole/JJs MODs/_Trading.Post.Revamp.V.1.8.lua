NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_Trading.Post.Revamp.V.1.8.pak",
["MOD_AUTHOR"]    = "JJHookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.99",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LIGHTS\SMALLLIGHT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "1"},
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LIGHTS\TINYLIGHT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "1"},
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTLSYSPROC.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","NUMLODS",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "1"},
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTS\LARGEPLANT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTS\LARGEPLANT\ENTITIES\PLANTTRIGGER.ENTITY.MBIN",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Value","ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTS\LARGEPLANT\ENTITIES\PLANTTRIGGER.ENTITY.MBIN",},
							} 
						},  						
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTSCIENTIFIC.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON.SCENE.MBIN",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Value","MODELS\TRADINGPOST\TRADER\TRADINGPOST_COMMON.SCENE.MBIN",},
							} 
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\SCIENTIFIC_BUILDING.SCENE.MBIN",},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Value","MODELS\TRADINGPOST\TRADER\SCIENTIFIC_BUILDING.SCENE.MBIN",},
							} 
						},  						
					}
				},				
			}
		}
	},	
["ADD_FILES"] 	= 
	{
		{
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTTRADER.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTSCIENTIFIC" />
  <Property name="NameHash" value="1422061990" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTSCIENTIFIC.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="REFTradingPost_Common" />
      <Property name="NameHash" value="3090780930" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\TRADINGPOST\TRADER\TRADINGPOST_COMMON.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="REFScientificBuilding" />
      <Property name="NameHash" value="2165635851" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\TRADINGPOST\TRADER\SCIENTIFIC_BUILDING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTWARRIOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTSCIENTIFIC" />
  <Property name="NameHash" value="1422061990" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOSTSCIENTIFIC.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="REFTradingPost_Common" />
      <Property name="NameHash" value="3090780930" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\TRADINGPOST\TRADER\TRADINGPOST_COMMON.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="REFScientificBuilding" />
      <Property name="NameHash" value="2165635851" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\TRADINGPOST\TRADER\SCIENTIFIC_BUILDING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\COLLISIONS.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\EFFECTS\SPHERE" />
  <Property name="NameHash" value="2650321276" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Window1" />
      <Property name="NameHash" value="3028851899" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="13" />
        <Property name="TransY" value="21" />
        <Property name="TransZ" value="13" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="90" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="Capsule" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="RADIUS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="14" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Window2" />
      <Property name="NameHash" value="763481345" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-13" />
        <Property name="TransY" value="21" />
        <Property name="TransZ" value="13" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="90" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="Capsule" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="RADIUS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="14" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Window3" />
      <Property name="NameHash" value="1518796183" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="13" />
        <Property name="TransY" value="21" />
        <Property name="TransZ" value="-13" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="90" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="Capsule" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="RADIUS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="14" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Window4" />
      <Property name="NameHash" value="3303172148" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-13" />
        <Property name="TransY" value="21" />
        <Property name="TransZ" value="-13" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="90" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="TYPE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="Capsule" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="RADIUS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="14" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\FLOODLIGHT_LOCATOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\EFFECTS\SPHERE" />
  <Property name="NameHash" value="2650321276" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="REFSpotLight" />
      <Property name="NameHash" value="630828299" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="18.5" />
        <Property name="TransZ" value="-63.3" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\EXTERIORPROPS\FLOODLIGHTS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="spotLight1" />
      <Property name="NameHash" value="422545419" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="24.932163" />
        <Property name="TransZ" value="-62.5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="180.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="40000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Pipe" />
      <Property name="NameHash" value="630828299" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="14.7" />
        <Property name="TransZ" value="-63.3" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1.8" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PIPESNAPSHAPE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\GANTRYLIGHTS_LOCATOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNERFULL.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TINYLIGHT" />
          <Property name="NameHash" value="3056999435" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="-16.6" />
            <Property name="TransZ" value="62.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5" />
            <Property name="ScaleY" value="5" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TINYLIGHT" />
          <Property name="NameHash" value="3056999435" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="-16.6" />
            <Property name="TransZ" value="-62.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5" />
            <Property name="ScaleY" value="5" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TINYLIGHT" />
          <Property name="NameHash" value="3056999435" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="62.5" />
            <Property name="TransY" value="-16.6" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5" />
            <Property name="ScaleY" value="5" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TINYLIGHT" />
          <Property name="NameHash" value="3056999435" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-62.5" />
            <Property name="TransY" value="-16.6" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5" />
            <Property name="ScaleY" value="5" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ROTATION_STABILIZER" />
          <Property name="NameHash" value="337841280" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="-50" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\ROCKS\SMALL\TINYSLATE01.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\INTERIORLIGHTS1_LOCATOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNERFULL.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight1" />
          <Property name="NameHash" value="422545419" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="23" />
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
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="linear" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="14000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TINYLIGHT" />
          <Property name="NameHash" value="3056999435" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="24.5" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5" />
            <Property name="ScaleY" value="5" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TINYLIGHT" />
          <Property name="NameHash" value="3056999435" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="3.5" />
            <Property name="TransY" value="24.5" />
            <Property name="TransZ" value="3.5" />
            <Property name="RotX" value="-90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5" />
            <Property name="ScaleY" value="5" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TINYLIGHT" />
          <Property name="NameHash" value="3056999435" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-3.5" />
            <Property name="TransY" value="24.5" />
            <Property name="TransZ" value="-3.5" />
            <Property name="RotX" value="-90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5" />
            <Property name="ScaleY" value="5" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TINYLIGHT" />
          <Property name="NameHash" value="3056999435" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="3.5" />
            <Property name="TransY" value="24.5" />
            <Property name="TransZ" value="-3.5" />
            <Property name="RotX" value="-90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5" />
            <Property name="ScaleY" value="5" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TINYLIGHT" />
          <Property name="NameHash" value="3056999435" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-3.5" />
            <Property name="TransY" value="24.5" />
            <Property name="TransZ" value="3.5" />
            <Property name="RotX" value="-90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5" />
            <Property name="ScaleY" value="5" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\INTERIORLIGHTS2_LOCATOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNERFULL.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight1" />
          <Property name="NameHash" value="422545419" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="8.5" />
            <Property name="TransY" value="23" />
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
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="linear" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="14000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight2" />
          <Property name="NameHash" value="422545419" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-8.5" />
            <Property name="TransY" value="23" />
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
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="linear" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="14000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight3" />
          <Property name="NameHash" value="422545419" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="23" />
            <Property name="TransZ" value="8.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="linear" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="14000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight4" />
          <Property name="NameHash" value="422545419" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="23" />
            <Property name="TransZ" value="-8.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="linear" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="14000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TINYLIGHT" />
          <Property name="NameHash" value="3056999435" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="12.6" />
            <Property name="TransY" value="24.5" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5" />
            <Property name="ScaleY" value="5" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TINYLIGHT" />
          <Property name="NameHash" value="3056999435" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-12.6" />
            <Property name="TransY" value="24.5" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="-90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5" />
            <Property name="ScaleY" value="5" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TINYLIGHT" />
          <Property name="NameHash" value="3056999435" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="24.5" />
            <Property name="TransZ" value="12.6" />
            <Property name="RotX" value="-90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5" />
            <Property name="ScaleY" value="5" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TINYLIGHT" />
          <Property name="NameHash" value="3056999435" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="24.5" />
            <Property name="TransZ" value="-12.6" />
            <Property name="RotX" value="-90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5" />
            <Property name="ScaleY" value="5" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\LANDINGPAD_LOCATOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\EFFECTS\SPHERE" />
  <Property name="NameHash" value="4262346560" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="LandingPad" />
      <Property name="NameHash" value="1661028819" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="45" />
        <Property name="TransY" value="18.5" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.339" />
        <Property name="ScaleY" value="1.339" />
        <Property name="ScaleZ" value="1.339" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\LANDINGPAD_HANGAR.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="PadLights" />
      <Property name="NameHash" value="4249009587" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="45" />
        <Property name="TransY" value="18.5" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.339" />
        <Property name="ScaleY" value="1.339" />
        <Property name="ScaleZ" value="1.339" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PADLIGHTS\PADLIGHTS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Summon_Ship" />
      <Property name="NameHash" value="4249009587" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="45" />
        <Property name="TransY" value="18.7" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.339" />
        <Property name="ScaleY" value="1.339" />
        <Property name="ScaleZ" value="1.339" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\TRADINGPOST\TRADER\BREAKABLES\SUMMONSHIP.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\PLATFORM_LOCATOR.SCENE.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\EFFECTS\SPHERE" />
  <Property name="NameHash" value="4262346560" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Platform" />
      <Property name="NameHash" value="337841280" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.5" />
        <Property name="TransZ" value="69" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LARGEBUILDINGS\COMMON\MODULARPARTS\PLATFORM_BALCONY.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Ramp" />
      <Property name="NameHash" value="636071310" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-2.5" />
        <Property name="TransZ" value="72" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LARGEBUILDINGS\COMMON\MODULARPARTS\WALKWAYRAMP2X3.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Support" />
      <Property name="NameHash" value="630828299" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-0.3" />
        <Property name="TransZ" value="65" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="8" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="4" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FLOORTILE_TALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="RefTeleporter1" />
      <Property name="NameHash" value="4144302352" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="18.5" />
        <Property name="TransZ" value="57" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\TRADINGPOST\TRADER\BREAKABLES\TELEPORTER1.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="RefTeleporter2" />
      <Property name="NameHash" value="4144302352" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1.5" />
        <Property name="TransZ" value="62" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\TRADINGPOST\TRADER\BREAKABLES\TELEPORTER2.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\SCIENTIFIC_BUILDING.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\SCIENTIFIC_BUILDING" />
  <Property name="NameHash" value="702489435" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\SCIENTIFIC_BUILDING.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Interior_" />
      <Property name="NameHash" value="309913048" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="33.38437" />
        <Property name="TransY" value="16.64657" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\ENTITIES\INTERIOR_.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="RefScientificLayout" />
          <Property name="NameHash" value="2505628540" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-33.38437" />
            <Property name="TransY" value="-16.64657" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LAYOUTS\LAYOUT_SCIENTIFIC.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\SMALLRAMP_LOCATOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\EFFECTS\SPHERE" />
  <Property name="NameHash" value="2650321276" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Step_Leveler" />
      <Property name="NameHash" value="1622738699" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="19.7" />
        <Property name="TransZ" value="-20.5" />
        <Property name="RotX" value="90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1.1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Ramp" />
      <Property name="NameHash" value="4280751046" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="19.8" />
        <Property name="TransZ" value="20.5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.6" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\DOORRAMP.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_LARGE" />
      <Property name="NameHash" value="2391535407" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="4" />
        <Property name="TransY" value="20" />
        <Property name="TransZ" value="19.5" />
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
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="7" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_LARGE" />
      <Property name="NameHash" value="2391535407" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-4" />
        <Property name="TransY" value="20" />
        <Property name="TransZ" value="19.5" />
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
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="7" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_LARGE" />
      <Property name="NameHash" value="2391535407" />
      <Property name="Type" value="COLLISION" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="23.7" />
        <Property name="TransZ" value="19.5" />
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
          <Property name="Value" value="6" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DEPTH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\SPOTLIGHTS_LOCATOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\EFFECTS\SPHERE" />
  <Property name="NameHash" value="2650321276" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Spotlight" />
      <Property name="NameHash" value="1106452668" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="23.2" />
        <Property name="TransZ" value="18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2" />
        <Property name="ScaleY" value="2" />
        <Property name="ScaleZ" value="2" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\HANGINGDRAPES\WALLDRAPE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Spotlight" />
      <Property name="NameHash" value="1106452668" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="23.2" />
        <Property name="TransZ" value="-18" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="2" />
        <Property name="ScaleY" value="2" />
        <Property name="ScaleZ" value="2" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\HANGINGDRAPES\WALLDRAPE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="spotLight1" />
      <Property name="NameHash" value="422545419" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="25.8" />
        <Property name="TransZ" value="19" />
        <Property name="RotX" value="20" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="180.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="40000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="spotLight2" />
      <Property name="NameHash" value="422545419" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="25.8" />
        <Property name="TransZ" value="-19" />
        <Property name="RotX" value="20" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="180.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="40000.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\SUPPORT_LOCATOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\EFFECTS\SPHERE" />
  <Property name="NameHash" value="2650321276" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="ATTACHMENT" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\DEFAULTCOLOUR.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Support" />
      <Property name="NameHash" value="2747506728" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="55" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="7.3" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CYLINDERSNAPSHAPE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Support" />
      <Property name="NameHash" value="2747506728" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="-55" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="7.3" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CYLINDERSNAPSHAPE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Support" />
      <Property name="NameHash" value="2747506728" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="55" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="7.3" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CYLINDERSNAPSHAPE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Support" />
      <Property name="NameHash" value="2747506728" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-55" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="3" />
        <Property name="ScaleY" value="7.3" />
        <Property name="ScaleZ" value="3" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CYLINDERSNAPSHAPE.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\TRADINGPOST_COMMON.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON" />
  <Property name="NameHash" value="3344065908" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Data" />
      <Property name="NameHash" value="854134425" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOST\ENTITIES\OUTPOST.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="RefTradingPost_Support1" />
          <Property name="NameHash" value="3842616250" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\SUPPORT_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="RefTradingPost_Support2" />
          <Property name="NameHash" value="2080438784" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\SUPPORT_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Landing" />
          <Property name="NameHash" value="2623892880" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="14.5" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="10.5" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="10.5" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM_FRAME.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Collision" />
          <Property name="NameHash" value="217985137" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="14" />
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
              <Property name="Value" value="Cylinder" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="12" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Ring" />
          <Property name="NameHash" value="804149832" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="16.6" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.705" />
            <Property name="ScaleY" value="0.705" />
            <Property name="ScaleZ" value="0.16" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\BREAKABLES\JJGANTRYBJOINTRING.SCENE.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\DEFAULTCOLOUR.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LandingPad1" />
          <Property name="NameHash" value="2623892880" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="22.5" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LANDINGPAD_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LandingPad2" />
          <Property name="NameHash" value="90979370" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-22.5" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LANDINGPAD_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LandingPad3" />
          <Property name="NameHash" value="1919618236" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="67.5" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LANDINGPAD_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LandingPad4" />
          <Property name="NameHash" value="3960445215" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-67.5" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LANDINGPAD_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LandingPad5" />
          <Property name="NameHash" value="2601036169" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="112.5" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LANDINGPAD_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LandingPad6" />
          <Property name="NameHash" value="33683507" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-112.5" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LANDINGPAD_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LandingPad7" />
          <Property name="NameHash" value="1963378853" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="157.5" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LANDINGPAD_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LandingPad8" />
          <Property name="NameHash" value="3854161204" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-157.5" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LANDINGPAD_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Floodlight1" />
          <Property name="NameHash" value="1442011524" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\FLOODLIGHT_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Floodlight2" />
          <Property name="NameHash" value="1442011524" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\FLOODLIGHT_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Floodlight3" />
          <Property name="NameHash" value="1442011524" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\FLOODLIGHT_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Floodlight4" />
          <Property name="NameHash" value="1442011524" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\FLOODLIGHT_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Floodlight5" />
          <Property name="NameHash" value="1442011524" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\FLOODLIGHT_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Floodlight6" />
          <Property name="NameHash" value="1442011524" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="135" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\FLOODLIGHT_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Floodlight7" />
          <Property name="NameHash" value="1442011524" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-135" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\FLOODLIGHT_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Floodlight8" />
          <Property name="NameHash" value="1442011524" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\FLOODLIGHT_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MainRoom" />
          <Property name="NameHash" value="7076099" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="19" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="3" />
            <Property name="ScaleY" value="1.5" />
            <Property name="ScaleZ" value="3" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\BREAKABLES\MAINROOM.SCENE.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\DEFAULTCOLOUR.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WaitingRoomChair1" />
          <Property name="NameHash" value="3077723995" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="10.3" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="10.3" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\CHAIRS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WaitingRoomChair2" />
          <Property name="NameHash" value="779814625" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-10.3" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="10.3" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\CHAIRS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WaitingRoomChair3" />
          <Property name="NameHash" value="1501312631" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="10.3" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-10.3" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="135" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\CHAIRS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WaitingRoomChair4" />
          <Property name="NameHash" value="3340280788" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-10.3" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-10.3" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-135" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\CHAIRS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Flags1" />
          <Property name="NameHash" value="3340280788" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\FLAGS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Flags2" />
          <Property name="NameHash" value="3340280788" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\FLAGS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Flags3" />
          <Property name="NameHash" value="3340280788" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\FLAGS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Flags4" />
          <Property name="NameHash" value="3340280788" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\FLAGS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Coloured_Lights" />
          <Property name="NameHash" value="1058060254" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\INTERIORLIGHTS1_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="White_Lights1" />
          <Property name="NameHash" value="1058060254" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\INTERIORLIGHTS2_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="White_Lights2" />
          <Property name="NameHash" value="1058060254" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\INTERIORLIGHTS2_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SmallRamp1" />
          <Property name="NameHash" value="4280751046" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\SMALLRAMP_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SmallRamp2" />
          <Property name="NameHash" value="4280751046" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\SMALLRAMP_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SmallRamp3" />
          <Property name="NameHash" value="4280751046" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\SMALLRAMP_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SmallRamp4" />
          <Property name="NameHash" value="4280751046" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\SMALLRAMP_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Spotlights1" />
          <Property name="NameHash" value="1728821375" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\SPOTLIGHTS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Spotlights2" />
          <Property name="NameHash" value="4261603781" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\SPOTLIGHTS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Spotlights3" />
          <Property name="NameHash" value="2298861907" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\SPOTLIGHTS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Spotlights4" />
          <Property name="NameHash" value="392252656" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\SPOTLIGHTS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Potplants1" />
          <Property name="NameHash" value="463410277" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="19" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\POTPLANTS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Potplants1" />
          <Property name="NameHash" value="463410277" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-19" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\POTPLANTS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Potplants2" />
          <Property name="NameHash" value="2190886367" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="71" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\POTPLANTS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Potplants2" />
          <Property name="NameHash" value="2190886367" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="109" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\POTPLANTS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Potplants3" />
          <Property name="NameHash" value="4119950665" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-71" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\POTPLANTS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Potplants3" />
          <Property name="NameHash" value="4119950665" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-109" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\POTPLANTS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Potplants4" />
          <Property name="NameHash" value="1811276010" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="161" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\POTPLANTS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Potplants4" />
          <Property name="NameHash" value="1811276010" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-161" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PROPS\POTPLANTS_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Resource1" />
          <Property name="NameHash" value="4114958769" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR1.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Resource2" />
          <Property name="NameHash" value="1816926219" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR2.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Resource3" />
          <Property name="NameHash" value="457910429" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="135" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR3.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Resource4" />
          <Property name="NameHash" value="2234498366" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-135" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR4.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Collisions" />
          <Property name="NameHash" value="2027003763" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\COLLISIONS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="TriggerVolume" />
          <Property name="NameHash" value="3265157441" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\TRIGGERVOLUME.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Rooflight" />
          <Property name="NameHash" value="3171792104" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="28.6" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="2" />
            <Property name="ScaleY" value="2" />
            <Property name="ScaleZ" value="2" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\BREAKABLES\PROXIMITYPLANT.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight1" />
          <Property name="NameHash" value="422545419" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="29.1" />
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
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="30000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Platform_Dressing" />
          <Property name="NameHash" value="314460480" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="18.51" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="5.2" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="5.2" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOM_CIELINGCAP.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Gantrylight_1" />
          <Property name="NameHash" value="314460480" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="5" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\GANTRYLIGHTS_LOCATOR.SCENE.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\TKROTATEVERYSLOW.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Gantrylight_2" />
          <Property name="NameHash" value="314460480" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="35" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\GANTRYLIGHTS_LOCATOR.SCENE.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\TKROTATEVERYSLOW.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Gantrylight_3" />
          <Property name="NameHash" value="314460480" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="65" />
            <Property name="RotZ" value="180" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\GANTRYLIGHTS_LOCATOR.SCENE.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\TKROTATEVERYSLOW.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Platform_1" />
          <Property name="NameHash" value="337841280" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PLATFORM_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Platform_2" />
          <Property name="NameHash" value="337841280" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PLATFORM_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Platform_3" />
          <Property name="NameHash" value="337841280" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PLATFORM_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Platform_4" />
          <Property name="NameHash" value="337841280" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\PLATFORM_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Platform_Resource5" />
          <Property name="NameHash" value="2234498366" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="1.5" />
            <Property name="TransZ" value="65" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR5.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Platform_Resource6" />
          <Property name="NameHash" value="2234498366" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="1.5" />
            <Property name="TransZ" value="-65" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR6.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Platform_Resource7" />
          <Property name="NameHash" value="2234498366" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="65" />
            <Property name="TransY" value="1.5" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR7.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Platform_Resource8" />
          <Property name="NameHash" value="2234498366" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-65" />
            <Property name="TransY" value="1.5" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR8.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\TRIGGERVOLUME.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="TriggerVolume" />
      <Property name="NameHash" value="3265157441" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON\ENTITIES\TRIGGERVOLUME.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\PARTS\TRADINGPOST_COMMON" />
          <Property name="NameHash" value="3344065908" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="19" />
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
              <Property name="Value" value="Cylinder" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="19" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="10" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\BREAKABLES\CUBEROOM_INNERWALL.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL" />
  <Property name="NameHash" value="3615956715" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="MirrorMerged_Y" />
      <Property name="NameHash" value="854720868" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="281" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="768" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="281" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="16" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-2.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.125000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="4.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.125000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="13959957812173723135" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\PHONG134.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MirrorMerged_YShape" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CUBEROOM_INNERWALL" />
          <Property name="NameHash" value="3615956715" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="2" />
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
              <Property name="Value" value="4.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.250000" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapPoint_SPREQ_InnerWall" />
      <Property name="NameHash" value="1552023463" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="-90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="InnerWall_In_1" />
          <Property name="NameHash" value="2357747119" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="-90" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NullSnap_Planter_5" />
          <Property name="NameHash" value="4019971076" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapPoint_Top" />
      <Property name="NameHash" value="729522667" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="-90" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="InnerWall_Out_1" />
          <Property name="NameHash" value="3565285293" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NullSnap_Planter_5" />
          <Property name="NameHash" value="4019971076" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\BREAKABLES\JJGANTRYBJOINTRING.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\INDUSTRIAL\GANTRY\GANTRYBJOINTRING" />
  <Property name="NameHash" value="4262346560" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\INDUSTRIAL\GANTRY\GANTRYBJOINTRING.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Cargo_FmeshLOD0" />
      <Property name="NameHash" value="992486792" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1716" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="626" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="7657" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="13224" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="7031" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="338" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="386" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-88.930664" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-88.930664" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-16.990757" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="88.930664" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="88.930664" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="16.990757" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="9628943174049666004" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\INDUSTRIAL\GANTRY\GANTRYBJOINTRING\FREIGHTERPROC_MAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="Cargo_FmeshLOD0Shape" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\INDUSTRIAL\SHARED\ENTITIES\GANTRYBJOINTRING.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\BREAKABLES\JJLADDERHATCH.SCENE.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\LADDERHATCH" />
  <Property name="NameHash" value="4262346560" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\LADDERHATCH.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="HatchLOD0" />
      <Property name="NameHash" value="2078304503" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="228" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="82" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1781" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6768" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1699" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="82" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="114" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.296367" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.058906" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="13197151040947074119" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\LADDERHATCH\INTERIORTILING_MAT1.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="HatchLOD0Shape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Collision" />
      <Property name="NameHash" value="217985137" />
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
          <Property name="Value" value="Cylinder" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="RADIUS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HEIGHT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.6" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\BREAKABLES\MAINROOM.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM" />
  <Property name="NameHash" value="3493825664" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="LODDIST1" />
      <Property name="AltID" value="" />
      <Property name="Value" value="50.000000" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="LODDIST2" />
      <Property name="AltID" value="" />
      <Property name="Value" value="80.000000" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="LODDIST3" />
      <Property name="AltID" value="" />
      <Property name="Value" value="150.000000" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="4" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="RoomCage2LOD0" />
      <Property name="NameHash" value="3580349640" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="21408" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="4032" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="28001" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="67680" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="23969" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="144" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="176" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.090046" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.247418" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.090046" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.090046" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="4.025939" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.090046" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="3786476002099185804" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM\TILINGTEXTURE_MAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="RoomCage2LODShape0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SHAREDDATA\ENTITIES\PHYSICS.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB1RoomCage2LOD0" />
          <Property name="NameHash" value="2906317529" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="89088" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="28002" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="29875" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5280" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1873" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="176" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="216" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-5.024099" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.041481" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-5.024099" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.024099" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3.796580" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.024099" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2840252162470173838" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM\INTERIORTILING_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="RoomCage2LODShape0" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM" />
          <Property name="NameHash" value="3493825664" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="2" />
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
              <Property name="Value" value="Mesh" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTART" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1056" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTART" />
              <Property name="AltID" value="" />
              <Property name="Value" value="29876" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTREND" />
              <Property name="AltID" value="" />
              <Property name="Value" value="30563" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="216" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="904" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="RoomCage2LOD1" />
      <Property name="NameHash" value="3811469397" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="94368" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="30564" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="44877" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="35994" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="14313" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="904" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="936" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.090045" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.247418" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.090045" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.090045" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="4.025939" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.090045" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="11482246365400025032" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM\TILINGTEXTURE_MAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="RoomCage2LODShape1" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB1RoomCage2LOD1" />
          <Property name="NameHash" value="1134497695" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="130362" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="44878" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="46099" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3648" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1221" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="936" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="984" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-5.032294" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.041481" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-5.032294" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.032294" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3.796580" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.032294" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1747576302457322305" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM\INTERIORTILING_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="RoomCage2LODShape1" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="RoomCage2LOD2" />
      <Property name="NameHash" value="3074166897" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="134010" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="46100" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="52949" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="15393" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6849" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="984" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1016" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.090713" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.247418" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.090713" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.090713" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="4.026155" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.090713" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="7956955698898346833" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM\TILINGTEXTURE_MAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="RoomCage2LODShape2" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB1RoomCage2LOD2" />
          <Property name="NameHash" value="529975183" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="149403" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="52950" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="53713" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2052" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="763" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1016" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1064" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-5.031163" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.049124" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-5.031163" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.031163" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3.798215" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.031163" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="16431812825952259126" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM\INTERIORTILING_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="RoomCage2LODShape2" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="RoomCage2LOD3" />
      <Property name="NameHash" value="3368661900" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="151455" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="53714" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="56828" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6750" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="3114" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1064" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1096" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.090045" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.247418" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.090045" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.090045" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="4.025939" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.090045" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2469400025820914782" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM\TILINGTEXTURE_MAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="RoomCage2LODShape3" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB1RoomCage2LOD3" />
          <Property name="NameHash" value="771318868" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="158205" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="56829" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="57340" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1176" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="511" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1096" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1144" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-5.115605" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.041481" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-5.032294" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.115605" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3.796580" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5.032294" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5362205353645284473" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\MAINROOM\INTERIORTILING_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="RoomCage2LODShape3" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapGroup_RoomFloor" />
      <Property name="NameHash" value="2455912342" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.28" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOM_FLOOR.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapGroup_FloorCap" />
      <Property name="NameHash" value="4236603939" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-0.35" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="2" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOM_FLOORCAP.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Room_Floor" />
      <Property name="NameHash" value="681079663" />
      <Property name="Type" value="REFERENCE" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOM_CIELING.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapGroup_RoomRoof" />
      <Property name="NameHash" value="3781911778" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="4" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOM_ROOF.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapGroup_RoomLadderHatch" />
      <Property name="NameHash" value="1679612791" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="4" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\TRADINGPOST\TRADER\BREAKABLES\JJLADDERHATCH.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapGroup_ConnectN" />
      <Property name="NameHash" value="3631338615" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.5" />
        <Property name="TransZ" value="-6" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_DOORCONNECT.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapGroup_ConnectE" />
      <Property name="NameHash" value="1405405991" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="6" />
        <Property name="TransY" value="0.5" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_DOORCONNECT.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapGroup_ConnectS" />
      <Property name="NameHash" value="1451511970" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.5" />
        <Property name="TransZ" value="6" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_DOORCONNECT.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapGroup_ConnectW" />
      <Property name="NameHash" value="562751152" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-6" />
        <Property name="TransY" value="0.5" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_DOORCONNECT.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapGroup_CeilingCap" />
      <Property name="NameHash" value="314460480" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="4" />
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
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\ROOM_CIELINGCAP.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapGroup_PanelNE" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="4.25" />
        <Property name="TransY" value="0.5" />
        <Property name="TransZ" value="-4.25" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.02" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS_MAIN.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapGroup_PanelSE" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="4.25" />
        <Property name="TransY" value="0.5" />
        <Property name="TransZ" value="4.25" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.02" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS_MAIN.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapGroup_PanelSW" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-4.25" />
        <Property name="TransY" value="0.5" />
        <Property name="TransZ" value="4.25" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-45" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.02" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS_MAIN.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SnapGroup_PanelNW" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-4.25" />
        <Property name="TransY" value="0.5" />
        <Property name="TransZ" value="-4.25" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-135" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.02" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\PANEL_GLASS_MAIN.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="HoloDoor" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-6.1" />
        <Property name="TransY" value="0.19" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.01" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="0.6" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DOOR_2.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="HoloDoor" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="6.1" />
        <Property name="TransY" value="0.19" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.01" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="0.6" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DOOR_2.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="HoloDoor" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.19" />
        <Property name="TransZ" value="6.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.01" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="0.6" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DOOR_2.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="HoloDoor" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0.19" />
        <Property name="TransZ" value="-6.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.01" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="0.6" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="SCENEGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DOOR_2.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\BREAKABLES\PROXIMITYPLANT.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\PROXIMITYPLANT" />
  <Property name="NameHash" value="3913260029" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\PROXIMITYPLANT.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="locator1" />
      <Property name="NameHash" value="3030220923" />
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
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\PROXIMITYPLANT\ENTITIES\LIGHTUP.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Lightup" />
          <Property name="NameHash" value="2732176735" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.0001" />
            <Property name="TransY" value="0.27524" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.426754" />
            <Property name="ScaleY" value="0.426754" />
            <Property name="ScaleZ" value="0.426754" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2280" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="439" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="877" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2280" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="438" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="48" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="96" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.902108" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.902108" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.902108" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.902108" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.902108" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.902108" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="16472613548320934736" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\PROXIMITYPLANT\GLOWSPHEREMAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="LightupShape" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="he" />
              <Property name="NameHash" value="1452006307" />
              <Property name="Type" value="LIGHT" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-0.000221" />
                <Property name="TransY" value="1.82255" />
                <Property name="TransZ" value="0" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="2.220916" />
                <Property name="ScaleY" value="2.220916" />
                <Property name="ScaleZ" value="2.220916" />
              </Property>
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FOV" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="360.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="quadratic" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF_RATE" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="INTENSITY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="10000.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_R" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_G" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_B" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COOKIE_IDX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-1" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VOLUMETRIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\PROXIMITYPLANT" />
              <Property name="NameHash" value="3913260029" />
              <Property name="Type" value="COLLISION" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-0.000221" />
                <Property name="TransY" value="-0.005416" />
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
                  <Property name="Value" value="1.556704" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\BREAKABLES\SUMMONSHIP.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD" />
  <Property name="NameHash" value="1941002611" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SummonShip" />
      <Property name="NameHash" value="1427779797" />
      <Property name="Type" value="MESH" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="5.28" />
        <Property name="TransY" value="0.70123" />
        <Property name="TransZ" value="-9.15" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="14700" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6221" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="7362" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2124" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1141" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="640" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="672" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.434401" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1.085167" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.298627" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.434401" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.330067" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.298627" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="942072920339994234" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD\TRADERTILED_MAT9.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="SummonShipShape" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\SUMMONSHIP.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD" />
          <Property name="NameHash" value="1941002611" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="-0.187067" />
            <Property name="TransZ" value="0.008115" />
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
              <Property name="Value" value="0.912516" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.236220" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="DEPTH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.615710" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NAV_POI" />
          <Property name="NameHash" value="3393320376" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.076382" />
            <Property name="TransY" value="-0.678082" />
            <Property name="TransZ" value="-0.960639" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LOOK_AT" />
          <Property name="NameHash" value="1424962104" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.076382" />
            <Property name="TransY" value="0.243517" />
            <Property name="TransZ" value="-0.159839" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="RefLandingPadScreen" />
          <Property name="NameHash" value="1031379467" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="5E-06" />
            <Property name="TransY" value="0.11709" />
            <Property name="TransZ" value="-0.11884" />
            <Property name="RotX" value="-35.666702" />
            <Property name="RotY" value="179.99971" />
            <Property name="RotZ" value="0.00059" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\SCREENS\LANDINGPADSCREEN.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\BREAKABLES\TELEPORTER1.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER" />
  <Property name="NameHash" value="3662478814" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="MiniPortal1" />
      <Property name="NameHash" value="2370414492" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="16644" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="5007" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="13962" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="23556" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="8955" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="441" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="477" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1.426538" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.006944" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1.412824" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.426538" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="3.948594" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.332263" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="15505469311391512983" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\TILINGTEXTURE_MAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MiniPortal1Shape" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB1MiniPortal1" />
          <Property name="NameHash" value="3092017713" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="40200" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="13963" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="16382" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6852" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2419" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="477" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="509" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1.340899" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1.461400" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.340899" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3.585251" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.461400" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="12261149344215452114" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\INTERIORFREIGHTERBASE_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MiniPortal1Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB2MiniPortal1" />
          <Property name="NameHash" value="555485556" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="47052" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="16383" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="16684" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="720" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="301" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="509" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="541" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.584694" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.349199" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1.019850" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.584694" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.566630" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.584694" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1030887226276020658" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\GLOWMAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MiniPortal1Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB3MiniPortal1" />
          <Property name="NameHash" value="3373361958" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="47772" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="16685" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="16748" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="132" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="63" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="541" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="573" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.681675" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.305471" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1.128597" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.681675" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.953705" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.658448" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="8280703399930939292" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\INTERIORFREIGHTERTRIM_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MiniPortal1Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="LinkIndicator" />
      <Property name="NameHash" value="1430143581" />
      <Property name="Type" value="MESH" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-0.062787" />
        <Property name="TransZ" value="0.035185" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.041337" />
        <Property name="ScaleY" value="1.041337" />
        <Property name="ScaleZ" value="1.041337" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="47904" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="16749" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="16834" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="216" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="85" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="573" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="611" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.113216" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.475298" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.942090" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.113216" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.586746" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.735464" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1276225374563422293" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\SCREENSCROLLMAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="LinkIndicatorShape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Teleporter" />
      <Property name="NameHash" value="352729005" />
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
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\ENTITIES\TELEPORTER.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER" />
          <Property name="NameHash" value="3662478814" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.00835" />
            <Property name="TransY" value="1.952025" />
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
              <Property name="Value" value="Mesh" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTART" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="402" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTART" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTREND" />
              <Property name="AltID" value="" />
              <Property name="Value" value="192" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="193" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trigger" />
          <Property name="NameHash" value="1063392246" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="1.8" />
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
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\ENTITIES\TRIGGER.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER" />
              <Property name="NameHash" value="3662478814" />
              <Property name="Type" value="COLLISION" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="0.043867" />
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
                  <Property name="Value" value="Capsule" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="RADIUS" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.545862" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="HEIGHT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2.183447" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Online" />
          <Property name="NameHash" value="3999613717" />
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
          <Property name="Attributes" />
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="PortalLight" />
              <Property name="NameHash" value="345063246" />
              <Property name="Type" value="LIGHT" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="3.374926" />
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
                  <Property name="Name" value="FOV" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="360.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="quadratic" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF_RATE" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="INTENSITY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="12000.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_R" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.782000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_G" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_B" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.941307" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COOKIE_IDX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-1" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VOLUMETRIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="LightsBlue" />
              <Property name="NameHash" value="2488180671" />
              <Property name="Type" value="MESH" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="-0.094944" />
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
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1842" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="477" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="524" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="72" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="47" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FIRSTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LASTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LODLEVEL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLST" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="241" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="257" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-1.217732" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.242844" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-1.172336" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.217732" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.256907" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.172336" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="HASH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="16977091372901732431" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\INTERIORLIGHTS_MAT1.MATERIAL.MBIN" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="LightsBlueShape" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="ScreenEffectOn" />
              <Property name="NameHash" value="1847919697" />
              <Property name="Type" value="MESH" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="1.256599" />
                <Property name="TransZ" value="-0.550887" />
                <Property name="RotX" value="90" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1914" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="525" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="678" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="390" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="153" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FIRSTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LASTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LODLEVEL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLST" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="257" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="265" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.236915" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.062723" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.236915" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.000015" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.062723" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="HASH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1631517434299231623" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\SCREENSCROLLMAT.MATERIAL.MBIN" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="ScreenEffectOnShape" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Glow" />
              <Property name="NameHash" value="1204678457" />
              <Property name="Type" value="MESH" />
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
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2304" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="679" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1350" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="3360" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="671" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FIRSTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LASTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LODLEVEL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLST" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="265" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="313" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.699281" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.076508" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.699280" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.699280" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="3.638440" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.699280" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="HASH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="6539754788125513743" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\TELEPORTERSCROLLEFFECTMAT.MATERIAL.MBIN" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="Glow1Shape" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="REFTeleportMistVFX" />
              <Property name="NameHash" value="568756532" />
              <Property name="Type" value="REFERENCE" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="2.194037" />
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
                  <Property name="Name" value="SCENEGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MODELS\EFFECTS\ABANDONEDFREIGHTER\AIRLOCKTUBEMIST.SCENE.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="TeleFX" />
              <Property name="NameHash" value="974565067" />
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
              <Property name="Attributes" />
              <Property name="Children">
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="TriggerVolume" />
                  <Property name="NameHash" value="3846031098" />
                  <Property name="Type" value="MESH" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="-0.093159" />
                    <Property name="TransZ" value="0" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1.050616" />
                    <Property name="ScaleY" value="1.050616" />
                    <Property name="ScaleZ" value="1.050616" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="5664" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1351" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1634" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1440" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="283" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="313" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="361" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.589172" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.662152" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.589173" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.589172" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="3.018842" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.589172" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="7879301685950195486" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\TRIGGERVOL_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="TriggerVolumeShape" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="ATTACHMENT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MINIPORTAL\ENTITIES\TELEFX.ENTITY.MBIN" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="FXRef" />
                  <Property name="NameHash" value="2638169426" />
                  <Property name="Type" value="REFERENCE" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="2.047482" />
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
                      <Property name="Name" value="SCENEGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\EFFECTS\BASE\MINITELEPORTSPARKS.SCENE.MBIN" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Data" />
                  <Property name="NameHash" value="2638169426" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="0" />
                    <Property name="TransZ" value="0" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="ATTACHMENT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\TELEPORTER\TELEPORTER_BRIDGE\ENTITIES\DATA.ENTITY.MBIN" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="RotatingBits" />
          <Property name="NameHash" value="2683398035" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7104" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1635" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4154" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7524" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2519" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="361" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="409" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.786632" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3.230748" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.825218" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.786632" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3.496989" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.825218" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3470908285339508284" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\TILINGTEXTURE_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="RotatingBitsShape" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MINIPORTAL\ENTITIES\ROTATINGBITS.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="SUB1RotatingBits" />
              <Property name="NameHash" value="370042685" />
              <Property name="Type" value="MESH" />
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
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="14628" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="4155" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="5006" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2016" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="851" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FIRSTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LASTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LODLEVEL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLST" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="409" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="441" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.753944" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="3.231598" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.771920" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.753944" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="3.444493" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.771920" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="HASH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="17676497693253388291" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\GLOWMAT.MATERIAL.MBIN" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="RotatingBitsShape" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Interact" />
          <Property name="NameHash" value="3698755080" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="1.287284" />
            <Property name="TransZ" value="-0.530292" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\BREAKABLES\TELEPORTER2.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (3.99.1)-->
<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER" />
  <Property name="NameHash" value="3662478814" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="MiniPortal1" />
      <Property name="NameHash" value="2370414492" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="16644" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="5007" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="13962" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="23556" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="8955" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="441" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="477" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1.426538" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.006944" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1.412824" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.426538" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="3.948594" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.332263" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="15505469311391512983" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\TILINGTEXTURE_MAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MiniPortal1Shape" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB1MiniPortal1" />
          <Property name="NameHash" value="3092017713" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="40200" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="13963" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="16382" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6852" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2419" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="477" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="509" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1.340899" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1.461400" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.340899" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3.585251" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.461400" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="12261149344215452114" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\INTERIORFREIGHTERBASE_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MiniPortal1Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB2MiniPortal1" />
          <Property name="NameHash" value="555485556" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="47052" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="16383" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="16684" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="720" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="301" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="509" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="541" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.584694" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.349199" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1.019850" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.584694" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.566630" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.584694" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1030887226276020658" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\GLOWMAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MiniPortal1Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SUB3MiniPortal1" />
          <Property name="NameHash" value="3373361958" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="47772" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="16685" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="16748" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="132" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="63" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="541" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="573" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.681675" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.305471" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1.128597" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.681675" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.953705" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.658448" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="8280703399930939292" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\INTERIORFREIGHTERTRIM_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MiniPortal1Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="LinkIndicator" />
      <Property name="NameHash" value="1430143581" />
      <Property name="Type" value="MESH" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="-0.062787" />
        <Property name="TransZ" value="0.035185" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1.041337" />
        <Property name="ScaleY" value="1.041337" />
        <Property name="ScaleZ" value="1.041337" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="47904" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="16749" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="16834" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="216" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="85" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="573" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="611" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.113216" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.475298" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.942090" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.113216" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.586746" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.735464" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1276225374563422293" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\SCREENSCROLLMAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="LinkIndicatorShape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Teleporter" />
      <Property name="NameHash" value="352729005" />
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
          <Property name="Value" value="ODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\ENTITIES\TELEPORTER.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER" />
          <Property name="NameHash" value="3662478814" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.00835" />
            <Property name="TransY" value="1.952025" />
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
              <Property name="Value" value="Mesh" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTART" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="402" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTART" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTREND" />
              <Property name="AltID" value="" />
              <Property name="Value" value="192" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="193" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trigger" />
          <Property name="NameHash" value="1063392246" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="1.8" />
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
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\ENTITIES\TRIGGER.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER" />
              <Property name="NameHash" value="3662478814" />
              <Property name="Type" value="COLLISION" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="0.043867" />
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
                  <Property name="Value" value="Capsule" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="RADIUS" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.545862" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="HEIGHT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2.183447" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Online" />
          <Property name="NameHash" value="3999613717" />
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
          <Property name="Attributes" />
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="PortalLight" />
              <Property name="NameHash" value="345063246" />
              <Property name="Type" value="LIGHT" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="3.374926" />
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
                  <Property name="Name" value="FOV" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="360.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="quadratic" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF_RATE" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="INTENSITY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="12000.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_R" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.782000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_G" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_B" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.941307" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COOKIE_IDX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-1" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VOLUMETRIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="LightsBlue" />
              <Property name="NameHash" value="2488180671" />
              <Property name="Type" value="MESH" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="-0.094944" />
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
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1842" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="477" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="524" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="72" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="47" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FIRSTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LASTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LODLEVEL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLST" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="241" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="257" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-1.217732" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.242844" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-1.172336" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.217732" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.256907" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.172336" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="HASH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="16977091372901732431" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\INTERIORLIGHTS_MAT1.MATERIAL.MBIN" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="LightsBlueShape" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="ScreenEffectOn" />
              <Property name="NameHash" value="1847919697" />
              <Property name="Type" value="MESH" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="1.256599" />
                <Property name="TransZ" value="-0.550887" />
                <Property name="RotX" value="90" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1914" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="525" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="678" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="390" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="153" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FIRSTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LASTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LODLEVEL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLST" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="257" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="265" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.236915" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.062723" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.236915" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.000015" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.062723" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="HASH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1631517434299231623" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\SCREENSCROLLMAT.MATERIAL.MBIN" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="ScreenEffectOnShape" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Glow" />
              <Property name="NameHash" value="1204678457" />
              <Property name="Type" value="MESH" />
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
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2304" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="679" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1350" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="3360" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="671" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FIRSTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LASTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LODLEVEL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLST" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="265" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="313" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.699281" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.076508" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.699280" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.699280" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="3.638440" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.699280" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="HASH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="6539754788125513743" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\TELEPORTERSCROLLEFFECTMAT.MATERIAL.MBIN" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="Glow1Shape" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="REFTeleportMistVFX" />
              <Property name="NameHash" value="568756532" />
              <Property name="Type" value="REFERENCE" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="2.194037" />
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
                  <Property name="Name" value="SCENEGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MODELS\EFFECTS\ABANDONEDFREIGHTER\AIRLOCKTUBEMIST.SCENE.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="TeleFX" />
              <Property name="NameHash" value="974565067" />
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
              <Property name="Attributes" />
              <Property name="Children">
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="TriggerVolume" />
                  <Property name="NameHash" value="3846031098" />
                  <Property name="Type" value="MESH" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="-0.093159" />
                    <Property name="TransZ" value="0" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1.050616" />
                    <Property name="ScaleY" value="1.050616" />
                    <Property name="ScaleZ" value="1.050616" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="5664" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1351" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1634" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1440" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="283" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="313" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="361" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.589172" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.662152" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.589173" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.589172" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="3.018842" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.589172" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="7879301685950195486" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\TRIGGERVOL_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="TriggerVolumeShape" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="ATTACHMENT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MINIPORTAL\ENTITIES\TELEFX.ENTITY.MBIN" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="FXRef" />
                  <Property name="NameHash" value="2638169426" />
                  <Property name="Type" value="REFERENCE" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="2.047482" />
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
                      <Property name="Name" value="SCENEGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\EFFECTS\BASE\MINITELEPORTSPARKS.SCENE.MBIN" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Data" />
                  <Property name="NameHash" value="2638169426" />
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
                      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\TELEPORTER\TELEPORTER_HANGAR\ENTITIES\DATA.ENTITY.MBIN" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="RotatingBits" />
          <Property name="NameHash" value="2683398035" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7104" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1635" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="4154" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7524" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2519" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="LODLEVEL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="AltID" value="" />
              <Property name="Value" value="361" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="409" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.786632" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3.230748" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-0.825218" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.786632" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3.496989" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.825218" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="3470908285339508284" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\TILINGTEXTURE_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="RotatingBitsShape" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\MINIPORTAL\ENTITIES\ROTATINGBITS.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="SUB1RotatingBits" />
              <Property name="NameHash" value="370042685" />
              <Property name="Type" value="MESH" />
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
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="14628" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="4155" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="5006" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2016" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="851" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FIRSTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LASTSKINMAT" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="LODLEVEL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLST" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="409" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="441" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.753944" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="3.231598" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-0.771920" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.753944" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="3.444493" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.771920" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="HASH" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="17676497693253388291" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TELEPORTER\GLOWMAT.MATERIAL.MBIN" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="RotatingBitsShape" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Interact" />
          <Property name="NameHash" value="3698755080" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="1.287284" />
            <Property name="TransZ" value="-0.530292" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\LAYOUTS\LAYOUT_SCIENTIFIC.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_SCIENTIFIC" />
  <Property name="NameHash" value="3987281947" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LAYOUTS\LAYOUT_SCIENTIFIC.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Interior_" />
      <Property name="NameHash" value="309913048" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\NPCPLACEMENTOUTPOST.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Terminal_Tradingpost" />
          <Property name="NameHash" value="1933274541" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="20" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.8" />
            <Property name="ScaleY" value="0.8" />
            <Property name="ScaleZ" value="0.8" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TERMINAL\TERMINAL_TADINGPOST.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Npc_Table1" />
          <Property name="NameHash" value="2992121022" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="6" />
            <Property name="TransY" value="19.45" />
            <Property name="TransZ" value="6" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LAYOUTS\NPC_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Npc_Table2" />
          <Property name="NameHash" value="726758660" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-6" />
            <Property name="TransY" value="19.45" />
            <Property name="TransZ" value="6" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LAYOUTS\NPC_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Npc_Table3" />
          <Property name="NameHash" value="1549157778" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="6" />
            <Property name="TransY" value="19.45" />
            <Property name="TransZ" value="-6" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="135" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LAYOUTS\NPC_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Npc_Table4" />
          <Property name="NameHash" value="3258110001" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-6" />
            <Property name="TransY" value="19.45" />
            <Property name="TransZ" value="-6" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-135" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LAYOUTS\NPC_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="NpcStanding" />
          <Property name="NameHash" value="2177928219" />
          <Property name="Type" value="REFERENCE" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\LAYOUTS\NPCSTAND_LOCATOR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\LAYOUTS\NPC_LOCATOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\EFFECTS\SPHERE" />
  <Property name="NameHash" value="2650321276" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="NPCHIREABLE_1" />
      <Property name="NameHash" value="3908803065" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="2.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="NPCHIREABLE_2" />
      <Property name="NameHash" value="4231407892" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="-2.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="NPCHIREABLE_3" />
      <Property name="NameHash" value="448990595" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.1" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="NPCHIREABLE_4" />
      <Property name="NameHash" value="2225575968" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.1" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\LAYOUTS\NPCSTAND_LOCATOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\EFFECTS\SPHERE" />
  <Property name="NameHash" value="2650321276" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\EFFECTS\SPHERE.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="NPC100_" />
      <Property name="NameHash" value="314575079" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.3" />
        <Property name="TransY" value="19.869" />
        <Property name="TransZ" value="-17" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="NPC100_" />
      <Property name="NameHash" value="314575079" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="5.5" />
        <Property name="TransY" value="19.45" />
        <Property name="TransZ" value="11" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-120" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="NPC100_" />
      <Property name="NameHash" value="314575079" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-5.5" />
        <Property name="TransY" value="19.45" />
        <Property name="TransZ" value="-11" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="60" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\PADLIGHTS\PADLIGHTS.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="3916463041" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="2569483507" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNERFULL.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SMALLLIGHT" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="6.75" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0.04" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="26" />
            <Property name="ScaleY" value="2.8" />
            <Property name="ScaleZ" value="0.6" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SMALLLIGHT" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-6.84" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0.04" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="26" />
            <Property name="ScaleY" value="2.8" />
            <Property name="ScaleZ" value="0.6" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SMALLLIGHT" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.02" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="8.76" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="21.1" />
            <Property name="ScaleY" value="2.8" />
            <Property name="ScaleZ" value="0.6" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="SMALLLIGHT" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.02" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-8.76" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="21.1" />
            <Property name="ScaleY" value="2.8" />
            <Property name="ScaleZ" value="0.6" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\PROPS\CHAIRS_LOCATOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNERFULL.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WaitingRoomChair1" />
          <Property name="NameHash" value="3645735133" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="19.45" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WaitingRoomChair1" />
          <Property name="NameHash" value="3645735133" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="1" />
            <Property name="TransY" value="19.45" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WaitingRoomChair1" />
          <Property name="NameHash" value="3645735133" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-1" />
            <Property name="TransY" value="19.45" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WaitingRoomChair1" />
          <Property name="NameHash" value="3645735133" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="2" />
            <Property name="TransY" value="19.45" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WaitingRoomChair1" />
          <Property name="NameHash" value="3645735133" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-2" />
            <Property name="TransY" value="19.45" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WaitingRoomChair1" />
          <Property name="NameHash" value="3645735133" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="3" />
            <Property name="TransY" value="19.45" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WaitingRoomChair1" />
          <Property name="NameHash" value="3645735133" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-3" />
            <Property name="TransY" value="19.45" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WaitingRoomChair1" />
          <Property name="NameHash" value="3645735133" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="4" />
            <Property name="TransY" value="19.45" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WaitingRoomChair1" />
          <Property name="NameHash" value="3645735133" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-4" />
            <Property name="TransY" value="19.45" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\WAITINGROOMCHAIR.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="PROPROUNDTABLE" />
          <Property name="NameHash" value="1132551793" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="19.45" />
            <Property name="TransZ" value="-6" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\TABLE\ROUNDTABLE" />
          <Property name="NameHash" value="1670539543" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="19.45" />
            <Property name="TransZ" value="-6" />
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
              <Property name="Value" value="Cylinder" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="RADIUS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.4" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HEIGHT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.7" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\PROPS\FLAGS_LOCATOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNERFULL.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Flag_Backing" />
          <Property name="NameHash" value="1622738699" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="5.5" />
            <Property name="TransY" value="18.5" />
            <Property name="TransZ" value="14.9" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.5" />
            <Property name="ScaleY" value="1.6" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\BREAKABLES\CUBEROOM_INNERWALL.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Flag_Backing" />
          <Property name="NameHash" value="1622738699" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-5.5" />
            <Property name="TransY" value="18.5" />
            <Property name="TransZ" value="14.9" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.5" />
            <Property name="ScaleY" value="1.6" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\TRADINGPOST\TRADER\BREAKABLES\CUBEROOM_INNERWALL.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WALLDRAPETYPEA" />
          <Property name="NameHash" value="3542127113" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="5.51" />
            <Property name="TransY" value="22.2" />
            <Property name="TransZ" value="14.7" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.9" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="WALLDRAPETYPEA" />
          <Property name="NameHash" value="3542127113" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-5.51" />
            <Property name="TransY" value="22.2" />
            <Property name="TransZ" value="14.7" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.9" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\PROPS\POTPLANTS_LOCATOR.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNERFULL.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="PLANTPOT" />
          <Property name="NameHash" value="2740747297" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="20.5" />
            <Property name="TransY" value="18.5" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="2.5" />
            <Property name="ScaleY" value="2" />
            <Property name="ScaleZ" value="2.5" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="PROPPLANTLARGE" />
          <Property name="NameHash" value="714877243" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="20.5" />
            <Property name="TransY" value="19.2" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="spotLight1" />
          <Property name="NameHash" value="422545419" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="20.2" />
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
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="10000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR1.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceLarge" />
          <Property name="NameHash" value="2043780590" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="54" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceMedium" />
          <Property name="NameHash" value="2906173175" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="56" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="1" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceSmall" />
          <Property name="NameHash" value="1442799171" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="54" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="-1.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceDebris" />
          <Property name="NameHash" value="2740423756" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="55.5" />
            <Property name="TransY" value="19.3" />
            <Property name="TransZ" value="-1" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="58" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="2" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="19" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR2.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceMedium" />
          <Property name="NameHash" value="2906173175" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="56" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="1" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceSmall" />
          <Property name="NameHash" value="1442799171" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="54" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceSmall" />
          <Property name="NameHash" value="1442799171" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="54" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="0.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceDebris" />
          <Property name="NameHash" value="2740423756" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="57.5" />
            <Property name="TransY" value="19.3" />
            <Property name="TransZ" value="-1" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceDebris" />
          <Property name="NameHash" value="2740423756" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="58" />
            <Property name="TransY" value="19.3" />
            <Property name="TransZ" value="0.5" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="55" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="-1" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="53.5" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="-3" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="20" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="53" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="-1.2" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="54" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="2" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-10" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR3.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceMedium" />
          <Property name="NameHash" value="2906173175" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="58" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="1" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceMedium" />
          <Property name="NameHash" value="2906173175" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="55" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="-4" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceSmall" />
          <Property name="NameHash" value="1442799171" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="52" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="3" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceDebris" />
          <Property name="NameHash" value="2740423756" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="53" />
            <Property name="TransY" value="18.9" />
            <Property name="TransZ" value="2" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="30" />
            <Property name="RotZ" value="90" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="55" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="55" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="-2" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="30" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="59" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="-1.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="58" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="4" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="52" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="-2" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="60" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR4.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceLarge" />
          <Property name="NameHash" value="2043780590" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="55" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="1.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceMedium" />
          <Property name="NameHash" value="2906173175" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="59" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="3" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceSmall" />
          <Property name="NameHash" value="1442799171" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="52" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="-1" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceSmall" />
          <Property name="NameHash" value="1442799171" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="52" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="-1.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceDebris" />
          <Property name="NameHash" value="2740423756" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="57" />
            <Property name="TransY" value="18.9" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="90" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="52" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="2" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="20" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="55" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="-0.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="59" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="45" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="54" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="-4" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-30" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="58" />
            <Property name="TransY" value="18.4" />
            <Property name="TransZ" value="-3" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR5.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceSmall" />
          <Property name="NameHash" value="3821478416" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="6" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="1.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceLarge" />
          <Property name="NameHash" value="1897133986" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="5.8" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0.2" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceDebris" />
          <Property name="NameHash" value="3176774141" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="6" />
            <Property name="TransY" value="0.9" />
            <Property name="TransZ" value="-2" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceDebris" />
          <Property name="NameHash" value="566595021" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="4.7" />
            <Property name="TransY" value="0.9" />
            <Property name="TransZ" value="-2" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-6" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-2" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="15" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR6.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceSmall" />
          <Property name="NameHash" value="3821478416" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="5.6" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="1.9" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceSmall" />
          <Property name="NameHash" value="3821478416" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="5.6" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="1.4" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceMedium" />
          <Property name="NameHash" value="2906173175" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-6" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="120" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceMedium" />
          <Property name="NameHash" value="2906173175" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-5.8" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-1.3" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceLarge" />
          <Property name="NameHash" value="1897133986" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="5.8" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-1" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR7.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceMedium" />
          <Property name="NameHash" value="2906173175" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="5.8" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceMedium" />
          <Property name="NameHash" value="2906173175" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-1.8" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-4" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceLarge" />
          <Property name="NameHash" value="1897133986" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-1.8" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-1" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-6" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="60" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="1.5" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-5.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},
		{
            ["FILE_DESTINATION"] = "MODELS\TRADINGPOST\TRADER\RESOURCES\RESOURCE_LOCATOR8.SCENE.EXML",
            ["FILE_CONTENT"] = 	
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA" />
  <Property name="NameHash" value="4197368026" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\PLANTPOT\PLANTPOTA.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ObjectSpawner" />
      <Property name="NameHash" value="919372515" />
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
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceSmall" />
          <Property name="NameHash" value="3821478416" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="5.7" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceSmall" />
          <Property name="NameHash" value="3821478416" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.5" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="5.7" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceSmall" />
          <Property name="NameHash" value="3821478416" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.5" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="5.7" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-80" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ResourceDebris" />
          <Property name="NameHash" value="566595021" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="1.5" />
            <Property name="TransY" value="0.9" />
            <Property name="TransZ" value="-5.6" />
            <Property name="RotX" value="90" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="1.5" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="5.7" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="20" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="1.8" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="4.1" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-2" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-4.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="80" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="LARGECRATE" />
          <Property name="NameHash" value="2964427655" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.5" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="-3.5" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-30" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]],
		},		
	},	
}