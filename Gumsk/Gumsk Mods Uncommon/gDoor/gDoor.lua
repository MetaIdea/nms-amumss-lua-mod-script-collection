Author = "Gumsk"
ModName = "gDoor"
ModNameSub = ""
BaseDescription = "Proximity base doors"
GameVersion = "6.0.5.0"
ModVersion = "a"

States = [[
		<Property name="Components" value="GcTriggerActionComponentData" _index="2">
			<Property name="GcTriggerActionComponentData">
				<Property name="HideModel" value="false" />
				<Property name="StartInactive" value="false" />
				<Property name="States">
					<Property name="States" value="GcActionTriggerState" _index="0">
						<Property name="StateID" value="BOOT" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger" _index="0">
								<Property name="Event" value="GcStateTimeEvent">
									<Property name="GcStateTimeEvent">
										<Property name="Seconds" value="0.000000" />
										<Property name="RandomSeconds" value="0.000000" />
										<Property name="UseMissionClock" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcPlayAnimAction" _index="1">
										<Property name="GcPlayAnimAction">
											<Property name="Anim" value="CLOSE" />
										</Property>
									</Property>
									<Property name="Action" value="GcGoToStateAction" _index="2">
										<Property name="GcGoToStateAction">
											<Property name="State" value="PROXON" />
											<Property name="Broadcast" value="false" />
											<Property name="BroadcastLevel" value="GcBroadcastLevel">
												<Property name="BroadcastLevel" value="Scene" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="States" value="GcActionTriggerState" _index="1">
						<Property name="StateID" value="PROXON" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger" _index="0">
								<Property name="Event" value="GcPlayerNearbyEvent">
									<Property name="GcPlayerNearbyEvent">
										<Property name="RequirePlayerAction" value="OnFoot" />
										<Property name="Distance" value="6.000000" />
										<Property name="Angle" value="360.000000" />
										<Property name="AnglePlayerRelative" value="false" />
										<Property name="AngleOffset" value="0.000000" />
										<Property name="AngleReflected" value="false" />
										<Property name="AngleMinDistance" value="1.000000" />
										<Property name="MustAffordCostID" value="" />
										<Property name="DistanceCheckType" value="Radius" />
										<Property name="Inverse" value="false" />
										<Property name="OnlyForLocalPlayer" value="false" />
										<Property name="IncludeAllPhysics" value="false" />
										<Property name="IncludeMobileNPCs" value="false" />
										<Property name="TeleporterCountsAsPlayer" value="true" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcPlayAudioAction" _index="0">
										<Property name="GcPlayAudioAction">
											<Property name="Sound" value="Base_Door_Open" />
											<Property name="UseOcclusion" value="false" />
											<Property name="OcclusionRadius" value="2" />
										</Property>
									</Property>
									<Property name="Action" value="GcPlayAnimAction" _index="1">
										<Property name="GcPlayAnimAction">
											<Property name="Anim" value="OPEN" />
										</Property>
									</Property>
									<Property name="Action" value="GcNodeActivationAction" _index="2">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Deactivate" />
											<Property name="Name" value="DoorClose" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="false" />
											<Property name="IncludeChildPhysics" value="false" />
											<Property name="NotifyNPC" value="false" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="false" />
										</Property>
									</Property>
									<Property name="Action" value="GcNodeActivationAction" _index="3">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Activate" />
											<Property name="Name" value="DoorOpen" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="false" />
											<Property name="IncludeChildPhysics" value="false" />
											<Property name="NotifyNPC" value="false" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="false" />
										</Property>
									</Property>
									<Property name="Action" value="GcNodeActivationAction" _index="4">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Deactivate" />
											<Property name="Name" value="PhysicsData" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="true" />
											<Property name="IncludeChildPhysics" value="false" />
											<Property name="NotifyNPC" value="false" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="false" />
										</Property>
									</Property>
									<Property name="Action" value="GcGoToStateAction" _index="5">
										<Property name="GcGoToStateAction">
											<Property name="State" value="PROXOFF" />
											<Property name="Broadcast" value="false" />
											<Property name="BroadcastLevel" value="GcBroadcastLevel">
												<Property name="BroadcastLevel" value="Scene" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="States" value="GcActionTriggerState" _index="2">
						<Property name="StateID" value="PROXOFF" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger">
								<Property name="Event" value="GcPlayerNearbyEvent">
									<Property name="GcPlayerNearbyEvent">
										<Property name="RequirePlayerAction" value="OnFoot" />
										<Property name="Distance" value="6.000000" />
										<Property name="Angle" value="360.000000" />
										<Property name="AnglePlayerRelative" value="false" />
										<Property name="AngleOffset" value="0.000000" />
										<Property name="AngleReflected" value="false" />
										<Property name="AngleMinDistance" value="1.000000" />
										<Property name="MustAffordCostID" value="" />
										<Property name="DistanceCheckType" value="Radius" />
										<Property name="Inverse" value="true" />
										<Property name="OnlyForLocalPlayer" value="false" />
										<Property name="IncludeAllPhysics" value="false" />
										<Property name="IncludeMobileNPCs" value="false" />
										<Property name="TeleporterCountsAsPlayer" value="true" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcPlayAudioAction" _index="0">
										<Property name="GcPlayAudioAction">
											<Property name="Sound" value="Base_Door_Close" />
											<Property name="UseOcclusion" value="false" />
											<Property name="OcclusionRadius" value="2" />
										</Property>
									</Property>
									<Property name="Action" value="GcPlayAnimAction" _index="1">
										<Property name="GcPlayAnimAction">
											<Property name="Anim" value="CLOSE" />
										</Property>
									</Property>
									<Property name="Action" value="GcNodeActivationAction" _index="2">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Activate" />
											<Property name="Name" value="DoorClose" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="false" />
											<Property name="IncludeChildPhysics" value="false" />
											<Property name="NotifyNPC" value="false" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="false" />
										</Property>
									</Property>
									<Property name="Action" value="GcNodeActivationAction" _index="3">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Deactivate" />
											<Property name="Name" value="DoorOpen" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="false" />
											<Property name="IncludeChildPhysics" value="false" />
											<Property name="NotifyNPC" value="false" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="false" />
										</Property>
									</Property>
									<Property name="Action" value="GcNodeActivationAction" _index="4">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Activate" />
											<Property name="Name" value="PhysicsData" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="true" />
											<Property name="IncludeChildPhysics" value="false" />
											<Property name="NotifyNPC" value="false" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="false" />
										</Property>
									</Property>
									<Property name="Action" value="GcGoToStateAction" _index="5">
										<Property name="GcGoToStateAction">
											<Property name="State" value="PROXON" />
											<Property name="Broadcast" value="false" />
											<Property name="BroadcastLevel" value="GcBroadcastLevel">
												<Property name="BroadcastLevel" value="Scene" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Persistent" value="false" />
				<Property name="PersistentState" value="" />
				<Property name="ResetShotTimeOnStateChange" value="false" />
				<Property name="LinkStateToBaseGrid" value="false" />
			</Property>
		</Property>]]
	
	
NMS_MOD_DEFINITION_CONTAINER = {
MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
MOD_DESCRIPTION	= BaseDescription,
MOD_AUTHOR		= Author,
NMS_VERSION		= GameVersion,
MODIFICATIONS	=
	{
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DOOR\ENTITIES\MAINDOOR.ENTITY.MBIN",
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Filename","MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/ANIMS/DOOR/DOOR_OPEN.ANIM.MBIN"},
							VALUE_CHANGE_TABLE = {
								{"Speed", 3}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"Filename","MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/ANIMS/DOOR/DOOR_CLOSE.ANIM.MBIN"},
							VALUE_CHANGE_TABLE = {
								{"Speed", 0.5}
							}
						},
						{
							SPECIAL_KEY_WORDS = {"Components","GcTriggerActionComponentData"},
							ADD_OPTION = "REPLACEwholeSECTION",
							ADD = States,
						}
					}
				},
				{
					MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DOOR.SCENE.MBIN",
					MXML_CHANGE_TABLE = {
						{
							SPECIAL_KEY_WORDS = {"Name", "RefSnapScene4"},
							REMOVE = "SECTION"
						},
						{
							SPECIAL_KEY_WORDS = {"Name", "RefSnapScene5"},
							REMOVE = "SECTION"
						},
						{
							SPECIAL_KEY_WORDS = {"Name", "RefSnapScene6"},
							REMOVE = "SECTION"
						},
						{
							SPECIAL_KEY_WORDS = {"Name", "RefSnapScene7"},
							REMOVE = "SECTION"
						}
					}
				}
			}
		}
	}
}
