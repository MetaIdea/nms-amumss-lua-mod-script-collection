States = [[
		<Property value="GcTriggerActionComponentData.xml">
			<Property name="HideModel" value="False" />
			<Property name="StartInactive" value="False" />
			<Property name="States">
				<Property value="GcActionTriggerState.xml">
					<Property name="StateID" value="PROXON" />
					<Property name="Triggers">
						<Property value="GcActionTrigger.xml">		
							<Property name="Trigger" value="GcPlayerNearbyEvent.xml">
								<Property name="RequirePlayerAction" value="OnFoot" />
								<Property name="Distance" value="2" />
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
							<Property name="Trigger" value="GcPlayerNearbyEvent.xml">
								<Property name="RequirePlayerAction" value="OnFoot" />
								<Property name="Distance" value="2" />
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
MOD_FILENAME	= "GDoor 310a Close Range.pak",
MOD_DESCRIPTION	= "Proximity Base Doors",
MOD_AUTHOR		= "Gumsk",
NMS_VERSION		= "310",
MODIFICATIONS	= {{
	MBIN_CHANGE_TABLE = {{
	MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DOOR\ENTITIES\MAINDOOR.ENTITY.MBIN",
	EXML_CHANGE_TABLE = {
		{SPECIAL_KEY_WORDS = {"Anim","OPEN"},
		VALUE_CHANGE_TABLE =
			{{"Speed", 3}}},
		{SPECIAL_KEY_WORDS = {"Anim","CLOSE"},
		VALUE_CHANGE_TABLE =
			{{"Speed", 0.5}}},
		{PRECEDING_KEY_WORDS = {"GcTriggerActionComponentData.xml"},
			["REMOVE"] = "SECTION"},
		{PRECEDING_KEY_WORDS = {"TkAnimationComponentData.xml"},
			["ADD"] = States,
			REPLACE_TYPE = "ADDAFTERSECTION"}
}},{
	MBIN_FILE_SOURCE = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DOOR.SCENE.MBIN",
	EXML_CHANGE_TABLE = {{
		SPECIAL_KEY_WORDS = {"Name", "RefSnapScene4"},
			LINE_OFFSET = "-1",
			["REMOVE"] = "SECTION"},
		{SPECIAL_KEY_WORDS = {"Name", "RefSnapScene5"},
			LINE_OFFSET = "-1",
			["REMOVE"] = "SECTION"},
		{SPECIAL_KEY_WORDS = {"Name", "RefSnapScene6"},
			LINE_OFFSET = "-1",
			["REMOVE"] = "SECTION"},
		{SPECIAL_KEY_WORDS = {"Name", "RefSnapScene7"},
			LINE_OFFSET = "-1",
			["REMOVE"] = "SECTION"}
}},}}}}
