NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ExitShipAnywhere.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["MOD_DESCRIPTION"]			= "Land your ship anywhere in air",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_A\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_B\COCKPITB\ENTITIES\COCKPIT_B.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_D\COCKPITD\ENTITIES\COCKPITD.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_E\COCKPIT_E\ENTITIES\COCKPTE.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_F\COCKPTF\ENTITIES\COCKPITF.ENTITY.MBIN",
						--"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
						--"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB\ENTITIES\COCKPIT_B.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITA\COCKPITA\ENTITIES\COCKPITA.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD\ENTITIES\COCKPITD.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\CANOPY\CANOPYA\CANOPYA\ENTITIES\CANOPYA.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\CANOPY\CANOPYB\CANOPYB\ENTITIES\CANOPYB.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\SHUTTLE\CANOPY\ENTITIES\CANOPY_A.ENTITY.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\S-CLASS\SHAREDDATA\ENTITIES\S_CLASS.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\ACCESSORIES\LANDINGGEAR\ENTITIES\LANDINGGEARFRONT.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\ACCESSORIES\LANDINGGEAR\ENTITIES\LANDINGGEARREAR.ENTITY.MBIN",
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
      <Property name="Reference" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/LANDINGPAD.SCENE.MBIN" />
      <Property name="LSystem" value="" />
    </Property>
<!--     <Property value="GcOutpostComponentData.xml">
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
    </Property> -->
<!--     <Property value="GcLandingHelperComponentData.xml">
      <Property name="ActiveDistanceMin" value="10" />
      <Property name="ActiveDistanceMax" value="600" />
      <Property name="LandPoint" value="True" />
    </Property> -->
]]
						}
					}
				}
			}
		}
		
		-- {
			-- ["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			-- ["MBIN_CHANGE_TABLE"] 	= 
			-- { 
				-- {
					-- ["MBIN_FILE_SOURCE"] 	= 
					-- {
						-- -- "MODELS\SPACE\ASTEROIDS\ASTEROID.SCENE.MBIN",
						-- "MODELS\SPACE\ASTEROIDS\ASTEROIDXL.SCENE.MBIN",
						-- "MODELS\SPACE\ASTEROIDS\GIANTASTEROID.SCENE.MBIN",
						-- "MODELS\SPACE\ASTEROIDS\SMALLASTEROID.SCENE.MBIN",
						-- "MODELS\SPACE\ASTEROIDS\DESTRUCTIBLE\ASTEROID01.SCENE.MBIN",
						-- "MODELS\SPACE\ASTEROIDS\NONDESTRUCTIBLE\BIGASTEROID01.SCENE.MBIN"
					-- },
					-- ["EXML_CHANGE_TABLE"] 	= 
					-- {
						-- {
							-- --["SPECIAL_KEY_WORDS"]	= {"Children"},
							-- ["PRECEDING_KEY_WORDS"] = { "Children" },
							-- --["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							-- ["LINE_OFFSET"] 		= "+0",
							-- ["ADD"] 				= 
-- [[
        -- <Property value="TkSceneNodeData.xml">
          -- <Property name="Name" value="RefLandingPad28" />
          -- <Property name="NameHash" value="3874640459" />
          -- <Property name="Type" value="REFERENCE" />
          -- <Property name="Transform" value="TkTransformData.xml">
            -- <Property name="TransX" value="0" />
            -- <Property name="TransY" value="0" />
            -- <Property name="TransZ" value="0" />
            -- <Property name="RotX" value="0" />
            -- <Property name="RotY" value="100" />
            -- <Property name="RotZ" value="0" />
            -- <Property name="ScaleX" value="10" />
            -- <Property name="ScaleY" value="10" />
            -- <Property name="ScaleZ" value="10" />
          -- </Property>
          -- <Property name="Attributes">
            -- <Property value="TkSceneNodeAttributeData.xml">
              -- <Property name="Name" value="SCENEGRAPH" />
              -- <Property name="AltID" value="" />
              -- <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\LANDINGPAD.SCENE.MBIN" />
            -- </Property>
          -- </Property>
          -- <Property name="Children" />
        -- </Property>
        -- <Property value="TkSceneNodeData.xml">
          -- <Property name="Name" value="RefLandingPad29" />
          -- <Property name="NameHash" value="0" />
          -- <Property name="Type" value="REFERENCE" />
          -- <Property name="Transform" value="TkTransformData.xml">
            -- <Property name="TransX" value="0" />
            -- <Property name="TransY" value="0" />
            -- <Property name="TransZ" value="0" />
            -- <Property name="RotX" value="0" />
            -- <Property name="RotY" value="200" />
            -- <Property name="RotZ" value="0" />
            -- <Property name="ScaleX" value="10" />
            -- <Property name="ScaleY" value="10" />
            -- <Property name="ScaleZ" value="10" />
          -- </Property>
          -- <Property name="Attributes">
            -- <Property value="TkSceneNodeAttributeData.xml">
              -- <Property name="Name" value="SCENEGRAPH" />
              -- <Property name="AltID" value="" />
              -- <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\LANDINGPAD.SCENE.MBIN" />
            -- </Property>
          -- </Property>
          -- <Property name="Children" />
        -- </Property>
-- ]]
						-- }
					-- }
				-- }
			-- }
		-- }
		
	}
}

-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\LANDINGPAD\LANDINGPAD.SCENE.MBIN"
-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\LANDINGPAD.SCENE.MBIN"
-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LANDINGZONE\LANDINGZONE.SCENE.MBIN"
-- "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\LANDINGPAD.SCENE.MBIN"
-- "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\LANDINGPAD.SCENE.MBIN"
-- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD.SCENE.MBIN"

--"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\LANDINGPAD\ENTITIES\LANDINGPAD.ENTITY.MBIN"