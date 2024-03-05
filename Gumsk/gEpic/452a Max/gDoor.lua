Author = "Gumsk"
ModName = "gDoor"
ModNameSub = ""
BaseDescription = "Proximity base doors"
GameVersion = "452"
ModVersion = "a"
FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DOOR\ENTITIES\MAINDOOR.ENTITY.MBIN"
FileSource2 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DOOR.SCENE.MBIN"

States = [[    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="PROXON" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
				<Property name="Event" value="GcPlayerNearbyEvent.xml">
					<Property name="RequirePlayerAction" value="OnFoot" />
					<Property name="Distance" value="6" />
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
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Base_Door_Open" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcPlayAnimAction.xml">
                  <Property name="Anim" value="OPEN" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="DoorClose" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="DoorOpen" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="PhysicsData" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
				<Property value="GcGoToStateAction.xml">
					<Property name="State" value="PROXOFF" />
					<Property name="Broadcast" value="False" />
					<Property name="BroadcastLevel" value="Scene" />
				</Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="PROXOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
				<Property name="Event" value="GcPlayerNearbyEvent.xml">
					<Property name="RequirePlayerAction" value="OnFoot" />
					<Property name="Distance" value="6" />
					<Property name="Angle" value="360" />
					<Property name="AnglePlayerRelative" value="False" />
					<Property name="AngleOffset" value="0" />
					<Property name="AngleReflected" value="False" />
					<Property name="AngleMinDistance" value="1" />
					<Property name="DistanceCheckType" value="Radius" />
					<Property name="Inverse" value="True" />
					<Property name="OnlyForLocalPlayer" value="False" />
					<Property name="IncludeAllPhysics" value="False" />
					<Property name="IncludeMobileNPCs" value="False" />
					<Property name="TeleporterCountsAsPlayer" value="True" />
				</Property>
              <Property name="Action">
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Base_Door_Close" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcPlayAnimAction.xml">
                  <Property name="Anim" value="CLOSE" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="DoorClose" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="DoorOpen" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="PhysicsData" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>				
				<Property value="GcGoToStateAction.xml">
					<Property name="State" value="PROXON" />
					<Property name="Broadcast" value="False" />
					<Property name="BroadcastLevel" value="Scene" />
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
					["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/ANIMS/DOOR/DOOR_OPEN.ANIM.MBIN",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"Speed", 3}
					}
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/ANIMS/DOOR/DOOR_CLOSE.ANIM.MBIN",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"Speed", 0.5}
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = {"GcTriggerActionComponentData.xml"},
					["REMOVE"] = "SECTION"
				},
				{
					["PRECEDING_KEY_WORDS"] = {"TkAnimationComponentData.xml"},
					["ADD"] = States,
					["REPLACE_TYPE"] = "ADDAFTERSECTION"
				}
			}
		},
		{
			["MBIN_FILE_SOURCE"] = FileSource2,
			["EXML_CHANGE_TABLE"] = {
				{
					["SPECIAL_KEY_WORDS"] = {"Name", "RefSnapScene4"},
					["LINE_OFFSET"] = "-1",
					["REMOVE"] = "SECTION"
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Name", "RefSnapScene5"},
					["LINE_OFFSET"] = "-1",
					["REMOVE"] = "SECTION"
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Name", "RefSnapScene6"},
					["LINE_OFFSET"] = "-1",
					["REMOVE"] = "SECTION"
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Name", "RefSnapScene7"},
					["LINE_OFFSET"] = "-1",
					["REMOVE"] = "SECTION"
				}
			}
		},
	}
}
}}
