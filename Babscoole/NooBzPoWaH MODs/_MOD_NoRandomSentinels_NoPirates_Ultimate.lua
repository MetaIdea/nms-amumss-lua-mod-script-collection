NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_MOD_NoRandomSentinels_NoPirates_Ultimate",
["MOD_AUTHOR"]    = "Mjjstral AKA MetaIdea & NooBzPoWaH",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.74+",
["MODIFICATIONS"] = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "MODELS\\COMMON\\ROBOTS\\DRONE\\ENTITIES\\DRONE.ENTITY.MBIN",
                        "MODELS\\COMMON\\ROBOTS\\CORRUPTEDDRONE\\ENTITIES\\CORRUPTEDDRONE.ENTITY.MBIN",
                        "MODELS\\COMMON\\ROBOTS\\DRONEARMOURED\\ENTITIES\\DRONEARMOURED.ENTITY.MBIN",
                        "MODELS\\COMMON\\SPACECRAFT\\DRONE\\DRONESHIP\\ENTITIES\\SHIP.ENTITY.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
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
								<Property name="Event" value="GcStateTimeEvent">
									<Property name="GcStateTimeEvent">
										<Property name="Seconds" value="0.000000" />
										<Property name="RandomSeconds" value="0.000000" />
										<Property name="UseMissionClock" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcNodeActivationAction">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Remove" />
											<Property name="Name" value="MODELS\\COMMON\\ROBOTS\\DRONE" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="true" />
											<Property name="IncludeChildPhysics" value="true" />
											<Property name="NotifyNPC" value="true" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="true" />
										</Property>
									</Property>
									<Property name="Action" value="GcNodeActivationAction">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Remove" />
											<Property name="Name" value="MODELS\\COMMON\\ROBOTS\\CORRUPTEDDRONE" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="true" />
											<Property name="IncludeChildPhysics" value="true" />
											<Property name="NotifyNPC" value="true" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="true" />
										</Property>
									</Property>
									<Property name="Action" value="GcNodeActivationAction">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Remove" />
											<Property name="Name" value="MODELS\\COMMON\\ROBOTS\\DRONEARMOURED" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="true" />
											<Property name="IncludeChildPhysics" value="true" />
											<Property name="NotifyNPC" value="true" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="true" />
										</Property>
									</Property>
									<Property name="Action" value="GcNodeActivationAction">
										<Property name="GcNodeActivationAction">
											<Property name="NodeActiveState" value="Remove" />
											<Property name="Name" value="MODELS\\COMMON\\SPACECRAFT\\DRONE\\DRONESHIP" />
											<Property name="SceneToAdd" value="" />
											<Property name="IncludePhysics" value="true" />
											<Property name="IncludeChildPhysics" value="true" />
											<Property name="NotifyNPC" value="true" />
											<Property name="UseMasterModel" value="true" />
											<Property name="UseLocalNode" value="false" />
											<Property name="RestartEmitters" value="false" />
											<Property name="AffectModels" value="true" />
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
]]
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"SpawnPirates", "False"}, -- Original "True"
                                {"SpawnRobots",  "False"}  -- Original "True"
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\\SIMULATION\\SCENE\\EXPERIENCESPAWNTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PirateSpawns", "GcAIShipSpawnData"},
                            ["PRECEDING_KEY_WORDS"] = {"Count"},
                            ["REPLACE_TYPE"] = "ALL", 
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"X", "0"}, -- Original "1"
                                {"Y", "0"}  -- Original "1"
                            }
                        },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"PirateSpawns", "GcAIShipSpawnData"},
                            -- ["PRECEDING_KEY_WORDS"] = {"Count"},
                            -- ["SECTION_ACTIVE"] = {"1"},
                            -- ["VALUE_CHANGE_TABLE"]  = 
                            -- {
                                -- {"X", "0"}, -- Original "1"
                                -- {"Y", "0"}  -- Original "1"
                            -- }
                        -- }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\\SIMULATION\\SPACE\\AISPACESHIPMANAGER.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Pirate"},
                            ["VALUE_MATCH"]         = "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN",
                            ["VALUE_CHANGE_TABLE"]  = {{"Filename", ""}}
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Pirate"},
                            ["VALUE_MATCH"]         = "MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN",
                            ["VALUE_CHANGE_TABLE"]  = {{"Filename", ""}}
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Pirate"},
                            ["VALUE_MATCH"]         = "MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN",
                            ["VALUE_CHANGE_TABLE"]  = {{"Filename", ""}}
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Pirate"},
                            ["VALUE_MATCH"]         = "MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN",
                            ["VALUE_CHANGE_TABLE"]  = {{"Filename", ""}}
                        }
                    }
                }
            }
        },
    }   
}