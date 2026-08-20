--[[
Mod id				3450
Mod category		Gameplay
Mod name			Living ship finder (Beta)
Mod language		English
Current version		6.45.1
Author				DY230 / 2点半
Nexus URL			https://www.nexusmods.com/nomanssky/mods/3450
]]

local LOCTABLE = [[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkLocalisationTable">
	<Property name="Table">
		<Property name="Table" value="TkLocalisationEntry" _id="UI_RS_TO_BS">
			<Property name="Id" value="UI_RS_TO_BS" />
			<Property name="English" value="Reset to living ship" />
			<Property name="French" value="Reset to living ship" />
			<Property name="Italian" value="Reset to living ship" />
			<Property name="German" value="Reset to living ship" />
			<Property name="Spanish" value="Reset to living ship" />
			<Property name="Russian" value="Reset to living ship" />
			<Property name="Polish" value="Reset to living ship" />
			<Property name="Dutch" value="Reset to living ship" />
			<Property name="Portuguese" value="Reset to living ship" />
			<Property name="LatinAmericanSpanish" value="Reset to living ship" />
			<Property name="BrazilianPortuguese" value="Reset to living ship" />
			<Property name="SimplifiedChinese" value="重置为生物飞船" />
			<Property name="TraditionalChinese" value="重置爲生物太空船" />
			<Property name="TencentChinese" value="Reset to living ship" />
			<Property name="Korean" value="Reset to living ship" />
			<Property name="Japanese" value="Reset to living ship" />
			<Property name="USEnglish" value="Reset to living ship" />
		</Property>
		<Property name="Table" value="TkLocalisationEntry" _id="UI_BS_CYCLE">
			<Property name="Id" value="UI_BS_CYCLE" />
			<Property name="English" value="Find living ship directly" />
			<Property name="French" value="Find living ship directly" />
			<Property name="Italian" value="Find living ship directly" />
			<Property name="German" value="Find living ship directly" />
			<Property name="Spanish" value="Find living ship directly" />
			<Property name="Russian" value="Find living ship directly" />
			<Property name="Polish" value="Find living ship directly" />
			<Property name="Dutch" value="Find living ship directly" />
			<Property name="Portuguese" value="Find living ship directly" />
			<Property name="LatinAmericanSpanish" value="Find living ship directly" />
			<Property name="BrazilianPortuguese" value="Find living ship directly" />
			<Property name="SimplifiedChinese" value="直接找生物飞船" />
			<Property name="TraditionalChinese" value="直接找生物太空船" />
			<Property name="TencentChinese" value="Find living ship directly" />
			<Property name="Korean" value="Find living ship directly" />
			<Property name="Japanese" value="Find living ship directly" />
			<Property name="USEnglish" value="Find living ship directly" />
		</Property>
	</Property>
</Data>
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		= "___230_LivingShipFinderBeta",
	MOD_AUTHOR			= "DY230",
	NMS_VERSION		 = "6.45.1",
	MOD_DESCRIPTION = "Use emote to find a Living Ship.",
	MODIFICATIONS = {
		{
			MBIN_CT = {
				{--EMOTEMENU
					MBIN_FS = [[METADATA\UI\EMOTEMENU.MBIN]],
					MXML_CT = {
						{
							PKW = "Emotes",
							ADD = [[
		<Property name="Emotes" value="GcPlayerEmote" _id="E_BS_RESET">
			<Property name="Title" value="UI_RS_TO_BS" />
			<Property name="ChatText" value="" />
			<Property name="ChatUsesPrefix" value="false" />
			<Property name="EmoteID" value="E_BS_RESET" />
			<Property name="AnimationName" value="E_BS_RESET" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.BIOSHIP.ON.DDS" />
			</Property>
			<Property name="MoveToCancel" value="true" />
			<Property name="RidingAnimationName" value="E_BS_RESET" />
		</Property>
		<Property name="Emotes" value="GcPlayerEmote" _id="E_BS_CYCLE">
			<Property name="Title" value="UI_BS_CYCLE" />
			<Property name="ChatText" value="" />
			<Property name="ChatUsesPrefix" value="false" />
			<Property name="EmoteID" value="E_BS_CYCLE" />
			<Property name="AnimationName" value="E_BS_CYCLE" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.BIOSHIP.DDS" />
			</Property>
			<Property name="MoveToCancel" value="true" />
			<Property name="RidingAnimationName" value="E_BS_CYCLE" />
		</Property>
]],
						},
					},
				},
				{--GCAISPACESHIPGLOBALS.GLOBAL
					MBIN_FS = [[GCAISPACESHIPGLOBALS.GLOBAL.MBIN]],
					MXML_CT = {
						{
							VCT = {
								{ "CrashedShipBrokenSlotChance", 0 },--0.75
								{ "CrashedShipBrokenTechChance", 0 },--0.7
							},
						},
					},
				},
				{--PLAYERCHARACTER.ENTITY
					MBIN_FS = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN]],
					MXML_CT = {
						{
							PKW = "Components",
							ADD = [[
		<Property name="Components" value="TkAnimationComponentData">
			<Property name="TkAnimationComponentData">
				<Property name="Anims">
					<Property name="Anims" value="TkAnimationData">
						<Property name="Anim" value="E_BS_RESET" />
						<Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/BINOCS/2H_BINOCS_UNSHEATHE.ANIM.MBIN" />
						<Property name="AnimType" value="OneShotBlendable" />
					</Property>
					<Property name="Anims" value="TkAnimationData">
						<Property name="Anim" value="E_BS_CYCLE" />
						<Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/BINOCS/2H_BINOCS_UNSHEATHE.ANIM.MBIN" />
						<Property name="AnimType" value="OneShotBlendable" />
					</Property>
				</Property>
			</Property>
		</Property>
]],
						},
						{
							SKW = { { "Components", "GcTriggerActionComponentData" } },
							PKW = "Triggers",
							ADD = [[
							<Property name="Triggers" value="GcActionTrigger">
								<Property name="Event" value="GcAnimFrameEvent">
									<Property name="GcAnimFrameEvent">
										<Property name="Anim" value="E_BS_RESET" />
										<Property name="FrameStart" value="0" />
										<Property name="StartFromEnd" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcRewardAction">
										<Property name="GcRewardAction">
											<Property name="Reward" value="R_BS_RESET" />
										</Property>
									</Property>
								</Property>
							</Property>
							<Property name="Triggers" value="GcActionTrigger">
								<Property name="Event" value="GcAnimFrameEvent">
									<Property name="GcAnimFrameEvent">
										<Property name="Anim" value="E_BS_CYCLE" />
										<Property name="FrameStart" value="0" />
										<Property name="StartFromEnd" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcRewardAction">
										<Property name="GcRewardAction">
											<Property name="Reward" value="R_BS_CYCLE" />
										</Property>
									</Property>
								</Property>
							</Property>
]],
						},
					},
				},
				{--REWARDTABLE
					MBIN_FS = [[METADATA\REALITY\TABLES\REWARDTABLE.MBIN]],
					MXML_CT = {
						{
							SKW = { { "Id", "R_CLEAR_WANTED" } },
							SEC_COPY = "GN_RW_RAW",
						},
						{
							SEC_EDIT = "GN_RW_RAW",
							PKW = "Reward",
							REMOVE = "SECTION",
						},
						{
							SKW = { { "Id", "R_CHART_ROBOT" } },
							PKW = "Reward",
							SEC_COPY = "SP_RW_EVENT",
						},
						{
							SEC_EDIT = "GN_RW_RAW",
							SKW = { { "LabelID", "" } },
							SEC_PASTE = "SP_RW_EVENT",
						},
						{
							SEC_EDIT = "GN_RW_RAW",
							SEC_COPY = "GN_RW_RAW_RESET",
						},
						{
							SEC_EDIT = "GN_RW_RAW_RESET",
							VCT = {
								{ "Id", "R_BS_RESET" },
								{ "Event", "SE_BS_RESET" },
								{ "StartDelay", "0" },
								{ "FailureOSD", "UI_SIGNAL_S13_FAIL" },
							},
						},
						{
							SEC_EDIT = "GN_RW_RAW_RESET",
							SEC_COPY = "GN_RW_RAW_CYCLE",
						},
						{
							SEC_EDIT = "GN_RW_RAW_CYCLE",
							VCT = {
								{ "Id", "R_BS_CYCLE" },
								{ "Event", "SE_BS_CYCLE" },
							},
						},
						{
							PKW = "GenericTable",
							SEC_PASTE = "GN_RW_RAW_CYCLE",
						},
						{
							PKW = "GenericTable",
							SEC_PASTE = "GN_RW_RAW_RESET",
						},
					},
				},
				{--SCANEVENTTABLEPLANET
					MBIN_FS = [[METADATA\SIMULATION\SCANNING\SCANEVENTTABLEPLANET.MBIN]],
					MXML_CT = {
						{
							SKW = { { "Name", "DISTRESS" } },
							SEC_COPY = "ADD_CYCLE",
						},
						{
							SEC_EDIT = "ADD_CYCLE",
							VCT = {
								{ "Name", "SE_BS_CYCLE" },
								{ "OSDMessage", "UI_BIO_SHIP_MISSION5_OBJ_EXTRA" },
								{ "MarkerLabel", "UI_BIO_SHIP_MISSION5_LABEL_SHIP" },
								{ "Filename", "TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.BIOSHIP.DDS" },
								{ "TooltipMessage", "UI_BIO_SHIP_MISSION5_MSG3A" },
							},
						},
						{
							SEC_EDIT = "ADD_CYCLE",
							SKW = { { "ResourceOverride", "GcResourceElement" } },
							VCT = {
								{ "Filename", "MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN" },
							},
						},
						{
							SEC_EDIT = "ADD_CYCLE",
							SEC_COPY = "ADD_RESET",
						},
						{
							SEC_EDIT = "ADD_RESET",
							VCT = {
								{ "Name", "SE_BS_RESET" },
								{ "BuildingLocation", "AllNearest" },
							},
						},
						{
							PKW = "Events",
							SEC_PASTE = "ADD_CYCLE",
						},
						{
							PKW = "Events",
							SEC_PASTE = "ADD_RESET",
						},
					},
				},
			},
		},
	},

	ADD_FILES = {
		{
			FILE_DESTINATION = [[LOCTABLE.MXML]],
			FILE_CONTENT = LOCTABLE,
		},
	},
}