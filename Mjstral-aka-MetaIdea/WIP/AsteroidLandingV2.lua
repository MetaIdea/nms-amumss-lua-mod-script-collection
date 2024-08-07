LANDING_PAD = "MODEL\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\LANDINGPAD.SCENE.MBIN"

-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\LANDINGPAD\LANDINGPAD.SCENE.MBIN"
-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\LANDINGPAD.SCENE.MBIN"
-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LANDINGZONE\LANDINGZONE.SCENE.MBIN"
-- "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\LANDINGPAD.SCENE.MBIN"
-- "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\LANDINGPAD.SCENE.MBIN"
-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD.SCENE.MBIN"

--"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD\ENTITIES\LANDINGPAD.ENTITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "AsteroidLanding.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["MOD_DESCRIPTION"]			= "Land your ship on asteroids",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\SPACE\ASTEROIDS\SMALLASTEROID\ENTITIES\ASTEROID.ENTITY.MBIN",
						"MODELS\SPACE\ASTEROIDS\NONDESTRUCTIBLE\BIGASTEROID01\ENTITIES\BIGASTEROID.ENTITY.MBIN",
						"MODELS\SPACE\ASTEROIDS\DESTRUCTIBLE\ASTEROID01\ENTITIES\ASTEROID.ENTITY.MBIN",
						"MODELS\SPACE\ASTEROIDS\GIANTASTEROID\ENTITIES\ASTEROID_01.ENTITY.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"]	= {},
							["PRECEDING_KEY_WORDS"] = { "Components" },
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="TkReferenceComponentData.xml">
      <Property name="Reference" value="]] .. LANDING_PAD .. [[" />
      <Property name="LSystem" value="" />
    </Property>
    <Property value="GcOutpostComponentData.xml">
      <Property name="Anomaly" value="False" />
      <Property name="Frigate" value="False" />
      <Property name="SpaceStation" value="False" />
      <Property name="NexusExterior" value="False" />
      <Property name="NexusInterior" value="False" />
      <Property name="AIDestination" value="False" />
      <Property name="HasDoors" value="False" />
      <Property name="HasOwnGravity" value="False" />
      <Property name="Door" value="HANGARDOOR" />
      <Property name="CheckLandingAreaClear" value="False" />
      <Property name="CircleRadius" value="200" />
      <Property name="ApproachRange" value="100" />
      <Property name="ApproachAngle" value="360" />
      <Property name="ApproachSpeed" value="30" />
      <Property name="PlayerAutoLandRange" value="300" />
      <Property name="LandingSpeed" value="10" />
      <Property name="LandingHeight" value="10" />
      <Property name="RotateToDock" value="False" />
      <Property name="TakeOffHeight" value="30" />
      <Property name="TakeOffFwdDist" value="1" />
      <Property name="TakeOffTime" value="1" />
      <Property name="TakeOffAlignTime" value="1" />
      <Property name="TakeOffSpeed" value="100" />
      <Property name="TakeOffBoost" value="10" />
      <Property name="TakeOffExtraAIHeight" value="7" />
      <Property name="LSystems" />
    </Property>
    <Property value="GcLandingHelperComponentData.xml">
      <Property name="ActiveDistanceMin" value="30" />
      <Property name="ActiveDistanceMax" value="600" />
      <Property name="LandPoint" value="True" />
    </Property>
]]
						}--,
						-- {
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"Mass",  				"0"},  --8
								-- {"LinearDamping",  	  "0.1"},  --0.5
								-- {"Gravity",  		   "20"},  --0
							-- }
						-- }
					}
				}
			}
		},
		
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\SPACE\ASTEROIDS\ASTEROIDXL.SCENE.MBIN",
						"MODELS\SPACE\ASTEROIDS\SMALLASTEROID.SCENE.MBIN",
						"MODELS\SPACE\ASTEROIDS\NONDESTRUCTIBLE\BIGASTEROID01.SCENE.MBIN",					
						"MODELS\SPACE\ASTEROIDS\GIANTASTEROID.SCENE.MBIN",
						"MODELS\SPACE\ASTEROIDS\DESTRUCTIBLE\ASTEROID01.SCENE.MBIN",
						-- "MODELS\SPACE\ASTEROIDS\ASTEROID.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"]	= {"Children"},
							["PRECEDING_KEY_WORDS"] = { "Children" },
							--["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
	<Property value="TkSceneNodeData.xml">
	  <Property name="Name" value="LandingPad" />
	  <Property name="NameHash" value="0" />
	  <Property name="Type" value="REFERENCE" />
	  <Property name="Transform" value="TkTransformData.xml">
		<Property name="TransX" value="0" />
		<Property name="TransY" value="200" />
		<Property name="TransZ" value="0" />
		<Property name="RotX" value="0" />
		<Property name="RotY" value="0" />
		<Property name="RotZ" value="0" />
		<Property name="ScaleX" value="1000" />
		<Property name="ScaleY" value="1000" />
		<Property name="ScaleZ" value="1000" />
	  </Property>
	  <Property name="Attributes">
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="SCENEGRAPH" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="]] .. LANDING_PAD .. [[" />
		</Property>
	  </Property>
	  <Property name="Children" />
	</Property>
]]
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\SPACE\ASTEROIDS\ASTEROIDXL.DESCRIPTOR.MBIN",
						"MODELS\SPACE\ASTEROIDS\NONDESTRUCTIBLE\BIGASTEROID01.DESCRIPTOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"TypeId", "_ASTEROID_"},
							--["PRECEDING_KEY_WORDS"]	= "Children",
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["ADD"] 				= 
[[
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_LANDINGPAD_" />
      <Property name="Descriptors">
		<Property value="TkResourceDescriptorData.xml">
		  <Property name="Id" value="LandingPad" />
		  <Property name="Name" value="LandingPad" />
		  <Property name="ReferencePaths">
			<Property value="VariableSizeString.xml">
			  <Property name="Value" value="]] .. LANDING_PAD .. [[" />
			</Property>
		  </Property>
		  <Property name="Chance" value="1.0" />
		  <Property name="Children" />
		</Property>
      </Property>
    </Property>
]]
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\SPACE\ASTEROIDS\SMALLASTEROID.DESCRIPTOR.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"TypeId", "_ASTEROIDS_"},
							--["PRECEDING_KEY_WORDS"]	= "Children",
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["ADD"] 				= 
[[
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_LANDINGPAD_" />
      <Property name="Descriptors">
		<Property value="TkResourceDescriptorData.xml">
		  <Property name="Id" value="LandingPad" />
		  <Property name="Name" value="LandingPad" />
		  <Property name="ReferencePaths">
			<Property value="VariableSizeString.xml">
			  <Property name="Value" value="]] .. LANDING_PAD .. [[" />
			</Property>
		  </Property>
		  <Property name="Chance" value="1.0" />
		  <Property name="Children" />
		</Property>
      </Property>
    </Property>
]]
						}
					}
				}
			}
		}	
	}
}