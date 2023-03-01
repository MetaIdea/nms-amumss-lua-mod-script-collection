Author = "Gumsk"
ModName = "gDoor"
ModNameSub = "Garage Slow"
BaseDescription = "Proximity garage doors"
GameVersion = "411"
ModVersion = "a"
FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASICPARTS\MESHES\COMMON\ENTITIES\GARAGEDOOR.ENTITY.MBIN"

States = [[
		<Property value="GcTriggerActionComponentData.xml">
			<Property name="HideModel" value="False" />
			<Property name="StartInactive" value="False" />
			<Property name="States">
				<Property value="GcActionTriggerState.xml">
					<Property name="StateID" value="PROXON" />
					<Property name="Triggers">
						<Property value="GcActionTrigger.xml">		
							<Property name="Event" value="GcPlayerNearbyEvent.xml">
								<Property name="RequirePlayerAction" value="OnFoot" />
								<Property name="Distance" value="20" />
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
									<Property name="Sound" value="Base_Garage_Door_Open" />
									<Property name="UseOcclusion" value="False" />
									<Property name="OcclusionRadius" value="2" />
								</Property>
								<Property value="GcPlayAnimAction.xml">
									<Property name="Anim" value="OPEN" />
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
								<Property name="Distance" value="20" />
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
									<Property name="Sound" value="Base_Garage_Door_Close" />
									<Property name="UseOcclusion" value="False" />
									<Property name="OcclusionRadius" value="2" />
								</Property>
								<Property value="GcPlayAnimAction.xml">
									<Property name="Anim" value="CLOSE" />
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
				-- {
					-- ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/COMMON/ANIMS/GARAGEDOOR_OPEN.ANIM.MBIN",},
					-- ["INTEGER_TO_FLOAT"] = "FORCE",
					-- ["VALUE_CHANGE_TABLE"] = {
						-- {"Speed", 3}
					-- }
				-- },
				-- {
					-- ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BASICPARTS/MESHES/COMMON/ANIMS/GARAGEDOOR_CLOSE.ANIM.MBIN",},
					-- ["INTEGER_TO_FLOAT"] = "FORCE",
					-- ["VALUE_CHANGE_TABLE"] = {
						-- {"Speed", 0.5}
					-- }
				-- },
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
		}
	}
}
}}
