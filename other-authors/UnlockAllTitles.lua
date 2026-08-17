--[[
Mod id                  3496
Mod category            Cheat
Mod name                Unlock All Titles
Mod language            English
Current version         6.45.1
Author                  DY230
Nexus URL               https://www.nexusmods.com/nomanssky/mods/3496
]]

local LOCTABLE = [[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkLocalisationTable">
	<Property name="Table">
		<Property name="Table" value="TkLocalisationEntry" _id="UI_ULAT">
			<Property name="Id" value="UI_ULAT"/>
			<Property name="English" value="Unlock All Titles" />
			<Property name="French" value="Unlock All Titles" />
			<Property name="Italian" value="Unlock All Titles" />
			<Property name="German" value="Unlock All Titles" />
			<Property name="Spanish" value="Unlock All Titles" />
			<Property name="Russian" value="Unlock All Titles" />
			<Property name="Polish" value="Unlock All Titles" />
			<Property name="Dutch" value="Unlock All Titles" />
			<Property name="Portuguese" value="Unlock All Titles" />
			<Property name="LatinAmericanSpanish" value="Unlock All Titles" />
			<Property name="BrazilianPortuguese" value="Unlock All Titles" />
			<Property name="SimplifiedChinese" value="解锁全头衔" />
			<Property name="TraditionalChinese" value="解鎖全頭銜" />
			<Property name="TencentChinese" value="Unlock All Titles" />
			<Property name="Korean" value="Unlock All Titles" />
			<Property name="Japanese" value="Unlock All Titles" />
			<Property name="USEnglish" value="Unlock All Titles" />
		</Property>
		<Property name="Table" value="TkLocalisationEntry" _id="UI_ULAT_OK">
			<Property name="Id" value="UI_ULAT_OK" />
			<Property name="English" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="French" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="Italian" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="German" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="Spanish" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="Russian" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="Polish" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="Dutch" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="Portuguese" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="LatinAmericanSpanish" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="BrazilianPortuguese" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="SimplifiedChinese" value="&lt;IMG&gt;TICK&lt;&gt; 全部头衔已解锁" />
			<Property name="TraditionalChinese" value="&lt;IMG&gt;TICK&lt;&gt; 全部頭銜已解鎖" />
			<Property name="TencentChinese" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="Korean" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="Japanese" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
			<Property name="USEnglish" value="&lt;IMG&gt;TICK&lt;&gt; All Titles Unlocked!" />
		</Property>
	</Property>
</Data>
]]

local TITLEID_LIST = {--PLAYERTITLEDATA.MBIN @ 6.45.1, total: 338
	"T_TRA1","T_TRA2","T_TRA3","T_TRA4","T_TRA5","T_TRA6","T_TRA7","T_TRA8","T_TRA9","T_EXP1","T_EXP2","T_EXP3","T_EXP4","T_EXP5","T_EXP6","T_EXP7","T_EXP8","T_EXP9","T_WAR1","T_WAR2","T_WAR3","T_WAR4","T_WAR5","T_WAR6","T_WAR7","T_WAR8","T_WAR9","T_BUI1","T_BUI2","T_BUI3","T_BUI4","T_BUI5","T_BUI6","T_BUI7","T_BUI8","T_BUI9","T_TRA_GUILD1","T_TRA_GUILD2","T_TRA_GUILD3","T_TRA_GUILD4","T_TRA_GUILD5","T_TRA_GUILD6","T_TRA_GUILD7","T_TRA_GUILD8","T_TRA_GUILD9","T_EXP_GUILD1","T_EXP_GUILD2","T_EXP_GUILD3","T_EXP_GUILD4","T_EXP_GUILD5","T_EXP_GUILD6","T_EXP_GUILD7","T_EXP_GUILD8","T_EXP_GUILD9","T_WAR_GUILD1","T_WAR_GUILD2","T_WAR_GUILD3","T_WAR_GUILD4","T_WAR_GUILD5","T_WAR_GUILD6","T_WAR_GUILD7","T_WAR_GUILD8","T_WAR_GUILD9","T_REALITY1","T_REALITY2","T_REALITY3","T_REALITY4","T_REALITY5","T_REALITY6","T_REALITY7","T_REALITY8","T_REALITY9","T_REALITY10","T_HUB_VISIT","T_LORE1","T_LORE2","T_LORE3","T_LORE4","T_LORE5","T_LORE6","T_LORE7","T_LORE8","T_LORE9","T_LORE10","T_ABANDLORE1","T_ABANDLORE2","T_ABANDLORE3","T_ABANDLORE4","T_OLD","T_BLACK_HOL","T_NADAPOLO","T_ARTEMIS","T_ATLASPATH","T_ATLASDENY","T_NO_RESET","T_RESET","T_PURPM","T_PORTAL","T_WEEKEND","T_GIFT","T_GOAL","T_CENTRE_SURV","T_CENTRE_PERMA","T_TRA_LORE","T_EXP_LORE","T_WAR_LORE1","T_WAR_LORE2","T_CRASHED_SHIP","T_TELAMON","T_CHEF","T_JM_WALK1","T_JM_WALK2","T_JM_WALK3","T_JM_CHAT1","T_JM_CHAT2","T_JM_CHAT3","T_JM_WORD1","T_JM_WORD2","T_JM_WORD3","T_JM_UNITS1","T_JM_UNITS2","T_JM_UNITS3","T_JM_SHIPS1","T_JM_SHIPS2","T_JM_SHIPS3","T_JM_FIGHT1","T_JM_FIGHT2","T_JM_FIGHT3","T_JM_SURVIVE1","T_JM_SURVIVE2","T_JM_SURVIVE3","T_JM_EXPLORE1","T_JM_EXPLORE2","T_JM_EXPLORE3","T_JM_ZOO1","T_JM_ZOO2","T_JM_ZOO3","T_JM_FARM1","T_JM_FARM2","T_JM_RARESCAN1","T_JM_RARESCAN2","T_JM_RARESCAN3","T_JM_MINSCAN1","T_JM_MINSCAN2","T_JM_FLORASCAN1","T_JM_FLORASCAN2","T_JM_FLORASCAN3","T_PET1","T_PET2","T_PET3","T_BUILDER1","T_BUILDER2","T_BUILDER3","T_FLEET1","T_FLEET2","T_FLEET3","T_BONES1","T_BONES2","T_BONES3","T_BONES4","T_BONES5","T_BONES6","T_DIG1","T_DIG2","T_DIG3","T_SALVAGE1","T_SALVAGE2","T_SALVAGE3","T_SHIP_SCI","T_SHIP_FIGHT","T_SHIP_DROP","T_SHIP_SHUTTLE","T_SHIP_EXOTIC","T_MECH","T_SHIP_ALIEN","T_ABYSS","T_SHOP1","T_SHOP2","T_SHOP3","T_SHOP4","T_SHOP5","T_SHOP6","T_SHOP7","T_SHOP8","T_SHOP9","T_SHOP10","T_SHOP11","T_SHOP12","T_SHOP13","T_SHOP14","T_SHOP15","T_SHOP16","T_SHOP17","T_SHOP18","T_SHOP19","T_SHOP20","T_SHOP21","T_SHOP22","T_SHOP23","T_SHOP24","T_SHOP25","T_SHOP26","T_SHOP27","T_SHOP28","T_SHOP29","T_SHOP30","T_EXPD1","T_EXPD2A","T_EXPD2B","T_EXPD3","T_EXPD4","T_EXPD5","T_EXPD6","T_EXPD7","T_EXPD8","T_EXPD9","T_EXPD10","T_EXPD11","T_EXPD12","T_EXPD13","T_EXPD14","T_EXPD15","T_EXPD16","T_EXPD17","T_EXPD18","T_EXPD19","T_EXPD20","T_EXPD21","T_EXPD22","T_BUGHUNT1","T_BUGHUNT2","T_BUGHUNT3","T_BUGHUNT4","T_JELLYBOSS","T_FISHCASH","T_FISHING1","T_FISHFREE","T_FISHLEGEND","T_FISHBOOT","T_DEATH1","T_DEATH2","T_DEATH3","T_DEATH4","T_DEATH5","T_DEATH6","T_DEATH7","T_DEATH8","T_DEATH9","T_DEATH10","T_DEATH11","T_WATCHED","T_SPOOKY1","T_SPOOKY2","T_MAYOR","T_DRONEFRIEND","T_HIVELORE","T_PIRATEMISS","T_PIRATE_BETRAY","T_PIRATE_HIDE","T_MS_PPROD_5","T_MS_PPROD_7","T_MS_FIENDS_7","T_MS_FIENDS_9","T_MS_FLORA_4","T_MS_FLORA_8","T_MS_NANITES_6","T_MS_NANITES_8","T_MS_SMUGGLE_7","T_MS_SMUGGLE_8","T_MS_WALKERS_4","T_MS_WALKERS_5","T_MS_WALKERS_7","T_MS_WARPS_1","T_MS_WARPS_9","T_MS_WORDS_4","T_MS_WORDS_8","T_MS_MISSION_2","T_MS_MISSION_8","T_MS_PLANTS_1","T_MS_PLANTS_4","T_MS_PLANTS_8","T_MS_SCANNER_5","T_MS_SCANNER_8","T_MS_ENEMIES_6","T_MS_ENEMIES_10","T_MS_SENT_6","T_MS_SENT_8","T_MS_SENT_10","T_MS_DIST_4","T_MS_DIST_10","T_MS_MONEY_6","T_MS_MONEY_10","T_MS_LIFE_EX_8","T_MS_LIFE_EX_10","T_CORRUPT_SENT1","T_CORRUPT_SENT2","T_ROBOMISS1","T_ROBOMISS2","T_ROBOMISS3","T_PIR_STAND1","T_PIR_STAND2","T_PIR_STAND3","T_PIR_STAND4","T_BOUNTY1","T_BOUNTY2","T_RAIDER1","T_RAIDER2","T_RAIDER3","T_RAIDER4","T_RECYCLE1","T_RECYCLE2","T_RECYCLE3","T_RECYCLE4","T_RECYCLE5","T_RECYCLE6","T_RECYCLE7","T_RECYCLE8","T_EXO_KILL","T_PB_WINS1","T_PB_WINS2","T_PB_WINS3","T_PB_WINS4","T_PB_BOSSES1","T_PB_BOSSES2","T_PB_BOSSES3","T_PB_BOSSES4","T_PB_EGGS1","T_PB_EGGS2","T_PB_EGGS3","T_PB_EGGS4","T_MAX_PETS1","T_MAX_PETS2","T_MAX_PETS3","T_MAX_PETS4","T_PB_D_NEXUS1","T_PB_D_NEXUS2","T_PB_D_NEXUS3","T_PB_D_NEXUS4",
}

local TIDNUM = {}
for i = 1, #TITLEID_LIST do
	table.insert(TIDNUM, 1, i)
end

local function OPTION_TEMPLATE(name, keepOpen, displayCost, markComplete, selectedOnBack)
	return string.format([[
		<Property name="Options" value="GcAlienPuzzleOption">
			<Property name="Name" value="%s"/>
			<Property name="Rewards">
				<Property name="Rewards" value="RW_ULAT" />
			</Property>
			<Property name="KeepOpen" value="%s"/>
			<Property name="DisplayCost" value="%s"/>
			<Property name="MarkInteractionComplete" value="%s"/>
			<Property name="SelectedOnBackOut" value="%s"/>
		</Property>]],
		name,
		tostring(keepOpen),
		tostring(displayCost),
		tostring(markComplete),
		tostring(selectedOnBack)
	)
end

local function COREOPT()
	return OPTION_TEMPLATE("UI_ULAT", false, false, false, false)
end

local rewardItems = {}

for _, tid in ipairs(TITLEID_LIST) do
	rewardItems[#rewardItems + 1] = string.format([[
		<Property name="List" value="GcRewardTableItem">
			<Property name="PercentageChance" value="100.000000"/>
			<Property name="LabelID" value=""/>
			<Property name="Reward" value="GcRewardUnlockTitle">
				<Property name="GcRewardUnlockTitle">
					<Property name="TitleID" value="%s"/>
					<Property name="NoMusic" value="true"/>
					<Property name="ShowEvenIfAlreadyUnlocked" value="false"/>
					<Property name="SeasonRewardsString" value=""/>
				</Property>
			</Property>
		</Property>]], tid)
end

local osdmsg = [[
		<Property name="List" value="GcRewardTableItem">
			<Property name="PercentageChance" value="100.000000"/>
			<Property name="Reward" value="GcRewardOSDMessage">
				<Property name="GcRewardOSDMessage">
					<Property name="Time" value="6.000000"/>
					<Property name="Message" value="UI_ULAT_OK"/>
					<Property name="UseSpookMessage" value="true"/>
				</Property>
			</Property>
		</Property>]]

local REWARDTABLE = [[
	<Property name="GenericTable" value="GcGenericRewardTableEntry" _id="RW_ULAT">
		<Property name="Id" value="RW_ULAT"/>
		<Property name="List" value="GcRewardTableItemList">
			<Property name="RewardChoice" value="GiveAllSilent"/>
			<Property name="OverrideZeroSeed" value="false"/>
			<Property name="UseInventoryChoiceOverride" value="false"/>
			<Property name="IncrementStat" value=""/>
			<Property name="List">
]] .. table.concat(rewardItems) .. osdmsg .. [[
			</Property>
		</Property>
	</Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME    = "___230_UnlockAllTitles",
	MOD_AUTHOR      = "DY230",
	NMS_VERSION     = "6.45.1",
	MOD_DESCRIPTION = "Unlock all titles via Station Core menu.",
	MODIFICATIONS = {
		{
			MBIN_CT = {
				{-- PLAYERTITLEDATA
					MBIN_FS = [[METADATA\GAMESTATE\PLAYERDATA\PLAYERTITLEDATA.MBIN]],
					MXML_CT = {
						{
							PKW = "Titles",
							SECTION_ACTIVE = TIDNUM,
							VCT = {
								{"RevealedBy",         ""},
								{"UnlockedByMission",  ""},
								{"UnlockedByStat",     ""},
								{"UnlockedByStatValue","0"},
							},
						},
					},
				},
				{-- NMS_DIALOG_GCALIENPUZZLETABLE
					MBIN_FS = [[METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN]],
					MXML_CT = {
						{
							SKW = {
								{"Id", "STATION_CORE"},
								{"Id", "STATION_CORE_DAMAGE"},
								{"Id", "STATION_CORE_PIRATE"},
							},
							PKW = "Options",
							ADD = COREOPT(),
						},
					},
				},
				{-- REWARDTABLE
					MBIN_FS = [[METADATA\REALITY\TABLES\REWARDTABLE.MBIN]],
					MXML_CT = {
						{
							PKW = "GenericTable",
							ADD_OPTION = "ADDafterLINE",
							ADD = REWARDTABLE,
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