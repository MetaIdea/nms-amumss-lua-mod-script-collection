-----------------------------------------------------------------------------------------
dofile('D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/LIB/_lua_2_exml.lua')
dofile('D:/MODZ_stuff/NoMansSky/AMUMss_Scripts/LIB/_exml_2_lua.lua')
-----------------------------------------------------------------------------------------

section_08 = [[<Property value="LinkableNMSTemplate.xml">
			<Property name="Template" value="GcTriggerActionComponentData.xml">
				<Property name="HideModel" value="False"/>
				<Property name="StartInactive" value="False"/>
				<Property name="States">
					<Property value="GcActionTriggerState.xml">
						<Property name="StateID" value="PROXON"/>
						<Property name="Triggers">
							<Property value="GcActionTrigger.xml">
								<Property name="Event" value="GcPlayerNearbyEvent.xml">
									<Property name="RequirePlayerAction" value="OnFoot"/>
									<Property name="Distance" value="6"/>
									<Property name="Angle" value="360"/>
									<Property name="AnglePlayerRelative" value="False"/>
									<Property name="AngleOffset" value="0"/>
									<Property name="AngleReflected" value="False"/>
									<Property name="AngleMinDistance" value="1"/>
									<Property name="MustAffordCostID" value=""/>
									<Property name="DistanceCheckType" value="Radius"/>
									<Property name="Inverse" value="False"/>
									<Property name="OnlyForLocalPlayer" value="False"/>
									<Property name="IncludeAllPhysics" value="False"/>
									<Property name="IncludeMobileNPCs" value="False"/>
									<Property name="TeleporterCountsAsPlayer" value="True"/>
								</Property>
								<Property name="Action">
									<Property value="GcPlayAudioAction.xml">
										<Property name="Sound" value="Base_Door_Open"/>
										<Property name="UseOcclusion" value="False"/>
										<Property name="OcclusionRadius" value="2"/>
									</Property>
									<Property value="GcPlayAnimAction.xml">
										<Property name="Anim" value="OPEN"/>
									</Property>
									<Property value="GcNodeActivationAction.xml">
										<Property name="NodeActiveState" value="Deactivate"/>
										<Property name="Name" value="DoorClose"/>
										<Property name="SceneToAdd" value=""/>
										<Property name="IncludePhysics" value="False"/>
										<Property name="IncludeChildPhysics" value="False"/>
										<Property name="NotifyNPC" value="False"/>
										<Property name="UseMasterModel" value="True"/>
										<Property name="UseLocalNode" value="False"/>
										<Property name="RestartEmitters" value="False"/>
										<Property name="AffectModels" value="False"/>
									</Property>
									<Property value="GcNodeActivationAction.xml">
										<Property name="NodeActiveState" value="Activate"/>
										<Property name="Name" value="DoorOpen"/>
										<Property name="SceneToAdd" value=""/>
										<Property name="IncludePhysics" value="False"/>
										<Property name="IncludeChildPhysics" value="False"/>
										<Property name="NotifyNPC" value="False"/>
										<Property name="UseMasterModel" value="True"/>
										<Property name="UseLocalNode" value="False"/>
										<Property name="RestartEmitters" value="False"/>
										<Property name="AffectModels" value="False"/>
									</Property>
									<Property value="GcNodeActivationAction.xml">
										<Property name="NodeActiveState" value="Deactivate"/>
										<Property name="Name" value="PhysicsData"/>
										<Property name="SceneToAdd" value=""/>
										<Property name="IncludePhysics" value="True"/>
										<Property name="IncludeChildPhysics" value="False"/>
										<Property name="NotifyNPC" value="False"/>
										<Property name="UseMasterModel" value="True"/>
										<Property name="UseLocalNode" value="False"/>
										<Property name="RestartEmitters" value="False"/>
										<Property name="AffectModels" value="False"/>
									</Property>
									<Property value="GcGoToStateAction.xml">
										<Property name="State" value="PROXOFF"/>
										<Property name="Broadcast" value="False"/>
										<Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
											<Property name="BroadcastLevel" value="Scene"/>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcActionTriggerState.xml">
						<Property name="StateID" value="PROXOFF"/>
						<Property name="Triggers">
							<Property value="GcActionTrigger.xml">
								<Property name="Event" value="GcPlayerNearbyEvent.xml">
									<Property name="RequirePlayerAction" value="OnFoot"/>
									<Property name="Distance" value="6"/>
									<Property name="Angle" value="360"/>
									<Property name="AnglePlayerRelative" value="False"/>
									<Property name="AngleOffset" value="0"/>
									<Property name="AngleReflected" value="False"/>
									<Property name="AngleMinDistance" value="1"/>
									<Property name="MustAffordCostID" value=""/>
									<Property name="DistanceCheckType" value="Radius"/>
									<Property name="Inverse" value="True"/>
									<Property name="OnlyForLocalPlayer" value="False"/>
									<Property name="IncludeAllPhysics" value="False"/>
									<Property name="IncludeMobileNPCs" value="False"/>
									<Property name="TeleporterCountsAsPlayer" value="True"/>
								</Property>
								<Property name="Action">
									<Property value="GcPlayAudioAction.xml">
										<Property name="Sound" value="Base_Door_Close"/>
										<Property name="UseOcclusion" value="False"/>
										<Property name="OcclusionRadius" value="2"/>
									</Property>
									<Property value="GcPlayAnimAction.xml">
										<Property name="Anim" value="CLOSE"/>
									</Property>
									<Property value="GcNodeActivationAction.xml">
										<Property name="NodeActiveState" value="Activate"/>
										<Property name="Name" value="DoorClose"/>
										<Property name="SceneToAdd" value=""/>
										<Property name="IncludePhysics" value="False"/>
										<Property name="IncludeChildPhysics" value="False"/>
										<Property name="NotifyNPC" value="False"/>
										<Property name="UseMasterModel" value="True"/>
										<Property name="UseLocalNode" value="False"/>
										<Property name="RestartEmitters" value="False"/>
										<Property name="AffectModels" value="False"/>
									</Property>
									<Property value="GcNodeActivationAction.xml">
										<Property name="NodeActiveState" value="Deactivate"/>
										<Property name="Name" value="DoorOpen"/>
										<Property name="SceneToAdd" value=""/>
										<Property name="IncludePhysics" value="False"/>
										<Property name="IncludeChildPhysics" value="False"/>
										<Property name="NotifyNPC" value="False"/>
										<Property name="UseMasterModel" value="True"/>
										<Property name="UseLocalNode" value="False"/>
										<Property name="RestartEmitters" value="False"/>
										<Property name="AffectModels" value="False"/>
									</Property>
									<Property value="GcNodeActivationAction.xml">
										<Property name="NodeActiveState" value="Activate"/>
										<Property name="Name" value="PhysicsData"/>
										<Property name="SceneToAdd" value=""/>
										<Property name="IncludePhysics" value="True"/>
										<Property name="IncludeChildPhysics" value="False"/>
										<Property name="NotifyNPC" value="False"/>
										<Property name="UseMasterModel" value="True"/>
										<Property name="UseLocalNode" value="False"/>
										<Property name="RestartEmitters" value="False"/>
										<Property name="AffectModels" value="False"/>
									</Property>
									<Property value="GcGoToStateAction.xml">
										<Property name="State" value="PROXON"/>
										<Property name="Broadcast" value="False"/>
										<Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
											<Property name="BroadcastLevel" value="Scene"/>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
				<Property name="Persistent" value="False"/>
				<Property name="PersistentState" value=""/>
				<Property name="ResetShotTimeOnStateChange" value="False"/>
				<Property name="LinkStateToBaseGrid" value="False"/>
			</Property>
			<Property name="Linked" value=""/>
		</Property>]]

-- local a = ToLua(section_08)

local w_src = io.open('d:/_dump/exml_source.lua', 'w')

w_src:write(PrintExmlAsLua({exml=section_08}))
w_src:close()
print('saved EXML section as LUA to _dump')
