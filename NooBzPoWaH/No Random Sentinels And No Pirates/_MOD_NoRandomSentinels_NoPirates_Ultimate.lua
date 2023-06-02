NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_MOD_NoRandomSentinels_NoPirates_Ultimate.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["LUA_AUTHOR"]			= "Babscoole",
["MOD_UPLOADER"]			= "NooBzPoWaH",
["NMS_VERSION"]				= "3.+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"MODELS\\COMMON\\ROBOTS\\DRONE\\ENTITIES\\DRONE.ENTITY.MBIN",
						"MODELS\\COMMON\\ROBOTS\\CORRUPTEDDRONE\\ENTITIES\\CORRUPTEDDRONE.ENTITY.MBIN",
						"MODELS\\COMMON\\ROBOTS\\DRONEARMOURED\\ENTITIES\\DRONEARMOURED.ENTITY.MBIN",
						"MODELS\\COMMON\\SPACECRAFT\\DRONE\\DRONESHIP\\ENTITIES\\SHIP.ENTITY.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "Components" },
							["ADD"] 				= 
[[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\\COMMON\\ROBOTS\\DRONE" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>					
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\\COMMON\\ROBOTS\\CORRUPTEDDRONE" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\\COMMON\\ROBOTS\\DRONEARMOURED" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>				
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Remove" />
                  <Property name="Name" value="MODELS\\COMMON\\SPACECRAFT\\DRONE\\DRONESHIP" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
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
]]
						}
					}
				}
			}
		},
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SpawnPirates",				"False"}, 	-- Original "True"
								{"SpawnRobots",					"False"}	-- Original "True"
							}
						}
					}
				}
			}
		},
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\\SIMULATION\\SCENE\\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "Count" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0"}, 		-- Original "1"
								{"y",	"0"} 		-- Original "1"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0"}, 		-- Original "1"
								{"y",	"0"} 		-- Original "1"
							}
						}
					}
				}
			}
		},
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\\SIMULATION\\SPACE\\AISPACESHIPMANAGER.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Pirate"},
							["VALUE_MATCH"]			= "MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN",
							["VALUE_CHANGE_TABLE"] 	= {{"Filename", ""}}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Pirate"},
							["VALUE_MATCH"]			= "MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN",
							["VALUE_CHANGE_TABLE"] 	= {{"Filename", ""}}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Pirate"},
							["VALUE_MATCH"]			= "MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN",
							["VALUE_CHANGE_TABLE"] 	= {{"Filename", ""}}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Pirate"},
							["VALUE_MATCH"]			= "MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN",
							["VALUE_CHANGE_TABLE"] 	= {{"Filename", ""}}
						}
					}
				}
			}
		},
	}	
}