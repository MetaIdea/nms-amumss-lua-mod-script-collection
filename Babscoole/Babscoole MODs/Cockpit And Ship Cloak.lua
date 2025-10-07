NodeActiveState =
{
    activate = "Activate",
    deactivate = "Deactivate"
}

Name =
{
    cockpits =
    {
        "MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITA_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/DROPSHIPS/COCKPIT/COCKPITB_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITA_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPITB_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_A/GOLDCOCKPITA",
        "MODELS/COMMON/SPACECRAFT/SCIENTIFIC/INTERIORS/CANOPYA_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/SHUTTLE/INTERIORS/CANOPYA_INTERIOR/CANOPYA_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/S-CLASS/INTERIORS/CANOPYA_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/COCKPIT/SAILSHIPCOCKPITA_INTERIOR",
        "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT",
    },
    procgens =
    {
        "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC",
        "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD",
        "MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC",
        "MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC",
        "MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC",
        "MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC",
        "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC",
        "MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC",
        "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC",
    }
}

function buildBlocks(nodeActiveState, PATH)
    return
[[
									<Property name="Action" value="GcNodeActivationAction">
										<Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="]] .. nodeActiveState .. [[" />
                      <Property name="Name" value="]] .. PATH .. [[" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="true" />
											<Property name="IncludeChildPhysics" value="true" />
											<Property name="NotifyNPC" value="false" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="true" />
										</Property>
									</Property>
]]
end

cockpitsActivate = {}
cockpitsDeactivate = {}
procgenActivate = {}
procgenDeactivate = {}

for j=1,#Name.cockpits do
  table.insert(cockpitsActivate,buildBlocks(NodeActiveState.activate, Name.cockpits[j]))
  table.insert(cockpitsDeactivate,buildBlocks(NodeActiveState.deactivate, Name.cockpits[j]))
end
for j=1,#Name.procgens do
  table.insert(procgenActivate,buildBlocks(NodeActiveState.activate, Name.procgens[j]))
  table.insert(procgenDeactivate,buildBlocks(NodeActiveState.deactivate, Name.procgens[j]))
end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Cockpit And Ship Cloak",
["MOD_AUTHOR"]      = "Original mod and toggle idea by Mjjstral, original concept Gmr_Leon, Current author Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Makes the cockpit interior and ship invisible when flying",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITA_INTERIOR\ENTITIES\COCKPITA_INTERIOR.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR\ENTITIES\COCKPITA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR\ENTITIES\COCKPITB.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR\ENTITIES\CANOPYA_INTERIOR.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\ENTITIES\CANOPYA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\INTERIORS\CANOPYA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\COCKPIT\SAILSHIPCOCKPITA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT\ENTITIES\COCKPITINTERIOR.ENTITY.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
		<Property name="Components" value="GcTriggerActionComponentData">
			<Property name="GcTriggerActionComponentData">
				<Property name="HideModel" value="false" />
				<Property name="StartInactive" value="false" />
				<Property name="States">
					<Property name="States" value="GcActionTriggerState">
						<Property name="StateID" value="BOOT" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger">
								<Property name="Event" value="GcAnimFrameEvent">
									<Property name="GcAnimFrameEvent">
										<Property name="Anim" value="ENTER" />
										<Property name="FrameStart" value="0" />
										<Property name="StartFromEnd" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcGoToStateAction">
										<Property name="GcGoToStateAction">
											<Property name="State" value="HIDE" />
											<Property name="Broadcast" value="false" />
											<Property name="BroadcastLevel" value="GcBroadcastLevel">
												<Property name="BroadcastLevel" value="Local" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Triggers" value="GcActionTrigger">
								<Property name="Event" value="GcAnimFrameEvent">
									<Property name="GcAnimFrameEvent">
										<Property name="Anim" value="EXIT" />
										<Property name="FrameStart" value="0" />
										<Property name="StartFromEnd" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcGoToStateAction">
										<Property name="GcGoToStateAction">
											<Property name="State" value="UNHIDE" />
											<Property name="Broadcast" value="false" />
											<Property name="BroadcastLevel" value="GcBroadcastLevel">
												<Property name="BroadcastLevel" value="Local" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Triggers" value="GcActionTrigger">
								<Property name="Event" value="GcAnimFrameEvent">
									<Property name="GcAnimFrameEvent">
										<Property name="Anim" value="EJECT" />
										<Property name="FrameStart" value="0" />
										<Property name="StartFromEnd" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcGoToStateAction">
										<Property name="GcGoToStateAction">
											<Property name="State" value="UNHIDE" />
											<Property name="Broadcast" value="false" />
											<Property name="BroadcastLevel" value="GcBroadcastLevel">
												<Property name="BroadcastLevel" value="Local" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Triggers" value="GcActionTrigger">
								<Property name="Event" value="GcStateTimeEvent">
									<Property name="GcStateTimeEvent">
										<Property name="Seconds" value="3.000000" />
										<Property name="RandomSeconds" value="0.000000" />
										<Property name="UseMissionClock" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcGoToStateAction">
										<Property name="GcGoToStateAction">
											<Property name="State" value="HIDE" />
											<Property name="Broadcast" value="false" />
											<Property name="BroadcastLevel" value="GcBroadcastLevel">
												<Property name="BroadcastLevel" value="Local" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="States" value="GcActionTriggerState">
						<Property name="StateID" value="HIDE" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger">
								<Property name="Event" value="GcStateTimeEvent">
									<Property name="GcStateTimeEvent">
										<Property name="Seconds" value="9.250000" />
										<Property name="RandomSeconds" value="0.000000" />
										<Property name="UseMissionClock" value="false" />
									</Property>
								</Property>
								<Property name="Action">
]] .. table.concat(cockpitsDeactivate) .. [[
									<Property name="Action" value="GcGoToStateAction">
										<Property name="GcGoToStateAction">
											<Property name="State" value="BOOT" />
											<Property name="Broadcast" value="false" />
											<Property name="BroadcastLevel" value="GcBroadcastLevel">
												<Property name="BroadcastLevel" value="Local" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="States" value="GcActionTriggerState">
						<Property name="StateID" value="UNHIDE" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger">
								<Property name="Event" value="GcStateTimeEvent">
									<Property name="GcStateTimeEvent">
										<Property name="Seconds" value="3.000000" />
										<Property name="RandomSeconds" value="0.000000" />
										<Property name="UseMissionClock" value="false" />
									</Property>
								</Property>
								<Property name="Action">
]] .. table.concat(cockpitsActivate) .. [[
									<Property name="Action" value="GcGoToStateAction">
										<Property name="GcGoToStateAction">
											<Property name="State" value="BOOT" />
											<Property name="Broadcast" value="false" />
											<Property name="BroadcastLevel" value="GcBroadcastLevel">
												<Property name="BroadcastLevel" value="Local" />
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
		</Property>
]]                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_A\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_B\COCKPITB\ENTITIES\COCKPIT_B.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_D\COCKPITD\ENTITIES\COCKPITD.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_E\COCKPIT_E\ENTITIES\COCKPTE.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPIT_F\COCKPTF\ENTITIES\COCKPITF.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB\ENTITIES\COCKPIT_B.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\ACCESSORIES\LANDINGGEAR\LANDINGGEAR_POD\ENTITIES\LANDINGGEAR.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\LANDINGGEAR_LEG\ENTITIES\LANDINGGEAR.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\LANDINGGEAR\LANDINGGEAR_A\ENTITIES\S_CLASS_LANDINGGEAR_A.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\SQUIDPARTS\LANDINGGEAR\LANDINGGEAR_A\ENTITIES\LANDINGGEAR_A.ENTITY.MBIN",
                        -- "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\COCKPIT\COCKPITA\ENTITIES\COCKPIT_A.ENTITY.MBIN",
                        -- "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\ENGINE\ENGINE_A\ENTITIES\ENGINEA.ENTITY.MBIN",
                        -- "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\COCKPIT\SAILSHIPCOCKPITA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT\ENTITIES\COCKPITINTERIOR.ENTITY.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
		<Property name="Components" value="GcTriggerActionComponentData">
			<Property name="GcTriggerActionComponentData">
				<Property name="HideModel" value="false" />
				<Property name="StartInactive" value="false" />
				<Property name="States">
					<Property name="States" value="GcActionTriggerState">
						<Property name="StateID" value="BOOT" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger">
								<Property name="Event" value="GcAnimFrameEvent">
									<Property name="GcAnimFrameEvent">
										<Property name="Anim" value="TAKEOFF" />
										<Property name="FrameStart" value="5" />
										<Property name="StartFromEnd" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcGoToStateAction">
										<Property name="GcGoToStateAction">
											<Property name="State" value="HIDE" />
											<Property name="Broadcast" value="false" />
											<Property name="BroadcastLevel" value="GcBroadcastLevel">
												<Property name="BroadcastLevel" value="Local" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Triggers" value="GcActionTrigger">
								<Property name="Event" value="GcAnimFrameEvent">
									<Property name="GcAnimFrameEvent">
										<Property name="Anim" value="LANDING" />
										<Property name="FrameStart" value="0" />
										<Property name="StartFromEnd" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcGoToStateAction">
										<Property name="GcGoToStateAction">
											<Property name="State" value="UNHIDE" />
											<Property name="Broadcast" value="false" />
											<Property name="BroadcastLevel" value="GcBroadcastLevel">
												<Property name="BroadcastLevel" value="Local" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
          </Property>
					<Property name="States" value="GcActionTriggerState">
						<Property name="StateID" value="HIDE" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger">
								<Property name="Event" value="GcStateTimeEvent">
									<Property name="GcStateTimeEvent">
										<Property name="Seconds" value="9.500000" />
										<Property name="RandomSeconds" value="0.000000" />
										<Property name="UseMissionClock" value="false" />
									</Property>
								</Property>
								<Property name="Action">
]] .. table.concat(procgenDeactivate) .. [[
									<Property name="Action" value="GcGoToStateAction">
										<Property name="GcGoToStateAction">
											<Property name="State" value="BOOT" />
											<Property name="Broadcast" value="false" />
											<Property name="BroadcastLevel" value="GcBroadcastLevel">
												<Property name="BroadcastLevel" value="Local" />
											</Property>
										</Property>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property name="States" value="GcActionTriggerState">
						<Property name="StateID" value="UNHIDE" />
						<Property name="Triggers">
							<Property name="Triggers" value="GcActionTrigger">
								<Property name="Event" value="GcStateTimeEvent">
									<Property name="GcStateTimeEvent">
										<Property name="Seconds" value="9.500000" />
										<Property name="RandomSeconds" value="0.000000" />
										<Property name="UseMissionClock" value="false" />
									</Property>
								</Property>
								<Property name="Action">
]] .. table.concat(procgenActivate) .. [[
									<Property name="Action" value="GcGoToStateAction">
										<Property name="GcGoToStateAction">
											<Property name="State" value="BOOT" />
											<Property name="Broadcast" value="false" />
											<Property name="BroadcastLevel" value="GcBroadcastLevel">
												<Property name="BroadcastLevel" value="Local" />
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
		</Property>
]]                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITCOMMON_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\INTERIORS\CANOPYA_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\CANOPYA_INTERIOR.SCENE.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT.SCENE.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Spacemap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransZ", "-3"},
                            }
                        }
                    }
                }
            }
        }
    },
}