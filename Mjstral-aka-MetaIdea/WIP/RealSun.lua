SUN_RADIUS = 500000

SUN_POSITION_X = 0
SUN_POSITION_Y = 1000000
SUN_POSITION_Z = 0

LOD_LAST_LEVEL_DISTANCE = SUN_RADIUS+1000 --500

SUN_ROTATIONS_PER_MINUTE = 2

--"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\PROXIMITYPLANT\"
--"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMGRAVITINO.SCENE.MBIN"
--"MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMGRAVITINO_LOD.SCENE.MBIN"
--"MODELS\EFFECTS\WARP\WARPGLOWSPHERE.SCENE.MBIN"

SUN_OBJECT = "MODELS\EFFECTS\WARP\WARPGLOWSPHERE.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "RealSun.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["DESCRIPTION"]				= "Adds a real sun into every solar system, will kill the player if he reaches them",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 		
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\SPACESTATION.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"Name", "_Station_Sphere"},
							--["PRECEDING_KEY_WORDS"]	= "Children",
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["ADD"] 				= 
[[
	<Property value="TkSceneNodeData.xml">
	  <Property name="Name" value="_SUN" />
	  <Property name="NameHash" value="0" />
	  <Property name="Type" value="LOCATOR" />
	  <Property name="Transform" value="TkTransformData.xml">
		<Property name="TransX" value="]] .. SUN_POSITION_X .. [[" />
		<Property name="TransY" value="]] .. SUN_POSITION_Y .. [[" />
		<Property name="TransZ" value="]] .. SUN_POSITION_Z .. [[" />
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
		  <Property name="Value" value="MODELS\SPACE\SUN\ENTITIES\SUNDAMAGE.ENTITY.MBIN" />
		</Property>
	  </Property>
	  <Property name="Children">
<!-- 		<Property value="TkSceneNodeData.xml">
		  <Property name="Name" value="Spotlight" />
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
			  <Property name="Value" value="265000" />
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="COL_R" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="0.999999" />
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="COL_G" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="0.639002" />
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="COL_B" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="0.361002" />
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="MATERIAL" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
			</Property>
		  </Property>
		  <Property name="Children" />
		</Property> -->
		<Property value="TkSceneNodeData.xml">
		<Property name="Name" value="SUN_OBJECT" />
		<Property name="NameHash" value="0" />	
		  <Property name="Type" value="REFERENCE" />
		  <Property name="Transform" value="TkTransformData.xml">
			<Property name="TransX" value="0" />
			<Property name="TransY" value="0" />
			<Property name="TransZ" value="0" />
			<Property name="RotX" value="0" />
			<Property name="RotY" value="0" />
			<Property name="RotZ" value="0" />
			<Property name="ScaleX" value="]] .. SUN_RADIUS .. [[" />
			<Property name="ScaleY" value="]] .. SUN_RADIUS .. [[" />
			<Property name="ScaleZ" value="]] .. SUN_RADIUS .. [[" />
		  </Property>
		  <Property name="Attributes">
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="SCENEGRAPH" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="]] .. SUN_OBJECT .. [[" />
			</Property>			
		  </Property>
		  <Property name="Children" />
		</Property>
		<Property value="TkSceneNodeData.xml">
		  <Property name="Name" value="MODELS\SPACE\SUN\SUN" />
		  <Property name="NameHash" value="0" />
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
			  <Property name="Value" value="]] .. SUN_RADIUS .. [[" />
			</Property>
		  </Property>
		  <Property name="Children" />
		</Property>	
	  </Property>
	</Property>
]]
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\SPACESTATION.DESCRIPTOR.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"TypeId", "_STATION_"},
							--["PRECEDING_KEY_WORDS"]	= "Children",
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["ADD"] 				= 
[[
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_SUN_" />
      <Property name="Descriptors">
		<Property value="TkResourceDescriptorData.xml">
		  <Property name="Id" value="_SUN" />
		  <Property name="Name" value="_SUN" />
		  <Property name="ReferencePaths">
			<Property value="VariableSizeString.xml">
			  <Property name="Value" value="]] .. SUN_OBJECT .. [[" />
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
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{						
						{
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NoBoostStationDistance",			"0"}, --2000
								{"MiniWarpStationRadius",			"0"}, --700
								{"MiniWarpStoppingMarginStation",	"0"}, --2500
								{"MiniWarpTrackingMargin",			"0"}, --100
							}
						}
					}
				}
			}
		}
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = [[MODELS\SPACE\SUN\ENTITIES\SUNDAMAGE.ENTITY.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
<!--     <Property value="TkRotationComponentData.xml">
      <Property name="Speed" value="]] .. SUN_POSITION_Y .. [[" />
      <Property name="Axis" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
    </Property>  --> 
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcPlayerNearbyEvent.xml">
                <Property name="RequirePlayerAction" value="None" />
                <Property name="Distance" value="]] .. SUN_RADIUS .. [[" />
                <Property name="Angle" value="360" />
                <Property name="AnglePlayerRelative" value="False" />
                <Property name="AngleOffset" value="0" />
                <Property name="AngleReflected" value="False" />
                <Property name="AngleMinDistance" value="1" />
                <Property name="DistanceCheckType" value="Radius" />
                <Property name="Inverse" value="False" />
                <Property name="OnlyForLocalPlayer" value="False" />
                <Property name="IncludeAllPhysics" value="False" />
                <Property name="IncludeMobileNPCs" value="False" />
                <Property name="TeleporterCountsAsPlayer" value="True" />
              </Property>		  
              <Property name="Action">
                <Property value="GcPainAction.xml">
                  <Property name="Damage" value="MPSHIPROCKET" />
                  <Property name="Radius" value="]] .. SUN_RADIUS .. [[" />
                  <Property name="RadiusBasedDamage" value="False" />
                  <Property name="AffectsPlayer" value="True" />
                  <Property name="RetriggerTime" value="0.5" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="LOOP" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LOOP" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0.1" />
                <Property name="RandomSeconds" value="0.2" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="BOOT" />
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
    <Property value="TkPhysicsComponentData.xml">
      <Property name="Data" value="TkPhysicsData.xml">
        <Property name="Mass" value="0" />
        <Property name="Friction" value="0.5" />
        <Property name="RollingFriction" value="0.2" />
        <Property name="AngularDamping" value="0.2" />
        <Property name="LinearDamping" value="0.1" />
        <Property name="Gravity" value="0" />
      </Property>
      <Property name="VolumeTriggerType" value="TkVolumeTriggerType.xml">
        <Property name="VolumeTriggerType" value="Open" />
      </Property>
      <Property name="SurfaceProperties" value="None" />
      <Property name="TriggerVolume" value="False" />
      <Property name="Climbable" value="False" />
      <Property name="IgnoreModelOwner" value="True" />
      <Property name="NoVehicleCollide" value="False" />
      <Property name="NoPlayerCollide" value="False" />
      <Property name="CameraInvisible" value="False" />
      <Property name="InvisibleForInteraction" value="False" />
      <Property name="AllowTeleporter" value="False" />
      <Property name="BlockTeleporter" value="False" />
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="]] .. LOD_LAST_LEVEL_DISTANCE .. [[" />
  </Property>
</Data>
]]			
		}
	}
}		