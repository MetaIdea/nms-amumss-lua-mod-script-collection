SEARCH_OBJECT_TABLE =
{
	{ ["ID_NAME"]="DEPOT",      ["EVENT_NAME"]="DEPOT",             ["LABELID_NAME"]="Depot",             ["PATH"]="FACTORY"},
	{ ["ID_NAME"]="FACTORY",    ["EVENT_NAME"]="FACTORY",           ["LABELID_NAME"]="Factory",           ["PATH"]="FACTORY"},
	{ ["ID_NAME"]="HARVESTER",  ["EVENT_NAME"]="HARVESTER",         ["LABELID_NAME"]="Harvester",         ["PATH"]="FACTORY"},
	{ ["ID_NAME"]="BASESITE",   ["EVENT_NAME"]="BASE",              ["LABELID_NAME"]="Base",              ["PATH"]="FACTORY"},	
	{ ["ID_NAME"]="ABANDONED",  ["EVENT_NAME"]="ABANDONED",         ["LABELID_NAME"]="Abandoned",         ["PATH"]="DISTRESSSIGNAL"},
	{ ["ID_NAME"]="DISTRESS",   ["EVENT_NAME"]="DISTRESS",          ["LABELID_NAME"]="Distress",          ["PATH"]="DISTRESSSIGNAL"},
	{ ["ID_NAME"]="DISTRESS_N", ["EVENT_NAME"]="DISTRESS_NPC",      ["LABELID_NAME"]="Distress with NPC", ["PATH"]="DISTRESSSIGNAL"},
	{ ["ID_NAME"]="CRASHED_FR", ["EVENT_NAME"]="CRASHED_FREIGHTER", ["LABELID_NAME"]="Crashed Freighter", ["PATH"]="DISTRESSSIGNAL"},
	{ ["ID_NAME"]="OBSERVATOR", ["EVENT_NAME"]="OBSERVATORY",       ["LABELID_NAME"]="Observatory",       ["PATH"]="DISTRESSSIGNAL"},
	{ ["ID_NAME"]="LIBRARY",    ["EVENT_NAME"]="LIBRARY",           ["LABELID_NAME"]="",                  ["PATH"]="BUILDING"},
	{ ["ID_NAME"]="SHELTER",    ["EVENT_NAME"]="SHELTER",           ["LABELID_NAME"]="Shelter",           ["PATH"]="BUILDING"},
	{ ["ID_NAME"]="OUTPOST",    ["EVENT_NAME"]="OUTPOST",           ["LABELID_NAME"]="Outpost",           ["PATH"]="BUILDING"},
	{ ["ID_NAME"]="SHOP",       ["EVENT_NAME"]="SHOP",              ["LABELID_NAME"]="Shop",              ["PATH"]="BUILDING"},
	{ ["ID_NAME"]="RADIOTOWER", ["EVENT_NAME"]="RADIOTOWER",        ["LABELID_NAME"]="RadioTower",        ["PATH"]="BUILDING"},
	{ ["ID_NAME"]="OBSERVATOR", ["EVENT_NAME"]="OBSERVATORY",       ["LABELID_NAME"]="Observatory",       ["PATH"]="BUILDING"},
	{ ["ID_NAME"]="PLAQUE",     ["EVENT_NAME"]="PLAQUE",            ["LABELID_NAME"]="Plaque",            ["PATH"]="RUNE"},
	{ ["ID_NAME"]="MONOLITH",   ["EVENT_NAME"]="MONOLITH",          ["LABELID_NAME"]="Monolith",          ["PATH"]="RUNE"},
	{ ["ID_NAME"]="RUIN",       ["EVENT_NAME"]="RUIN",              ["LABELID_NAME"]="Ruin",              ["PATH"]="RUNE"},
	{ ["ID_NAME"]="PORTAL",     ["EVENT_NAME"]="PORTAL",            ["LABELID_NAME"]="RevealPortal",      ["PATH"]="RUNE"},	
}


function GetReward(ID_NAME, EVENT_NAME, LABELID_NAME)
REWARD_ADDING =
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_MAP_]] .. ID_NAME .. [[" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="SelectAlwaysSilent" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardScanEvent.xml">
              <Property name="Event" value="]] .. EVENT_NAME .. [[" />
              <Property name="ScanEventTable" value="Planet" />
              <Property name="DoAerialScan" value="True" />
              <Property name="UseMissionSeedForEvent" value="False" />
            </Property>
            <Property name="LabelID" value="]] .. LABELID_NAME .. [[" />
          </Property>
        </Property>
      </Property>
    </Property>
]]
return REWARD_ADDING
end


function GetGCProduct(ID_NAME, LABELID_NAME, PATH)
GCPRODUCT_ADDING =
[[
    <Property value="GcProductData.xml">
      <Property name="Id" value="MAP_]] .. ID_NAME .. [[" />
      <Property name="Name" value="UI_STARCHART_NAME" />
      <Property name="NameLower" value="UI_STARCHART_NAME_L" />
      <Property name="Subtitle" value="VariableSizeString.xml">
        <Property name="Value" value="]] .. LABELID_NAME .. [[" />
      </Property>
      <Property name="Description" value="VariableSizeString.xml">
        <Property name="Value" value="]] .. LABELID_NAME .. [[" />
      </Property>
      <Property name="Hint" value="" />
      <Property name="GroupID" value="" />
      <Property name="DebrisFile" value="TkModelResource.xml">
        <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/TERRAINDEBRIS/TERRAINDEBRIS4.SCENE.MBIN" />
      </Property>
      <Property name="BaseValue" value="3200" />
      <Property name="Level" value="0" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/U4PRODUCTS/PRODUCT.STARCHART.]] .. PATH .. [[.DDS" />
      </Property>
      <Property name="HeroIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.101960786" />
        <Property name="G" value="0.15294118" />
        <Property name="B" value="0.2" />
        <Property name="A" value="1" />
      </Property>
      <Property name="Category" value="GcRealitySubstanceCategory.xml">
        <Property name="SubstanceCategory" value="Special" />
      </Property>
      <Property name="Type" value="GcProductCategory.xml">
        <Property name="ProductCategory" value="Curiosity" />
      </Property>
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Rare" />
      </Property>
      <Property name="Legality" value="GcLegality.xml">
        <Property name="Legality" value="Legal" />
      </Property>
      <Property name="Consumable" value="True" />
      <Property name="ChargeValue" value="0" />
      <Property name="StackMultiplier" value="4" />
      <Property name="DefaultCraftAmount" value="1" />
      <Property name="CraftAmountStepSize" value="1" />
      <Property name="CraftAmountMultiplier" value="1" />
      <Property name="Requirements" />
      <Property name="AltRequirements" />
      <Property name="Cost" value="GcItemPriceModifiers.xml">
        <Property name="SpaceStationMarkup" value="0" />
        <Property name="LowPriceMod" value="0" />
        <Property name="HighPriceMod" value="0" />
        <Property name="BuyBaseMarkup" value="0" />
        <Property name="BuyMarkupMod" value="0" />
      </Property>
      <Property name="RecipeCost" value="1" />
      <Property name="SpecificChargeOnly" value="False" />
      <Property name="NormalisedValueOnWorld" value="0.008278528" />
      <Property name="NormalisedValueOffWorld" value="0.008278528" />
      <Property name="TradeCategory" value="GcTradeCategory.xml">
        <Property name="TradeCategory" value="None" />
      </Property>
      <Property name="WikiCategory" value="NotEnabled" />
      <Property name="IsCraftable" value="False" />
      <Property name="DeploysInto" value="" />
      <Property name="EconomyInfluenceMultiplier" value="0" />
      <Property name="PinObjective" value="UI_FIND_OBJ" />
      <Property name="PinObjectiveTip" value="" />
      <Property name="CookingIngredient" value="False" />
      <Property name="CookingValue" value="0" />
      <Property name="GoodForSelling" value="False" />
      <Property name="GiveRewardOnSpecialPurchase" value="" />
      <Property name="EggModifierIngredient" value="False" />
    </Property>
]]
return GCPRODUCT_ADDING
end


function GetConsumableItem(ID_NAME)
CONSUMABLEITEM_ADDING =
[[
    <Property value="GcConsumableItem.xml">
      <Property name="ID" value="MAP_]] .. ID_NAME .. [[" />
      <Property name="RewardID" value="R_MAP_]] .. ID_NAME .. [[" />
      <Property name="TutorialRewardID" value="" />
      <Property name="ButtonLocID" value="UI_CHART_LABEL" />
      <Property name="ButtonSubLocID" value="UI_CHART_SUB" />
      <Property name="CloseInventoryWhenUsed" value="True" />
      <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="RewardFailedLocID" value="" />
      <Property name="DestroyItemWhenConsumed" value="True" />
    </Property>
]]
return CONSUMABLEITEM_ADDING
end

function GetDefaultReality(ID_NAME)
DEFAULTREALITY_ADDING =
[[
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="MAP_]] .. ID_NAME .. [[" />
        </Property>
]]
return DEFAULTREALITY_ADDING
end

REWARD_ADDING_ALL = {}
GCPRODUCT_ADDING_ALL = {}
CONSUMABLEITEM_ADDING_ALL = {}
DEFAULTREALITY_ADDING_ALL = {}


for i=1,#SEARCH_OBJECT_TABLE,1 do
	table.insert(REWARD_ADDING_ALL,GetReward(SEARCH_OBJECT_TABLE[i]["ID_NAME"], SEARCH_OBJECT_TABLE[i]["EVENT_NAME"], SEARCH_OBJECT_TABLE[i]["LABELID_NAME"]))
	table.insert(GCPRODUCT_ADDING_ALL,GetGCProduct(SEARCH_OBJECT_TABLE[i]["ID_NAME"], SEARCH_OBJECT_TABLE[i]["LABELID_NAME"], SEARCH_OBJECT_TABLE[i]["PATH"]))
	table.insert(CONSUMABLEITEM_ADDING_ALL,GetConsumableItem(SEARCH_OBJECT_TABLE[i]["ID_NAME"]))
	table.insert(DEFAULTREALITY_ADDING_ALL,GetDefaultReality(SEARCH_OBJECT_TABLE[i]["ID_NAME"]))
end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Starcharts.pak",
["MOD_DESCRIPTION"] = "LUA port of ModBuilder Starcharts script",
["MOD_AUTHOR"]      = "CMKushnir",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.75",
["MODIFICATIONS"]   =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_S2_BEACON",},
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["LINE_OFFSET"] = "+0",
							["ADD"] = table.concat(REWARD_ADDING_ALL)
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FOOD_CG_HONEY",},
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["LINE_OFFSET"] = "+0",
							["ADD"] = table.concat(GCPRODUCT_ADDING_ALL)
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\CONSUMABLEITEMTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FOOD_R_BCREAM",},
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["LINE_OFFSET"] = "+0",
							["ADD"] = table.concat(CONSUMABLEITEM_ADDING_ALL)
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\DEFAULTREALITY.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Value","CHART_SETTLE",},
							["LINE_OFFSET"] = "+1",
							["ADD"] = table.concat(DEFAULTREALITY_ADDING_ALL)
						},
					},
				},
			}
		}
	}
}