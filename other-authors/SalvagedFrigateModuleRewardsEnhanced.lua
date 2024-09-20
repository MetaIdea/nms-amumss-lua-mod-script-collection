--|=======================================================================================--
--| USER SETTINGS ("SFM" means "Salvaged Frigate Module")
--|=======================================================================================--
_AmountMin            = 2     --Generic reward amount minimum
_AmountMax            = 5     --Generic reward amount maximum
_PercentageChanceMult = 2     --Amount to multiply the chance of receiving SFM rewards relative to other possible rewards. Set to 1 for no change.

_SpecialMult          = 1.5   --Special reward amount multiplier
_MissionMult          = 2     --Mission board reward amount multiplier
_FrigExpMult          = 2     --Frigate expedition reward amount multiplier

_AddToEveryFrigExp    = true  --Add SFM rewards to every frigate expedition reward pool
_EveryExpChanceMult   = 0.35  --Reduce the chance to receive these SFM rewards or else they're too common and supplant other rewards

_AddFreighterRewards  = true  --Add SFM rewards to freighter rescue and freighter descruction (using the default amounts)
_AddPirateRewards     = true  --Add SFM rewards to pirate ship kills (using the default amounts)
_SFMsOnAllFrtrKills   = true  --Makes Freighter Descruction give SFM's every time + original reward
_PirateSysFrtrLootFix = true  --Fixes Freighter Destruction inside Pirate systems to give the same loot as outside systems.

modNameSub = "Custom" --Subname in produced .pak

--[[ Files Modified:
METADATA\REALITY\TABLES\REWARDTABLE.MBIN
METADATA\REALITY\TABLES\EXPEDITIONREWARDTABLE.MBIN
MODELS/COMMON/SPACECRAFT/INDUSTRIAL/SHARED/ENTITIES/FREIGHTER.ENTITY.MBIN
MODELS/COMMON/SPACECRAFT/INDUSTRIAL/SHARED/ENTITIES/CAPITALFREIGHTER.ENTITY.MBIN
--]]

--|=======================================================================================--
--| SCRIPT INFO
--|=======================================================================================--

author = "Umaroth"
luaAuthor = [[
	Umaroth
	based on original mods:
		-Better Salvaged Frigate Module Rewards by Hazelberry
		-gFreighter Legal Salvaged Frigate Modules by Gumsk
]]
modName = "SalvagedFrigateModuleRewardsEnhanced"
description = "Improves Savaged Frigate Module rewards percentages, amounts, and sources. Fully configurable!"
gameVersion = "5.12"
modVersion = "1.2"
maintenance = author

--|=======================================================================================--
--| CODE
--|=======================================================================================--

function round(x,n) --lua doesn't have proper rounding built in
	n = n or 0
	x = x * 10^n
	if n == 0 then return math.floor(x + 0.5)
	else return math.floor(x + 0.5) / 10^n
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]    = string.format("%s_%s_v%s_nms%s.pak", modName, modNameSub, modVersion, gameVersion),
	["MOD_DESCRIPTION"] = description,
	["MOD_AUTHOR"]      = author,
	["LUA_AUTHOR"]      = luaAuthor,
	["MAINTENANCE"]     = maintenance,
	["NMS_VERSION"]     = gameVersion,
	["MODIFICATIONS"] = {{
		["MBIN_CT"]= {
			{["MBIN_FS"]="METADATA\REALITY\TABLES\REWARDTABLE.MBIN",["EXML_CT"]={}},
			{["MBIN_FS"]="METADATA\REALITY\TABLES\EXPEDITIONREWARDTABLE.MBIN",["EXML_CT"]={}}
		}
	}}
}

local MBIN_CT = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CT"]
local RewardTable_EXML_CT = MBIN_CT[1]["EXML_CT"]
local ExpRewardTable_EXML_CT = MBIN_CT[2]["EXML_CT"]

--| GenericTable Rewards
--|=======================================================================================--
table.insert(RewardTable_EXML_CT,{
	["PKW_1"] = "TRUE",
	["PKW"] = "GenericTable",
	["SKW"] = {"ID","FRIG_TOKEN"},
	["REPLACE_TYPE"] = "ALL",
	["VCT"] = {
		{"AmountMin", _AmountMin},
		{"AmountMax", _AmountMax}
	}
})

--| SpecialRewardTable Rewards
--|=======================================================================================--
local SpecialMin = round(_AmountMin * _SpecialMult)
local SpecialMax = round(_AmountMax * _SpecialMult)
table.insert(RewardTable_EXML_CT,{
	["PKW_1"] = "TRUE",
	["PKW"] = "SpecialRewardTable",
	["SKW"] = {"ID","FRIG_TOKEN"},
	["REPLACE_TYPE"] = "ALL",
	["VCT"] = {
		{"AmountMin", SpecialMin},
		{"AmountMax", SpecialMax}
	}
})

--| MissionBoardTable Rewards
--|=======================================================================================--
local MissionMin = round(_AmountMin * _MissionMult)
local MissionMax = round(_AmountMax * _MissionMult)
table.insert(RewardTable_EXML_CT,{
	["PKW_1"] = "TRUE",
	["PKW"] = "MissionBoardTable",
	["SKW"] = {"ID","FRIG_TOKEN"},
	["REPLACE_TYPE"] = "ALL",
	["VCT"] = {
		{"AmountMin", MissionMin},
		{"AmountMax", MissionMax}
	}
})

--| Frigate Expedition Rewards
--|=======================================================================================--
local FrigExpMin = round(_AmountMin * _FrigExpMult)
local FrigExpMax = round(_AmountMax * _FrigExpMult)
table.insert(ExpRewardTable_EXML_CT,{
	["SKW"] = {"ID","FRIG_TOKEN",},
	["REPLACE_TYPE"] = "ALL",
	["VCT"] = {
		{"AmountMin", FrigExpMin},
		{"AmountMax", FrigExpMax}
	}
})

--| PercentageChance Changes
--|=======================================================================================--
if _PercentageChanceMult ~= 1 then
	table.insert(RewardTable_EXML_CT,{
		["ITF"] = "PRESERVE",
		["SKW"] = {"RewardChoice","SelectAlways","ID","FRIG_TOKEN"},
		["SECTION_UP"] = 1,
		["MATH_OP"] = "*",
		["REPLACE_TYPE"] = "ALL",
		["VCT"] = {{"PercentageChance", _PercentageChanceMult}}
	})
	table.insert(ExpRewardTable_EXML_CT,{
		["ITF"] = "PRESERVE",
		["SKW"] = {"RewardChoice","SelectAlways","ID","FRIG_TOKEN"},
		["SECTION_UP"] = 1,
		["MATH_OP"] = "*",
		["REPLACE_TYPE"] = "ALL",
		["VCT"] = {{"PercentageChance", _PercentageChanceMult}}
	})
end

--| Add New Rewards
--|=======================================================================================--
local FrigToken_RewardTableItem = string.format('<Property value="GcRewardTableItem.xml"><Property name="PercentageChance" value="100" /><Property name="Reward" value="GcRewardSpecificProduct.xml"><Property name="Default" value="GcDefaultMissionProductEnum.xml"><Property name="DefaultProductType" value="None" /></Property><Property name="ID" value="FRIG_TOKEN" /><Property name="AmountMin" value="%s" /><Property name="AmountMax" value="%s" /><Property name="HideAmountInMessage" value="False" /><Property name="ForceSpecialMessage" value="False" /><Property name="HideInSeasonRewards" value="False" /><Property name="Silent" value="False" /><Property name="SeasonRewardListFormat" value="" /><Property name="RequiresTech" value="" /></Property><Property name="LabelID" value="" /></Property>', _AmountMin, _AmountMax)

if _AddToEveryFrigExp then
	table.insert(ExpRewardTable_EXML_CT,{ --All Frigate Expeditions. Not awarded every time, one in a pool of possible rewards. Uses a different multiplier from the other additions because these rewards would be too common since most of these reward pools only have one other item.
		["SKW"] = {"RewardChoice","SelectAlways"},
		["PKW"] = "List",
		["REPLACE_TYPE"] = "ALL",
		["ADD_OPTION"] = "ADDafterLINE",
		["ADD"] = string.gsub(FrigToken_RewardTableItem, 'Chance" value="100"', string.format('Chance" value="%s"',round(100*_EveryExpChanceMult))), --The extra text is to ensure that AmountMin/Max don't get overwritten if they happen to equal 100
	})
end

if _AddFreighterRewards then
	table.insert(RewardTable_EXML_CT,{ --Freighter Rescue. Awarded every time.
		["SKW"] = {"Id","FREIGHTER_SAVED","List","GcRewardTableItemList.xml"},
		["PKW"] = "List",
		["ADD"] = FrigToken_RewardTableItem
	})
	table.insert(RewardTable_EXML_CT,{ --Freighter Destruction.  Not awarded every time, one in a pool of possible rewards.
		["SKW"] = {"Id","R_PIR_FREI","List","GcRewardTableItemList.xml"},
		["PKW"] = "List",
		["ADD"] = string.gsub(FrigToken_RewardTableItem, 'Chance" value="100"', string.format('Chance" value="%s"',round(100*_PercentageChanceMult)))
	})
end

if _AddPirateRewards then
	table.insert(RewardTable_EXML_CT,{ --Pirate Ship kills. Not awarded every time, one in a pool of possible rewards.
		["SKW"] = {"Id","PIRATELOOT","List","GcRewardTableItemList.xml"},
		["PKW"] = "List",
		["ADD"] = string.gsub(FrigToken_RewardTableItem, 'Chance" value="100"', string.format('Chance" value="%s"',round(100*_PercentageChanceMult)))
	})
end

--| Added Rewards Changes
--|=======================================================================================--
if _SFMsOnAllFrtrKills then
	table.insert(RewardTable_EXML_CT,{ --Make Freighter Descruction give SFM's every time + original reward
		["SKW"] = {"Id","R_PIR_FREI"},
		["VCT"] = {{"RewardChoice","GiveFirst_ThenAlsoSelectAlwaysFromRest"}}
	})
end

if _PirateSysFrtrLootFix then
	table.insert(MBIN_CT,{  --Make Freighter Descruction inside Pirate systems give the same reward as other systems
		["MBIN_FS"] = {"MODELS/COMMON/SPACECRAFT/INDUSTRIAL/SHARED/ENTITIES/FREIGHTER.ENTITY.MBIN","MODELS/COMMON/SPACECRAFT/INDUSTRIAL/SHARED/ENTITIES/CAPITALFREIGHTER.ENTITY.MBIN"},
		["EXML_CT"] = {{["VCT"] = {{"PirateSystemAltReward",""}}}}
	})
end