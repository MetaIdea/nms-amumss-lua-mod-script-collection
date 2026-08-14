--[[
Mod id				3443
Mod category		Buildings
Mod name			Add Legacy Structures and Planetary Glitches
Mod language		English
Current version		6.45.1
Author				DY230
Nexus URL			https://www.nexusmods.com/nomanssky/mods/3443
]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME    = "___230_Add_LSnPG_v2",
	MOD_AUTHOR      = "DY230",
	NMS_VERSION     = "6.45.1",
	MOD_DESCRIPTION = "One key unlock legacy structures and planetary glitches blueprints.",
	MODIFICATIONS = {
		{
			MBIN_CT = {
				{--NMS_DIALOG_GCALIENPUZZLETABLE
					MBIN_FS = [[METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN]],
					MXML_CT = {
						{
							SKW = { { "Id", "MANAGE_FLEET" } },
							PKW = "Options",
							ADD_OPTION = "ADDafterLINE",
							ADD = [[
<Property name="Options" value="GcAlienPuzzleOption">
	<Property name="Name" value="UI_OKLNG" />
	<Property name="Rewards">
		<Property name="Rewards" value="RW_OKLNG" />
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
							PKW = "GenericTable",
							ADD_OPTION = "ADDafterLINE",
							ADD = (function()
								local WALL_IDS = {
									"W_WALL","W_WALL_H","W_WALL_Q","W_WALL_Q_H",
									"W_WALLDIAGONAL","W_WALL_WINDOW","W_SDOOR","W_DOOR",
									"W_DOOR_H","W_GDOOR","W_GDOOR_D","W_DOORWINDOW",
									"W_FLOOR","W_TRIFLOOR","W_TRIFLOOR_Q","W_GFLOOR",
									"W_FLOOR_Q","W_RAMP","W_RAMP_H","W_ROOF",
									"W_ROOF_M","W_ROOF_C","W_ROOF_IC","W_ARCH","W_ARCH_H",
								}
								local METAL_IDS = {
									"M_WALL","M_WALL_H","M_WALL_Q","M_WALL_Q_H",
									"M_WALLDIAGONAL","M_WALL_WINDOW","M_SDOOR","M_DOOR",
									"M_DOOR_H","M_GDOOR","M_GDOOR_D","M_DOORWINDOW",
									"M_FLOOR","M_TRIFLOOR","M_TRIFLOOR_Q","M_GFLOOR",
									"M_FLOOR_Q","M_RAMP","M_RAMP_H","M_ROOF",
									"M_ROOF_M","M_ROOF_C","M_ROOF_IC","M_ARCH","M_ARCH_H",
								}
								local CONCRETE_IDS = {
									"C_WALL","C_WALL_H","C_WALL_Q","C_WALL_Q_H",
									"C_WALLDIAGONAL","C_WALL_WINDOW","C_SDOOR","C_DOOR",
									"C_DOOR_H","C_GDOOR","C_GDOOR_D","C_DOORWINDOW",
									"C_FLOOR","C_TRIFLOOR","C_TRIFLOOR_Q","C_GFLOOR",
									"C_FLOOR_Q","C_RAMP","C_RAMP_H","C_ROOF",
									"C_ROOF_M","C_ROOF_C","C_ROOF_IC","C_ARCH","C_ARCH_H",
								}
								local SPACE_IDS = {
									"CUBEROOM_SPACE","CUBEROOMB_SPACE","CUBEROOMC_SPACE",
									"CORRIDOR_SPACE","CORRIDORL_SPACE","CORRIDORX_SPACE",
								}
								local GLITCH_IDS = {
									"BASE_ENGINEORB","BASE_BEAMSTONE","BASE_BUBBLECLUS",
									"BASE_MEDGEOMETR","BASE_SHARD","BASE_STARJOINT",
									"BASE_BONEGARDEN","BASE_CONTOURPOD","BASE_HYDROPOD",
									"BASE_SHELLWHITE","BASE_WEIRDCUBE",
								}
								local function buildProductRewards(idList, displayId)
									local ids = {}
									for _, id in ipairs(idList) do
										ids[#ids + 1] = string.format(
											'<Property name="ProductIds" value="%s" />', id
										)
									end

									return string.format([[
<Property name="List" value="GcRewardTableItem">
	<Property name="PercentageChance" value="100.000000"/>
	<Property name="Reward" value="GcRewardMultiSpecificProductRecipes">
		<Property name="GcRewardMultiSpecificProductRecipes">
			<Property name="ProductIds">
				%s
			</Property>
			<Property name="DisplayProductId" value="%s"/>
			<Property name="Silent" value="true"/>
		</Property>
	</Property>
</Property>]], table.concat(ids, "\n"), displayId)
								end
								local osdReward = [[
<Property name="List" value="GcRewardTableItem">
	<Property name="PercentageChance" value="100.000000"/>
	<Property name="Reward" value="GcRewardOSDMessage">
		<Property name="GcRewardOSDMessage">
			<Property name="Time" value="6.000000"/>
			<Property name="Message" value="UI_OKLNG_OK"/>
			<Property name="UseSpookMessage" value="true"/>
		</Property>
	</Property>
</Property>]]
								local rewardItems = {
									buildProductRewards(WALL_IDS,     "W_WALL"),
									buildProductRewards(METAL_IDS,    "M_WALL"),
									buildProductRewards(CONCRETE_IDS, "C_WALL"),
									buildProductRewards(SPACE_IDS,   "CUBEROOM_SPACE"),
									buildProductRewards(GLITCH_IDS,  "BASE_ENGINEORB"),
									osdReward,
								}
								return string.format([[
<Property name="GenericTable" value="GcGenericRewardTableEntry" _id="RW_OKLNG">
	<Property name="Id" value="RW_OKLNG"/>
	<Property name="List" value="GcRewardTableItemList">
		<Property name="RewardChoice" value="GiveAll"/>
		<Property name="OverrideZeroSeed" value="false"/>
		<Property name="UseInventoryChoiceOverride" value="false"/>
		<Property name="IncrementStat" value=""/>
		<Property name="List">
%s
		</Property>
	</Property>
</Property>]], table.concat(rewardItems, "\n"))
							end)(),
						},
					},
				},
			},
		},
	},
	ADD_FILES = {
		{
			FILE_DESTINATION = [[LOCTABLE.MXML]],
			FILE_CONTENT = [[
<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkLocalisationTable">
	<Property name="Table">
		<Property name="Table" value="TkLocalisationEntry" _id="UI_OKLNG">
			<Property name="Id" value="UI_OKLNG" />
			<Property name="English" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="French" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="Italian" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="German" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="Spanish" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="Russian" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="Polish" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="Dutch" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="Portuguese" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="LatinAmericanSpanish" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="BrazilianPortuguese" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="SimplifiedChinese" value="解锁遗留建筑和行星错乱体" />
			<Property name="TraditionalChinese" value="解鎖遺留建築和行星錯亂體" />
			<Property name="TencentChinese" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="Korean" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="Japanese" value="Unlock Legacy Structures and Planetary Glitches" />
			<Property name="USEnglish" value="Unlock Legacy Structures and Planetary Glitches" />
		</Property>
		<Property name="Table" value="TkLocalisationEntry" _id="UI_OKLNG_OK">
			<Property name="Id" value="UI_OKLNG_OK" />
			<Property name="English" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="French" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="Italian" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="German" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="Spanish" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="Russian" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="Polish" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="Dutch" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="Portuguese" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="LatinAmericanSpanish" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="BrazilianPortuguese" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="SimplifiedChinese" value="&lt;IMG&gt;TICK&lt;&gt; 遗留建筑和行星错乱体已解锁" />
			<Property name="TraditionalChinese" value="&lt;IMG&gt;TICK&lt;&gt; 遺留建築和行星錯亂體已解鎖" />
			<Property name="TencentChinese" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="Korean" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="Japanese" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
			<Property name="USEnglish" value="&lt;IMG&gt;TICK&lt;&gt; Legacy Structures and Planetary Glitches Unlocked!" />
		</Property>
	</Property>
</Data>]],
		},
	},
}