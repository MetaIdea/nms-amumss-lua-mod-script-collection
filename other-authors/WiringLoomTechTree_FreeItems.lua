function newRequirements(ingredient1, ingredient1Type, ingredient1Amount, ingredient2, ingredient2Type, ingredient2Amount, ingredient3, ingredient3Type, ingredient3Amount)
    local requirements = ""
    requirements = requirements .. [[
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="]] .. ingredient1 .. [[" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="]] .. ingredient1Type .. [[" />
          </Property>
          <Property name="Amount" value="]] .. tostring(ingredient1Amount) .. [[" />
        </Property>
]]
    if ingredient2 ~= nil then
        requirements = requirements .. [[
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="]] .. ingredient2 .. [[" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="]] .. ingredient2Type .. [[" />
          </Property>
          <Property name="Amount" value="]] .. tostring(ingredient2Amount) .. [[" />
        </Property>
]]
    end
    if ingredient3 ~= nil then
        requirements = requirements .. [[
        <Property value="GcTechnologyRequirement.xml">
          <Property name="ID" value="]] .. ingredient3 .. [[" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="]] .. ingredient3Type .. [[" />
          </Property>
          <Property name="Amount" value="]] .. tostring(ingredient3Amount) .. [[" />
        </Property>
]]
    end
    requirements = requirements .. [[
      </Property>
]]
    return requirements
end

function newUnlockableItemTree(title, costType, rootNodeUnlockableItem, treeNodes)
    local tree = ""
    tree = tree .. [[
        <Property value="GcUnlockableItemTree.xml">
          <Property name="Title" value="]] .. title .. [[" />
          <Property name="CostTypeID" value="]] .. costType .. [[" />
          <Property name="Root" value="GcUnlockableItemTreeNode.xml">
            <Property name="Unlockable" value="]] .. rootNodeUnlockableItem .. [[" />
            <Property name="Children">
              ]] .. treeNodes .. [[
            </Property>
          </Property>
        </Property>
]]
    return tree
end

function newUnlockableItemTreeNode(unlockableItem, childrenNodes)
    local tree = ""
    tree = tree .. [[
<Property value="GcUnlockableItemTreeNode.xml">
  <Property name="Unlockable" value="]] .. unlockableItem .. [[" />]]
    if childrenNodes ~= nil then
        tree = tree .. [[
  <Property name="Children">
    ]] .. childrenNodes .. [[
  </Property>]]
    else
        tree = tree .. [[
  <Property name="Children" />
]]
    end
    tree = tree .. [[
</Property>
]]
    return tree
end

function newLocalization(locID, language, locString)
    local localization = ""
    localization = localization .. [[
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="]] .. locID ..[[" />]]
    if language == "English" then
        localization = localization .. [[
      <Property name="English" value="]] .. locString .. [[" />
]]
    else
        localization = localization .. [[
      <Property name="English" value="" />
]]
    end
    localization = localization .. [[
      <Property name="French" value="" />
      <Property name="Italian" value="" />
      <Property name="German" value="" />
      <Property name="Spanish" value="" />
      <Property name="Russian" value="" />
      <Property name="Polish" value="" />
      <Property name="Dutch" value="" />
      <Property name="Portuguese" value="" />
      <Property name="LatinAmericanSpanish" value="" />
      <Property name="BrazilianPortuguese" value="" />
]]
    if language == "SimplifiedChinese" then
        localization = localization .. [[
      <Property name="SimplifiedChinese" value="]] .. locString .. [[" />
]]
    else
        localization = localization .. [[
      <Property name="SimplifiedChinese" value="" />
]]
    end
    localization = localization .. [[
      <Property name="TraditionalChinese" value="" />
      <Property name="TencentChinese" value="" />
      <Property name="Korean" value="" />
      <Property name="Japanese" value="" />
      <Property name="USEnglish" value="" />
    </Property>
]]
    return localization
end


local UNLOCKABLE_ITEM_TREES = ""
local REQUIREMENTS = {}
local RECIPECOST = {}
local LOCALIZATIONS = {}
LOCALIZATIONS["English"] = ""
LOCALIZATIONS["SimplifiedChinese"] = ""

-- 新科技树
--[[
- 卷线器
    - 维修套件
        - 伪造电路
            - 飞船AI阀门
        - 回收玻璃
            - 谐波脑部
    - 吉克小吸
        - 吉克遗物
            - 维吉恩雕像
            - 科尔瓦克斯外壳
        - 维吉恩匕首
        - 集会方形箱
    - 导航数据
        - 已回收的数据
            - 已回收的护卫舰模块
            - 工厂超控单元
                - 空间站超控
    - 套装扩展装置
        - 储备扩充
            - 货物舱壁
        - 多用途工具扩展栏位
            - 焚化者
]]

REQUIREMENTS["TECH_COMP"] = newRequirements("LAND1", "Substance", 1)                                -- 卷线器
RECIPECOST["TECH_COMP"] = 1
REQUIREMENTS["REPAIRKIT"] = newRequirements("LAND1", "Substance", 1)                                -- 维修套件
RECIPECOST["REPAIRKIT"] = 1
REQUIREMENTS["ILLEGAL_PROD6"] = newRequirements("LAND1", "Substance", 1)                            -- 伪造电路
RECIPECOST["ILLEGAL_PROD6"] = 1
REQUIREMENTS["SALVAGE_TECH10"] = newRequirements("LAND1", "Substance", 1)                           -- 飞船AI阀门
RECIPECOST["SALVAGE_TECH10"] = 1
REQUIREMENTS["SENTINEL_LOOT"] = newRequirements("LAND1", "Substance", 1)                            -- 回收玻璃
RECIPECOST["SENTINEL_LOOT"] = 1
REQUIREMENTS["SHIPBRAIN_CLEAN"] = newRequirements("LAND1", "Substance", 1)                          -- 谐波脑部
RECIPECOST["SHIPBRAIN_CLEAN"] = 1
REQUIREMENTS["NAV_DATA"] = newRequirements("LAND1", "Substance", 1)                                 -- 导航数据
RECIPECOST["NAV_DATA"] = 1
REQUIREMENTS["BP_SALVAGE"] = newRequirements("LAND1", "Substance", 1)                               -- 已回收的数据
RECIPECOST["BP_SALVAGE"] = 1
REQUIREMENTS["FRIG_TOKEN"] = newRequirements("LAND1", "Substance", 1)                               -- 已回收的护卫舰模块
RECIPECOST["FRIG_TOKEN"] = 1
REQUIREMENTS["FACT_TOKEN"] = newRequirements("LAND1", "Substance", 1)                               -- 工厂超控单元
RECIPECOST["FACT_TOKEN"] = 1
REQUIREMENTS["STATION_KEY"] = newRequirements("LAND1", "Substance", 1)                              -- 空间站超控
RECIPECOST["STATION_KEY"] = 1
REQUIREMENTS["SUIT_INV_TOKEN"] = newRequirements("LAND1", "Substance", 1)                           -- 套装扩展装置
RECIPECOST["SUIT_INV_TOKEN"] = 1
REQUIREMENTS["SHIP_INV_TOKEN"] = newRequirements("LAND1", "Substance", 1)                           -- 储备扩充
RECIPECOST["SHIP_INV_TOKEN"] = 1
REQUIREMENTS["FREI_INV_TOKEN"] = newRequirements("LAND1", "Substance", 1)                           -- 货物舱壁
RECIPECOST["FREI_INV_TOKEN"] = 1
REQUIREMENTS["WEAP_INV_TOKEN"] = newRequirements("LAND1", "Substance", 1)                           -- 多用途工具扩展栏位
RECIPECOST["WEAP_INV_TOKEN"] = 1
--                                                                                                  -- 焚化者（已有配方）
RECIPECOST["FLAME"] = 1
UNLOCKABLE_ITEM_TREES = newUnlockableItemTree("UI_WLTree_Title", "SPECIALS", "TECH_COMP",
    newUnlockableItemTreeNode("REPAIRKIT",
        newUnlockableItemTreeNode("ILLEGAL_PROD6",
            newUnlockableItemTreeNode("SALVAGE_TECH10")
    ) ..newUnlockableItemTreeNode("SENTINEL_LOOT",
            newUnlockableItemTreeNode("SHIPBRAIN_CLEAN"))
) --[[..newUnlockableItemTreeNode("TRA_CURIO2",
        newUnlockableItemTreeNode("TRA_CURIO1",
            newUnlockableItemTreeNode("WAR_CURIO1"
        ) ..newUnlockableItemTreeNode("EXP_CURIO1")
    ) ..newUnlockableItemTreeNode("WAR_CURIO2"
    ) ..newUnlockableItemTreeNode("EXP_CURIO2")
)]] ..newUnlockableItemTreeNode("NAV_DATA",
        newUnlockableItemTreeNode("BP_SALVAGE",
            newUnlockableItemTreeNode("FRIG_TOKEN"
        ) ..newUnlockableItemTreeNode("FACT_TOKEN",
                newUnlockableItemTreeNode("STATION_KEY")))
) ..newUnlockableItemTreeNode("SUIT_INV_TOKEN",
        newUnlockableItemTreeNode("SHIP_INV_TOKEN",
            newUnlockableItemTreeNode("FREI_INV_TOKEN")
    ) ..newUnlockableItemTreeNode("WEAP_INV_TOKEN",
            newUnlockableItemTreeNode("FLAME"))
)
)

LOCALIZATIONS["English"] = LOCALIZATIONS["English"] .. newLocalization("UI_WL_LABEL", "English", "Explore thoughts")
LOCALIZATIONS["English"] = LOCALIZATIONS["English"] .. newLocalization("UI_WL_SUBLABEL", "English", "Research the Wiring Loom Tech")
LOCALIZATIONS["English"] = LOCALIZATIONS["English"] .. newLocalization("UI_ModTree_Title", "English", "Mod Tech Trees")
LOCALIZATIONS["English"] = LOCALIZATIONS["English"] .. newLocalization("UI_WLTree_Title", "English", "Wiring Loom Tech")

LOCALIZATIONS["SimplifiedChinese"] = LOCALIZATIONS["SimplifiedChinese"] .. newLocalization("UI_WL_LABEL", "SimplifiedChinese", "探入思绪")
LOCALIZATIONS["SimplifiedChinese"] = LOCALIZATIONS["SimplifiedChinese"] .. newLocalization("UI_WL_SUBLABEL", "SimplifiedChinese", "研究卷线科技")
LOCALIZATIONS["SimplifiedChinese"] = LOCALIZATIONS["SimplifiedChinese"] .. newLocalization("UI_ModTree_Title", "SimplifiedChinese", "模组科技树")
LOCALIZATIONS["SimplifiedChinese"] = LOCALIZATIONS["SimplifiedChinese"] .. newLocalization("UI_WLTree_Title", "SimplifiedChinese", "卷线科技")

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "ZNE_WiringLoomTechTree_FreeItems.pak",
    ["MOD_AUTHOR"] = "ZNECrode",
    ["LUA_AUTHOR"] = "ZNECrode",
    ["NMS_VERSION"] = "5.21",
    ["MOD_DESCRIPTION"] = "Added a whole new unlockable item tree",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- New Tech Tree
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title","TEST"},
                            ["PRECEDING_KEY_WORDS"] = {"GcUnlockableItemTree.xml"},
                            ["SECTION_ACTIVE"] = 1,
							["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title","TEST"},
                            ["PRECEDING_KEY_WORDS"] = {"Trees"},
                            ["SECTION_ACTIVE"] = 1,
                            ["ADD"] = UNLOCKABLE_ITEM_TREES
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title","TEST"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Title", "UI_ModTree_Title"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcUnlockableTreeCostType.xml"},
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TypeOfCost","Substance"},
                                {"TypeID", "LAND1"}
                            }
                        }
                    }
                },
                { -- New Tech Tree Reward
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GenericTable"},
                            ["ADD"] = [[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="R_ZNEMOD_TREE" />
      <Property name="List" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="UseInventoryChoiceOverride" value="False" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardOpenUnlockTree.xml">
              <Property name="TreeToOpen" value="GcUnlockableItemTreeGroups.xml">
                <Property name="UnlockableItemTree" value="Test" />
              </Property>
              <Property name="PageIndexOverride" value="0" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]]
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\CONSUMABLEITEMTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["ADD"] = [[
    <Property value="GcConsumableItem.xml">
      <Property name="ID" value="TECH_COMP" />
      <Property name="RewardID" value="R_ZNEMOD_TREE" />
      <Property name="TutorialRewardID" value="" />
      <Property name="ButtonLocID" value="UI_WL_LABEL" />
      <Property name="ButtonSubLocID" value="UI_WL_SUBLABEL" />
      <Property name="CloseInventoryWhenUsed" value="True" />
      <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="UI_PICKUP_NITROGENPLANT" />
      </Property>
      <Property name="RewardFailedLocID" value="INTRCT_NOROOM_L" />
      <Property name="DestroyItemWhenConsumed" value="False" />
      <Property name="AddCommunityTierClassIcon" value="False" />
      <Property name="SuppressResourceMessage" value="False" />
      <Property name="CustomOSD" value="" />
      <Property name="RequiresMissionActive" value="" />
      <Property name="OverrideMissionMustBeSelected" value="False" />
      <Property name="RewardOverrideTable" />
    </Property>
]]
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
						{ -- 焚化者
							["SPECIAL_KEY_WORDS"] = {"ID", "FLAME"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FragmentCost", tostring(RECIPECOST["FLAME"])}
							}
						}
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        { -- 卷线器
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TECH_COMP"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["TECH_COMP"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "TECH_COMP"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "TECH_COMP"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
                                {"Consumable", "True"},
								{"RecipeCost", tostring(RECIPECOST["TECH_COMP"])},
								{"IsCraftable",	"True"}
							}
						},
                        { -- 维修套件
                            ["SPECIAL_KEY_WORDS"] = {"ID", "REPAIRKIT"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["REPAIRKIT"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "REPAIRKIT"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "REPAIRKIT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", tostring(RECIPECOST["REPAIRKIT"])},
								{"IsCraftable",	"True"}
							}
						},
                        { -- 伪造电路
                            ["SPECIAL_KEY_WORDS"] = {"ID", "ILLEGAL_PROD6"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["ILLEGAL_PROD6"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "ILLEGAL_PROD6"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "ILLEGAL_PROD6"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", tostring(RECIPECOST["ILLEGAL_PROD6"])},
								{"IsCraftable",	"True"}
							}
						},
                        { -- 飞船AI阀门
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECH10"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["SALVAGE_TECH10"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECH10"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "SALVAGE_TECH10"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", tostring(RECIPECOST["SALVAGE_TECH10"])},
								{"IsCraftable",	"True"}
							}
						},
                        { -- 回收玻璃
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SENTINEL_LOOT"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["SENTINEL_LOOT"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "SENTINEL_LOOT"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "SENTINEL_LOOT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", tostring(RECIPECOST["SENTINEL_LOOT"])},
								{"IsCraftable",	"True"}
							}
						},
                        { -- 谐波脑部
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPBRAIN_CLEAN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["SHIPBRAIN_CLEAN"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPBRAIN_CLEAN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIPBRAIN_CLEAN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", tostring(RECIPECOST["SHIPBRAIN_CLEAN"])},
								{"IsCraftable",	"True"}
							}
						},
                        { -- 导航数据
                            ["SPECIAL_KEY_WORDS"] = {"ID", "NAV_DATA"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["NAV_DATA"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "NAV_DATA"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "NAV_DATA"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", tostring(RECIPECOST["NAV_DATA"])},
								{"IsCraftable",	"True"}
							}
						},
                        { -- 已回收的数据
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BP_SALVAGE"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["BP_SALVAGE"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "BP_SALVAGE"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
                                {"Consumable", "True"},
								{"RecipeCost", tostring(RECIPECOST["BP_SALVAGE"])},
								{"IsCraftable",	"True"}
							}
						},
                        { -- 已回收的护卫舰模块
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FRIG_TOKEN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["FRIG_TOKEN"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "FRIG_TOKEN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "FRIG_TOKEN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", tostring(RECIPECOST["FRIG_TOKEN"])},
								{"IsCraftable",	"True"},
							}
						},
                        { -- 工厂超控单元
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FACT_TOKEN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["FACT_TOKEN"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "FACT_TOKEN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "FACT_TOKEN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", tostring(RECIPECOST["FACT_TOKEN"])},
								{"IsCraftable",	"True"}
							}
						},
                        { -- 空间站超控
                            ["SPECIAL_KEY_WORDS"] = {"ID", "STATION_KEY"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["STATION_KEY"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "STATION_KEY"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "STATION_KEY"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", tostring(RECIPECOST["STATION_KEY"])},
								{"IsCraftable",	"True"}
							}
						},
                        { -- 套装扩展装置
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SUIT_INV_TOKEN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["SUIT_INV_TOKEN"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "SUIT_INV_TOKEN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "SUIT_INV_TOKEN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", tostring(RECIPECOST["SUIT_INV_TOKEN"])},
								{"IsCraftable",	"True"},
							}
						},
                        { -- 储备扩充
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_INV_TOKEN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["SHIP_INV_TOKEN"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_INV_TOKEN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_INV_TOKEN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", tostring(RECIPECOST["SHIP_INV_TOKEN"])},
								{"IsCraftable",	"True"},
							}
						},
                        { -- 货物舱壁
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FREI_INV_TOKEN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["FREI_INV_TOKEN"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "FREI_INV_TOKEN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "FREI_INV_TOKEN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", tostring(RECIPECOST["FREI_INV_TOKEN"])},
								{"IsCraftable",	"True"},
							}
						},
                        { -- 多用途工具扩展栏位
                            ["SPECIAL_KEY_WORDS"] = {"ID", "WEAP_INV_TOKEN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["ADD"]	= REQUIREMENTS["WEAP_INV_TOKEN"],
                        },
                        {
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAP_INV_TOKEN"},
							["PRECEDING_KEY_WORDS"] = {"Requirements"},
							["LINE_OFFSET"]	= "-1",
							["REMOVE"] = "LINE",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "WEAP_INV_TOKEN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RecipeCost", tostring(RECIPECOST["WEAP_INV_TOKEN"])},
								{"IsCraftable",	"True"},
							}
						}
                    }
                },
                { -- Localizations
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE\NMS_LOC7_ENGLISH.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = LOCALIZATIONS["English"]
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "LANGUAGE\NMS_LOC7_SIMPLIFIEDCHINESE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = LOCALIZATIONS["SimplifiedChinese"]
                        }
                    }
                }
            }
        }
    }
}