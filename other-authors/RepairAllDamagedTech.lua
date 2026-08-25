--[[
Mod id				3978
Mod category		Gameplay
Mod name			Repair All Damaged Tech
Mod language		English
Current version		6.45.1
Author				DY230 / 2点半
Nexus URL			https://www.nexusmods.com/nomanssky/mods/3978
]]

local LOCTABLE = [[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkLocalisationTable">
	<Property name="Table">
		<Property name="Table" value="TkLocalisationEntry" _id="UI_REPAIRTECH">
			<Property name="Id" value="UI_REPAIRTECH" />
			<Property name="English" value="Repair all damaged technology" />
			<Property name="French" value="Repair all damaged technology" />
			<Property name="Italian" value="Repair all damaged technology" />
			<Property name="German" value="Repair all damaged technology" />
			<Property name="Spanish" value="Repair all damaged technology" />
			<Property name="Russian" value="Repair all damaged technology" />
			<Property name="Polish" value="Repair all damaged technology" />
			<Property name="Dutch" value="Repair all damaged technology" />
			<Property name="Portuguese" value="Repair all damaged technology" />
			<Property name="LatinAmericanSpanish" value="Repair all damaged technology" />
			<Property name="BrazilianPortuguese" value="Repair all damaged technology" />
			<Property name="SimplifiedChinese" value="修复全部损坏技术" />
			<Property name="TraditionalChinese" value="修復全部損壞技術" />
			<Property name="TencentChinese" value="Repair all damaged technology" />
			<Property name="Korean" value="Repair all damaged technology" />
			<Property name="Japanese" value="Repair all damaged technology" />
			<Property name="USEnglish" value="Repair all damaged technology" />
		</Property>
		<Property name="Table" value="TkLocalisationEntry" _id="UI_REPAIRTECH_OK">
			<Property name="Id" value="UI_REPAIRTECH_OK" />
			<Property name="English" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="French" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="Italian" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="German" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="Spanish" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="Russian" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="Polish" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="Dutch" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="Portuguese" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="LatinAmericanSpanish" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="BrazilianPortuguese" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="SimplifiedChinese" value="&lt;IMG&gt;TICK&lt;&gt; 已修复全部损坏技术" />
			<Property name="TraditionalChinese" value="&lt;IMG&gt;TICK&lt;&gt; 已修復全部損壞技術" />
			<Property name="TencentChinese" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="Korean" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="Japanese" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
			<Property name="USEnglish" value="&lt;IMG&gt;TICK&lt;&gt; All damaged technologies have been repaired" />
		</Property>
	</Property>
</Data>
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME		 = "___230_RepairAllDamagedTech",
	MOD_AUTHOR			 = "DY230",
	NMS_VERSION			 = "6.45.1",
	MOD_DESCRIPTION		 = "Use emote to repair all technologies that are damaged after crossing the Galaxy Centre.",
	MODIFICATIONS		 = {
		{
			MBIN_CT = {
				{--EMOTEMENU
					MBIN_FS = [[METADATA\UI\EMOTEMENU.MBIN]],
					MXML_CT = {
						{
							PKW = "Emotes",
							ADD = [[
		<Property name="Emotes" value="GcPlayerEmote" _id="E_REPAIRTECH">
			<Property name="Title" value="UI_REPAIRTECH" />
			<Property name="ChatText" value="" />
			<Property name="ChatUsesPrefix" value="false" />
			<Property name="EmoteID" value="E_REPAIRTECH" />
			<Property name="AnimationName" value="E_REPAIRTECH" />
			<Property name="PropData" value="GcPlayerEmotePropData" />
			<Property name="Icon" value="TkTextureResource">
				<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/WIKI/EXPLORATION7.DDS" />
			</Property>
			<Property name="MoveToCancel" value="true" />
			<Property name="RidingAnimationName" value="E_REPAIRTECH" />
		</Property>
]],
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
						<Property name="Anim" value="E_REPAIRTECH" />
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
										<Property name="Anim" value="E_REPAIRTECH" />
										<Property name="FrameStart" value="0" />
										<Property name="StartFromEnd" value="false" />
									</Property>
								</Property>
								<Property name="Action">
									<Property name="Action" value="GcRewardAction">
										<Property name="GcRewardAction">
											<Property name="Reward" value="R_REPAIRTECH" />
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
							VCT = { { "Id", "R_REPAIRTECH" } },
						},
						{
							SEC_EDIT = "GN_RW_RAW",
							SKW = { { "List", "GcRewardTableItem" } },
							REMOVE = "SECTION",
						},
						{
							SKW = { { "Message", "UI_SPACE_POI_PIRATE_SUMMON" } },
							SECTION_UP = 2,
							SEC_COPY = "RW_OSDMSG",
						},
						{
							SEC_EDIT = "RW_OSDMSG",
							VCT = {
								{ "Message", "UI_REPAIRTECH_OK" },
								{ "Filename", "" },
								{ "UseSpookMessage", "true" },
							},
						},
						{
							SKW = { { "Reward", "GcRewardRepairWholeInventory" } },
							SECTION_UP = 1,
							SEC_COPY = "RW_REPAIR_RAW",
						},
						{
							SEC_EDIT = "RW_REPAIR_RAW",
							SEC_COPY = "RW_REPAIR_PERSONALTECH",
						},
						{
							SEC_EDIT = "RW_REPAIR_PERSONALTECH",
							VCT = { { "InventoryToRepair", "PersonalTech" } },
						},
						{
							SEC_EDIT = "RW_REPAIR_RAW",
							SEC_COPY = "RW_REPAIR_SHIPTECH",
						},
						{
							SEC_EDIT = "RW_REPAIR_SHIPTECH",
							VCT = { { "InventoryToRepair", "ShipTech" } },
						},
						{
							SEC_EDIT = "RW_REPAIR_RAW",
							SEC_COPY = "RW_REPAIR_WEAPON",
						},
						{
							SEC_EDIT = "RW_REPAIR_WEAPON",
							VCT = { { "InventoryToRepair", "Weapon" } },
						},
						{
							SEC_EDIT = "GN_RW_RAW",
							PKW = { "List", "List" },
							SEC_PASTE = "RW_OSDMSG",
						},
						{
							SEC_EDIT = "GN_RW_RAW",
							PKW = { "List", "List" },
							SEC_PASTE = "RW_REPAIR_WEAPON",
						},
						{
							SEC_EDIT = "GN_RW_RAW",
							PKW = { "List", "List" },
							SEC_PASTE = "RW_REPAIR_SHIPTECH",
						},
						{
							SEC_EDIT = "GN_RW_RAW",
							PKW = { "List", "List" },
							SEC_PASTE = "RW_REPAIR_PERSONALTECH",
						},
						{
							PKW = "GenericTable",
							SEC_PASTE = "GN_RW_RAW",
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