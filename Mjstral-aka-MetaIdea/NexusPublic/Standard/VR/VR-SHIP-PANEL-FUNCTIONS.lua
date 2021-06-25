NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "VR-SHIP-PANEL-FUNCTIONS.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.24+",
["DESCRIPTION"]				= "New functional triggers on the ship panel",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITA_INTERIOR\ENTITIES\COCKPITA_INTERIOR.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR\ENTITIES\COCKPITA.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR\ENTITIES\COCKPITB.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\ENTITIES\CANOPYA.ENTITY.MBIN",
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR\ENTITIES\CANOPYA_INTERIOR.ENTITY.MBIN",				
						"MODELS\COMMON\SPACECRAFT\S-CLASS\INTERIORS\CANOPYA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",	

						-- "MODELS\COMMON\SPACECRAFT\SHARED\COCKPITINTERIORS\COCKPITCHAIR\COCKPITCHAIR\ENTITIES\COCKPITSEAT.ENTITY.MBIN",
						-- "MODELS\COMMON\VEHICLES\SHARED\INTERIOR\COCKPITCHAIR\ENTITIES\COCKPITSEAT.ENTITY.MBIN",

						-- "MODELS\COMMON\VEHICLES\BIKE\BIKECOCKPIT\ENTITIES\COCKPIT.ENTITY.MBIN",
						-- "MODELS\COMMON\VEHICLES\BUGGY\BUGGYCOCKPIT\ENTITIES\BUGGYCOCKPITMESH.ENTITY.MBIN",
						-- "MODELS\COMMON\VEHICLES\WHEELEDBIKE\WHEELEDBIKECOCKPIT\ENTITIES\COCKPIT.ENTITY.MBIN",
						-- "MODELS\COMMON\VEHICLES\SUBMARINE\SUBMARINECOCKPIT\ENTITIES\COCKPIT.ENTITY.MBIN",
						-- "MODELS\COMMON\VEHICLES\SHARED\INTERIOR\COCKPITCHAIR\ENTITIES\COCKPIT.ENTITY.MBIN",
						-- "MODELS\COMMON\VEHICLES\ROVER\ROVER\ENTITIES\ROVERCOCKPIT.ENTITY.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "Components" },
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
    <Property value="GcGrabbableComponentData.xml">
      <Property name="GrabbableDataArray">
        <Property value="GcGrabbableData.xml">
          <Property name="LocatorName" value="ButtonRight" />
          <Property name="GrabRadius" value="0.1" />
          <Property name="AttachTime" value="0" />
          <Property name="ReleaseRadius" value="0.1" />
          <Property name="DetachTime" value="0" />
          <Property name="Hand" value="GcHand.xml">
            <Property name="Hand" value="Right" />
          </Property>
          <Property name="AutoGrab" value="True" />
          <Property name="ToggleGrabTime" value="0" />
          <Property name="GrabType" value="Default" />
          <Property name="HandPose" value="ButtonRight" />
          <Property name="MovementStartLocator" value="" />
          <Property name="MovementEndLocator" value="" />
          <Property name="MovementMaxSpeed" value="0" />
          <Property name="MovementReturnSpeed" value="0.25" />
          <Property name="MovementRequiredForActivation" value="0" />
        </Property>
        <Property value="GcGrabbableData.xml">
          <Property name="LocatorName" value="ButtonLeft" />
          <Property name="GrabRadius" value="0.1" />
          <Property name="AttachTime" value="0" />
          <Property name="ReleaseRadius" value="0.1" />
          <Property name="DetachTime" value="0" />
          <Property name="Hand" value="GcHand.xml">
            <Property name="Hand" value="Left" />
          </Property>
          <Property name="AutoGrab" value="True" />
          <Property name="ToggleGrabTime" value="0" />
          <Property name="GrabType" value="Default" />
          <Property name="HandPose" value="ButtonLeft" />
          <Property name="MovementStartLocator" value="" />
          <Property name="MovementEndLocator" value="" />
          <Property name="MovementMaxSpeed" value="0" />
          <Property name="MovementReturnSpeed" value="0.25" />
          <Property name="MovementRequiredForActivation" value="0" />
        </Property>
        <Property value="GcGrabbableData.xml">
          <Property name="LocatorName" value="ButtonRightAlt" />
          <Property name="GrabRadius" value="0.06" />
          <Property name="AttachTime" value="0" />
          <Property name="ReleaseRadius" value="0.06" />
          <Property name="DetachTime" value="0" />
          <Property name="Hand" value="GcHand.xml">
            <Property name="Hand" value="Right" />
          </Property>
          <Property name="AutoGrab" value="True" />
          <Property name="ToggleGrabTime" value="0" />
          <Property name="GrabType" value="Default" />
          <Property name="HandPose" value="ButtonRightAlt" />
          <Property name="MovementStartLocator" value="" />
          <Property name="MovementEndLocator" value="" />
          <Property name="MovementMaxSpeed" value="0" />
          <Property name="MovementReturnSpeed" value="0.25" />
          <Property name="MovementRequiredForActivation" value="0" />
        </Property>
        <Property value="GcGrabbableData.xml">
          <Property name="LocatorName" value="ButtonLeftAlt" />
          <Property name="GrabRadius" value="0.06" />
          <Property name="AttachTime" value="0" />
          <Property name="ReleaseRadius" value="0.06" />
          <Property name="DetachTime" value="0" />
          <Property name="Hand" value="GcHand.xml">
            <Property name="Hand" value="Left" />
          </Property>
          <Property name="AutoGrab" value="True" />
          <Property name="ToggleGrabTime" value="0" />
          <Property name="GrabType" value="Default" />
          <Property name="HandPose" value="ButtonLeftAlt" />
          <Property name="MovementStartLocator" value="" />
          <Property name="MovementEndLocator" value="" />
          <Property name="MovementMaxSpeed" value="0" />
          <Property name="MovementReturnSpeed" value="0.25" />
          <Property name="MovementRequiredForActivation" value="0" />
        </Property>
        <Property value="GcGrabbableData.xml">
          <Property name="LocatorName" value="RHandRailPosition" />
          <Property name="GrabRadius" value="0.2" />
          <Property name="AttachTime" value="0.1" />
          <Property name="ReleaseRadius" value="0.25" />
          <Property name="DetachTime" value="0.1" />
          <Property name="Hand" value="GcHand.xml">
            <Property name="Hand" value="Left" />
          </Property>
          <Property name="AutoGrab" value="True" />
          <Property name="ToggleGrabTime" value="0" />
          <Property name="GrabType" value="Default" />
          <Property name="HandPose" value="CPIT_EJCT_R_REV" />
          <Property name="MovementStartLocator" value="" />
          <Property name="MovementEndLocator" value="" />
          <Property name="MovementMaxSpeed" value="0" />
          <Property name="MovementReturnSpeed" value="0.25" />
          <Property name="MovementRequiredForActivation" value="0" />
        </Property>
        <Property value="GcGrabbableData.xml">
          <Property name="LocatorName" value="LHandRailPosition" />
          <Property name="GrabRadius" value="0.2" />
          <Property name="AttachTime" value="0.1" />
          <Property name="ReleaseRadius" value="0.25" />
          <Property name="DetachTime" value="0.1" />
          <Property name="Hand" value="GcHand.xml">
            <Property name="Hand" value="Right" />
          </Property>
          <Property name="AutoGrab" value="True" />
          <Property name="ToggleGrabTime" value="0" />
          <Property name="GrabType" value="Default" />
          <Property name="HandPose" value="CPIT_EJCT_L_REV" />
          <Property name="MovementStartLocator" value="" />
          <Property name="MovementEndLocator" value="" />
          <Property name="MovementMaxSpeed" value="0" />
          <Property name="MovementReturnSpeed" value="0.25" />
          <Property name="MovementRequiredForActivation" value="0" />
        </Property>
      </Property>
    </Property>
]]						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR.SCENE.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITA_INTERIOR.SCENE.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITB_INTERIOR.SCENE.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITCOMMON_INTERIOR.SCENE.MBIN",						
						-- "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR.SCENE.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\CANOPYA_INTERIOR.SCENE.MBIN",
						-- "MODELS\COMMON\SPACECRAFT\S-CLASS\INTERIORS\CANOPYA_INTERIOR.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] 	= { "Name", "LHandRailPosition" },
							["LINE_OFFSET"] 			= "-2",
							["ADD"] 	= 
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonRight" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.3" />
            <Property name="TransY" value="-0.47" />
            <Property name="TransZ" value="0.64" />
            <Property name="RotX" value="-40" />
            <Property name="RotY" value="-130" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonLeft" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.3" />
            <Property name="TransY" value="-0.49" />
            <Property name="TransZ" value="0.64" />
            <Property name="RotX" value="-140" />
            <Property name="RotY" value="-230" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonRightAlt" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.365" />
            <Property name="TransY" value="-0.339" />
            <Property name="TransZ" value="0.58" />
            <Property name="RotX" value="-20" />
            <Property name="RotY" value="-150" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonLeftAlt" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.365" />
            <Property name="TransY" value="-0.365" />
            <Property name="TransZ" value="0.575" />
            <Property name="RotX" value="-160" />
            <Property name="RotY" value="-210" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
--HERE ButtonRightAlt = RedButtonRight...
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITA_INTERIOR.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITB_INTERIOR.SCENE.MBIN",
						"MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITCOMMON_INTERIOR.SCENE.MBIN",						
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] 	= { "Name", "LHandRailPosition" },
							["LINE_OFFSET"] 			= "-2",
							["ADD"] 	= 
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonRight" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="-0.3" />
			<Property name="TransY" value="-0.453" />
			<Property name="TransZ" value="0.96" />
            <Property name="RotX" value="-40" />
            <Property name="RotY" value="-130" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonLeft" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0.3" />
			<Property name="TransY" value="-0.453" />
			<Property name="TransZ" value="0.96" />
            <Property name="RotX" value="-140" />
            <Property name="RotY" value="-230" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonRightAlt" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0" />
			<Property name="TransY" value="-0.47" />
			<Property name="TransZ" value="0.72" />
            <Property name="RotX" value="-20" />
            <Property name="RotY" value="-110" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
--HERE ButtonRightAlt = ButtonCenter
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\CANOPYA_INTERIOR.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] 	= { "Name", "LHandRailPosition" },
							["LINE_OFFSET"] 			= "-2",
							["ADD"] 	= 
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonRight" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="-0.26" />
			<Property name="TransY" value="-0.7" />
			<Property name="TransZ" value="0.4" />
            <Property name="RotX" value="-40" />
            <Property name="RotY" value="-130" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonLeft" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0.26" />
			<Property name="TransY" value="-0.7" />
			<Property name="TransZ" value="0.4" />
            <Property name="RotX" value="-140" />
            <Property name="RotY" value="-230" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonRightAlt" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="-0.32" />
			<Property name="TransY" value="-0.7" />
			<Property name="TransZ" value="0.4" />
            <Property name="RotX" value="-20" />
            <Property name="RotY" value="-150" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonLeftAlt" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0.32" />
			<Property name="TransY" value="-0.7" />
			<Property name="TransZ" value="0.4" />
            <Property name="RotX" value="-160" />
            <Property name="RotY" value="-210" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
						}
					}
				},	
				{
					["MBIN_FILE_SOURCE"] 	= 
					{					
						"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] 	= { "Name", "LHandRailPosition" },
							["LINE_OFFSET"] 			= "-2",
							["ADD"] 	= 
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonRight" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="-0.45" />
			<Property name="TransY" value="-0.39" />
			<Property name="TransZ" value="0.78" />
            <Property name="RotX" value="-40" />
            <Property name="RotY" value="-130" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonLeft" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0.45" />
			<Property name="TransY" value="-0.39" />
			<Property name="TransZ" value="0.78" />
            <Property name="RotX" value="-140" />
            <Property name="RotY" value="-230" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonRightAlt" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="-0.32" />
			<Property name="TransY" value="-0.4" />
			<Property name="TransZ" value="0.95" />
            <Property name="RotX" value="-20" />
            <Property name="RotY" value="-150" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonLeftAlt" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0.32" />
			<Property name="TransY" value="-0.4" />
			<Property name="TransZ" value="0.95" />
            <Property name="RotX" value="-160" />
            <Property name="RotY" value="-210" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\COMMON\SPACECRAFT\S-CLASS\INTERIORS\CANOPYA_INTERIOR.SCENE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] 	= { "Name", "LHandRailPosition" },
							["LINE_OFFSET"] 			= "-2",
							["ADD"] 	= 
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonRight" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="-0.6" />
			<Property name="TransY" value="-0.3" />
			<Property name="TransZ" value="0.8" />
            <Property name="RotX" value="-40" />
            <Property name="RotY" value="-130" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonLeft" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0.6" />
			<Property name="TransY" value="-0.3" />
			<Property name="TransZ" value="0.8" />
            <Property name="RotX" value="-140" />
            <Property name="RotY" value="-230" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonRightAlt" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="-0.55" />
			<Property name="TransY" value="-0.36" />
			<Property name="TransZ" value="0.5" />
            <Property name="RotX" value="-20" />
            <Property name="RotY" value="-150" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="ButtonLeftAlt" />
          <Property name="NameHash" value="0" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0.55" />
			<Property name="TransY" value="-0.36" />
			<Property name="TransZ" value="0.5" />
            <Property name="RotX" value="-160" />
            <Property name="RotY" value="-210" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] 	= { "Components" },
							["LINE_OFFSET"] 			= "+0",
							["ADD"] 	= 
[[
<!--     <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="ButtonRight" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="ButtonRight" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value=" ButtonLeft" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="ButtonLeft" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="ButtonRightAlt" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="ButtonRightAlt" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="ButtonLeftAlt" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="ButtonLeftAlt" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property> -->
	
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="ButtonLeft" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="NEAR_SCAN" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="ButtonRight" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="PLANETPROC_MISS" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="ButtonRightAlt" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcFireSimpleInteractionAction.xml" />			  
<!--                 <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="FREIGHTER_TRANS" />
                </Property> -->
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property>
<!--             <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="ButtonLeftAlt" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="ButtonLeftAlt" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property> -->
<!--             <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="CPIT_EJCT_R_REV" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcDisplayText.xml">
                  <Property name="HUDTextDisplayType" value="Tooltip" />
                  <Property name="Title" value="CPIT_EJCT_R_REV" />
                  <Property name="Subtitle1" value="" />
                  <Property name="Subtitle2" value="" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property> -->
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="CPIT_EJCT_L_REV" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcFireSimpleInteractionAction.xml" />
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property>	
	

    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
	  
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>		  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>
          </Property>
        </Property>
	  
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LIGHT_OFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="ButtonLeftAlt" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="CPIT_EJCT_R_REV" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
		
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LIGHT_ON" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="ButtonLeftAlt" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="CPIT_EJCT_R_REV" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="HND_CPIT_EJCT_L" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="HND_CPIT_EJCT_R" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>
          </Property>
        </Property>

        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="HEADLIGHTS" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="LIGHT_OFF_DELAY" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>	
          </Property>
        </Property>
		
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="HEADLIGHTS" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="LIGHT_ON_DELAY" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>	
          </Property>
        </Property>
		
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LIGHT_ON_DELAY" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="2" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="LIGHT_ON" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>	
          </Property>
        </Property>
		
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LIGHT_OFF_DELAY" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="2" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="LIGHT_OFF" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>	
          </Property>
        </Property>
		
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property>
	
    <Property value="GcSimpleInteractionComponentData.xml">
      <Property name="SimpleInteractionType" value="Save" />
      <Property name="InteractDistance" value="0" />
      <Property name="Id" value="" />
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Common" />
      </Property>
      <Property name="Size" value="GcSizeIndicator.xml">
        <Property name="SizeIndicator" value="Medium" />
      </Property>
      <Property name="TriggerAction" value="INACTIVE" />
      <Property name="TriggerActionToggle" value="" />
      <Property name="BroadcastTriggerAction" value="False" />
      <Property name="Delay" value="0" />
      <Property name="HideContents" value="True" />
      <Property name="InteractIsCrime" value="False" />
      <Property name="InteractFiendCrimeType" value="GcFiendCrime.xml">
        <Property name="FiendCrime" value="None" />
      </Property>
      <Property name="InteractCrimeLevel" value="0" />
      <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="" />
      </Property>
      <Property name="StatToTrack" value="GcStatsEnum.xml">
        <Property name="Stat" value="None" />
      </Property>
      <Property name="StartsBuried" value="False" />
      <Property name="MustBeVisibleToInteract" value="False" />
      <Property name="NeedsStorm" value="False" />
      <Property name="Name" value="" />
      <Property name="VRInteractMessage" value="" />
      <Property name="TerminalMessage" value="" />
      <Property name="ScanType" value="" />
      <Property name="ScanData" value="" />
      <Property name="ScanIcon" value="">
        <Property name="DiscoveryType" value="Unknown" />
      </Property>
      <Property name="ActivateLocatorsFromRarity" value="False" />
      <Property name="RarityLocators">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
      </Property>
      <Property name="BaseBuildingTriggerActions" />
      <Property name="RewardOverrideTable" />
      <Property name="UsePersonalPersistentBuffer" value="False" />
      <Property name="ReseedOnRewardSuccess" value="False" />
    </Property>
]]						},
						{
							["PRECEDING_KEY_WORDS"] = {"Anims"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= 
[[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="ButtonRight" />
          <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/POSES/HANDS/HAND_POSE_POINT_RIGHT.ANIM.MBIN" />
          <Property name="AnimType" value="Loop" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="player01_l_arm_WristSHJnt" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="LoopOffsetMin" value="0" />
          <Property name="LoopOffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionFrameStart" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="ControlCreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="ButtonLeft" />
          <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/POSES/HANDS/HAND_POSE_POINT_LEFT.ANIM.MBIN" />
          <Property name="AnimType" value="Loop" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="player01_r_arm_WristSHJnt" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="LoopOffsetMin" value="0" />
          <Property name="LoopOffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionFrameStart" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="ControlCreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="ButtonRightAlt" />
          <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/POSES/HANDS/HAND_POSE_POINT_RIGHT.ANIM.MBIN" />
          <Property name="AnimType" value="Loop" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="player01_l_arm_WristSHJnt" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="LoopOffsetMin" value="0" />
          <Property name="LoopOffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionFrameStart" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="ControlCreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="ButtonLeftAlt" />
          <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/POSES/HANDS/HAND_POSE_POINT_LEFT.ANIM.MBIN" />
          <Property name="AnimType" value="Loop" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="player01_r_arm_WristSHJnt" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="LoopOffsetMin" value="0" />
          <Property name="LoopOffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionFrameStart" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="ControlCreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="CPIT_EJCT_L_REV" />
          <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/POSES/HANDS/HAND_POSE_EJECT_RIGHT.ANIM.MBIN" />
          <Property name="AnimType" value="Loop" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="player01_r_arm_WristSHJnt" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="LoopOffsetMin" value="0" />
          <Property name="LoopOffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionFrameStart" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="ControlCreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="CPIT_EJCT_R_REV" />
          <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/POSES/HANDS/HAND_POSE_EJECT_LEFT.ANIM.MBIN" />
          <Property name="AnimType" value="Loop" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="player01_l_arm_WristSHJnt" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="LoopOffsetMin" value="0" />
          <Property name="LoopOffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionFrameStart" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="ControlCreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
]]
						},
					}
				},				
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "_PlayerCharacter_Mesh" },
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["ADD"] 				= 
[[
	<Property value="TkSceneNodeData.xml">
	  <Property name="Name" value="HEADLIGHTS" />
	  <Property name="NameHash" value="0" />
	  <Property name="Type" value="LIGHT" />
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
		  <Property name="Name" value="FOV" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="100" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="FALLOFF" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="linear" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="INTENSITY" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="250000" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="COL_R" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="1.0" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="COL_G" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="0.64" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="COL_B" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="0.36" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="MATERIAL" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
		</Property>
	  </Property>
	  <Property name="Children" />
	</Property>]]
						}
					}
				}
			}
		},		
	}
}

--ButtonRight = InnerButtonRight
--ButtonLeft  = InnerButtonLeft
--ButtonRightAlt = OuterButtonRight
--ButtonLeftAlt  = OuterButtonLeft



			
						
						