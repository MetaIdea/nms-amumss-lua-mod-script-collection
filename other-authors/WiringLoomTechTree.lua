function newRewardTableEntry(entryID, rewardChoice, rewardItems) -- 新奖励表
    local entry = ""
    entry = entry .. [[
        <Property name="GenericTable" value="GcGenericRewardTableEntry">
          <Property name="Id" value="]] .. entryID .. [[" />
          <Property name="List" value="GcRewardTableItemList">
            <Property name="RewardChoice" value="]] .. rewardChoice .. [[" />
            <Property name="OverrideZeroSeed" value="False" />
            <Property name="UseInventoryChoiceOverride" value="False" />
            <Property name="IncrementStat" value="" />
            <Property name="List">
              ]] .. rewardItems .. [[
            </Property>
          </Property>
        </Property>
    ]]
    return entry
end

function newRewardItem(percentageChance, rewardType, arguments) -- 新奖励表元素
    local item = ""
    item = item .. [[
        <Property name="List" value="GcRewardTableItem">
          <Property name="PercentageChance" value="]] .. tostring(percentageChance) .. [[" />
          <Property name="LabelID" value="" />
          ]] .. newReward(rewardType, arguments) .. [[
        </Property>
    ]]
    return item
end

local REWARD_BUILD = { -- 奖励表
    ["GcRewardInventorySlots"] = function(arguments) -- 打开套装栏位扩展界面
      local amount = arguments[1] or 1
      return [[
          <Property name="Reward" value="GcRewardInventorySlots">
            <Property name="Amount" value="]] .. tostring(amount) .. [[" />
          </Property>
      ]]
    end,
    ["GcRewardShipSlot"] = function(arguments) -- 打开飞船栏位扩展界面
        local cost = arguments[1] or "C_INV_SAL_PRODR"
        local withAward = arguments[2] or "False"
        local tokens = arguments[3] or 1
        local isAlien = arguments[4] or "False"
        return [[
            <Property name="Reward" value="GcRewardShipSlot">
              <Property name="GcRewardShipSlot">
                <Property name="Cost" value="]] .. cost .. [[" />
                <Property name="AwardCostAndOpenWindow" value="]] .. withAward .. [[" />
                <Property name="NumTokens" value="]] .. tostring(tokens) .. [[" />
                <Property name="IsAlien" value="]] .. isAlien .. [[" />
                <Property name="FallbackOpenWindowIfBlocked" value="False" />
              </Property>
            </Property>
        ]]
    end,
    ["GcRewardWeaponSlot"] = function(arguments) -- 工具栏位扩展界面
        local cost = arguments[1] or "C_INV_WEAP_PR"
        local withAward = arguments[2] or "False"
        local tokens = arguments[3] or 1
        return [[
            <Property name="Reward" value="GcRewardWeaponSlot">
              <Property name="GcRewardWeaponSlot">
                <Property name="Cost" value="]] .. cost .. [[" />
                <Property name="AwardCostAndOpenWindow" value="]] .. withAward .. [[" />
                <Property name="NumTokens" value="]] .. tostring(tokens) .. [[" />
              </Property>
            </Property>
        ]]
    end,
    ["GcRewardFreighterSlot"] = function(arguments) -- 打开货船栏位扩展界面
        local cost = arguments[1] or "C_INV_FREIGHTR"
        return [[
            <Property name="Reward" value="GcRewardFreighterSlot">
              <Property name="GcRewardFreighterSlot">
                <Property name="Cost" value="]] .. cost .. [[" />
              </Property>
            </Property>
        ]]
    end,
    ["GcRewardOpenUnlockTree"] = function(arguments) -- 打开科技树界面
        local tree = arguments[1] or "CraftProducts"
        return [[
            <Property name="Reward" value="GcRewardOpenUnlockTree">
              <Property name="GcRewardOpenUnlockTree">
                <Property name="TreeToOpen" value="GcUnlockableItemTreeGroups">
                  <Property name="UnlockableItemTree" value="]] .. tree .. [[" />
                </Property>
              </Property>
              <Property name="PageIndexOverride" value="0" />
            </Property>
        ]]
    end
}
function newReward(rewardType, arguments) -- 新奖励
    if REWARD_BUILD[rewardType] then
        return REWARD_BUILD[rewardType](arguments)
    end
    return ""
end
newReward("Prevent", "Notice Generation")

function preventNoticeFunction(arguments)
    return tostring(arguments)
end
preventNoticeFunction("Prevent Notice Generation")

function newConsumableItem(product, reward, buttonLoc, buttonSubLoc, isCloseInventory, consumedable) -- 新消耗品
    return [[
        <Property name="Table" value="GcConsumableItem">
          <Property name="ID" value="]] .. product .. [[" />
          <Property name="RewardID" value="]] .. reward .. [[" />
          <Property name="TutorialRewardID" value="" />
          <Property name="ButtonLocID" value="]] .. buttonLoc .. [[" />
          <Property name="ButtonSubLocID" value="]] .. buttonSubLoc .. [[" />
          <Property name="CloseInventoryWhenUsed" value="]] .. isCloseInventory .. [[" />
          <Property name="AudioEventOnOpen" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="UI_PICKUP_NITROGENPLANT" />
          </Property>
          <Property name="RewardFailedLocID" value="INTRCT_NOROOM_L" />
          <Property name="DestroyItemWhenConsumed" value="]] .. consumedable .. [[" />
          <Property name="AddCommunityTierClassIcon" value="False" />
          <Property name="SuppressResourceMessage" value="False" />
          <Property name="CustomOSD" value="" />
          <Property name="RequiresMissionActive" value="" />
          <Property name="OverrideMissionMustBeSelected" value="False" />
          <Property name="RewardOverrideTable" />
        </Property>
    ]]
end

function newRequirements(ingredient1, ingredient1Type, ingredient1Amount, ingredient2, ingredient2Type, ingredient2Amount, ingredient3, ingredient3Type, ingredient3Amount)
    local requirements = ""
    requirements = requirements .. [[
      <Property name="Requirements">
        <Property value="GcTechnologyRequirement">
          <Property name="ID" value="]] .. ingredient1 .. [[" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="]] .. ingredient1Type .. [[" />
          </Property>
          <Property name="Amount" value="]] .. tostring(ingredient1Amount) .. [[" />
        </Property>
]]
    if ingredient2 ~= nil then
        requirements = requirements .. [[
        <Property value="GcTechnologyRequirement">
          <Property name="ID" value="]] .. ingredient2 .. [[" />
          <Property name="Type" value="GcInventoryType">
            <Property name="InventoryType" value="]] .. ingredient2Type .. [[" />
          </Property>
          <Property name="Amount" value="]] .. tostring(ingredient2Amount) .. [[" />
        </Property>
]]
    end
    if ingredient3 ~= nil then
        requirements = requirements .. [[
        <Property value="GcTechnologyRequirement">
          <Property name="ID" value="]] .. ingredient3 .. [[" />
          <Property name="Type" value="GcInventoryType">
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
        <Property name="Trees" value="GcUnlockableItemTree">
          <Property name="Title" value="]] .. title .. [[" />
          <Property name="CostTypeID" value="]] .. costType .. [[" />
          <Property name="Root" value="GcUnlockableItemTreeNode">
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
<Property value="GcUnlockableItemTreeNode">
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

local REWARDS = ""
local CONSUMABLES = ""
local UNLOCKABLE_ITEM_TREES = ""
local REQUIREMENTS = {}
local RECIPECOST = {}

REWARDS = REWARDS .. newRewardTableEntry("R_ZNE_SUITINV", "GiveAll", newRewardItem(100, "GcRewardInventorySlots", {})) -- 快捷栏位扩展
REWARDS = REWARDS .. newRewardTableEntry("R_ZNE_SHIPINV", "GiveAll", newRewardItem(100, "GcRewardShipSlot", {}))
REWARDS = REWARDS .. newRewardTableEntry("R_ZNE_WEAPINV", "GiveAll", newRewardItem(100, "GcRewardWeaponSlot", {}))
REWARDS = REWARDS .. newRewardTableEntry("R_ZNE_FREIINV", "GiveAll", newRewardItem(100, "GcRewardFreighterSlot", {}))
REWARDS = REWARDS .. newRewardTableEntry("R_ZNEM_TREE", "GiveAll", newRewardItem(100, "GcRewardOpenUnlockTree", {"Test"})) -- 打开卷线科技树

CONSUMABLES = CONSUMABLES .. newConsumableItem("SUIT_INV_TOKEN", "R_ZNE_SUITINV", "UI_SLOT_LABEL", "UI_SLOT_SUBLABEL", "True", "True")
CONSUMABLES = CONSUMABLES .. newConsumableItem("SHIP_INV_TOKEN", "R_ZNE_SHIPINV", "UI_SLOT_LABEL", "UI_SLOT_SUBLABEL", "True", "False")
CONSUMABLES = CONSUMABLES .. newConsumableItem("WEAP_INV_TOKEN", "R_ZNE_WEAPINV", "UI_SLOT_LABEL", "UI_SLOT_SUBLABEL", "True", "False")
CONSUMABLES = CONSUMABLES .. newConsumableItem("FREI_INV_TOKEN", "R_ZNE_FREIINV", "UI_SLOT_LABEL", "UI_SLOT_SUBLABEL", "True", "False")
CONSUMABLES = CONSUMABLES .. newConsumableItem("TECH_COMP", "R_ZNEM_TREE", "UI_WL_LABEL", "UI_WL_SUBLABEL", "True", "False")

-- 新•卷线科技树 v2.0
--[[ WIP
- 卷线核心 WiringLoom Core
    - 卷线器
        - 维修套件
            - 防御便函
                - 伪造护照
                - 回收玻璃
                    - 光耀碎片
                        - 反转镜面
                    - 结晶心脏
                        - 谐波脑部
            - 可疑的包裹（货物）
                - 可疑的包裹（技术）
                - 可疑的包裹（武器）
        - 导航数据
            - 星图（兴趣点）
                - 星图（求救信号）
                    - 紧急信号扫描仪
                        - 异象探测器
                - 星图（前哨基站）
                    - 护卫边界地图
                        - 回音定位器
                - 星图（外星遗迹）
            - 已回收的数据
                - 工厂超控单元
                    - 空间站超控
                - 已回收的护卫舰模块
            - 吉克小吸
                - 维吉恩匕首
                    - 古代钥匙
                - 集会方形箱
                    - 三叉戟钥匙
            - 吉克遗物
                - 维吉恩雕像
                - 科尔瓦克斯外壳
        - 套装扩展装置
            - 储备扩充
                - 货物舱壁
                - 腐化的囊
            - 多用途工具扩展栏位
- 精密构件 Precision Mechanism
    - 漩涡立方
        - 四足机甲伺服系统
            - 强化外壳驱动器
                - 透明质脑部
                    - 航空母舰人工智能碎片
        - 曾经有用的弹簧
            - 几个轮齿
                - 强化管道
                    - 隔热板
                        - 合金废料
        - 纳米电缆卷
            - 回收电路
                - 亚原子调节器
                    - 压缩铟碎片
                        - 飞船AI阀门
        - 纳米管箱
            - 自我修复海瑞蒂姆
                - 光学溶剂
                    - 五维环面
                        - 超导纤维
        - 破译的用户资料
            - 星绸
                - 星露
                    - 离子球体
                        - 传送协调器
        - 巨大的金属齿轮
            - 不粘活塞
                - 网孔去耦器
                    - 全息曲柄
                        - 向量压缩机
        - 电火花罐
            - 工业级电池
                - 电阻凝胶
                    - 试验性能源液体
                        - 融合核心
        - 去味瓶
            - 中子显微镜
                - 不稳定注射器
                    - 活体导管
                        - 神经导管
        - 尘土
            - 未提炼黄铁脂
                - 溴化盐
                    - 五彩锆
                        - 再结晶弧形水晶
        - 报废电路板
            - 焊接皂
                - 离子电容器
                    - 自动定位单元
                        - 量子加速器
        - 血盐
            - 失窃的DNA样本
                - 月之以太
                    - 格拉格拉
            - 伪造电路
                - 违禁武器
                    - 初代遗物
- 技术制造 Technology Production
    - 记忆碎片
        - S级维生系统
            - S级运动系统
            - X级危险防护
                - S级防御系统
        - S级发射推进器
            - S级脉冲推进器
                - S级超光速推进
            - S级偏导护盾
                - S级相位光束
                    - S级回旋加速弩炮
            - S级光子大炮
                - S级红外切割加速器
                - S级正电子冲击波
        - S级分析面甲
            - S级开采激光
                - S级火焰标枪
            - S级闪电离子发射器
                - S级脉冲喷射器
                    - S级散射爆破器
            - S级中子大炮
                - S级等离子发射器
                    - S级地质大炮
        - S级聚变发动机
            - S级强化艇推进器
                - S级强化艇开采激光
                - S级悬挂大炮
            - S级代达罗斯引擎
                - S级弥诺陶洛斯激光
                - S级弥诺陶洛斯大炮
                    - S级弥诺陶洛斯火焰喷射器
            - S级洪堡驱动器
                - S级大鹦鹉螺大炮
        - 护卫套装碎片
            - 护卫武器碎片
            - 回收套装模块
        - 心灵之卵
            - 叶绿体膜植入
                - 盐水外壳
            - 虫洞脑植入
                - 神经护盾植入
            - S级神经线路板
                - S级搏动心脏
                    - S级奇点主茎
                - S级尖叫抑制器
                    - S级喷口
                    - S级移植眼
- 失落之物 The Lost Things
    - 史学剂量仪
        - 神秘信标
            - 烟花包
        - 档案馆分流植入物
            - 脏腑合成器
                - 星种
                - 反抗者的标记
        - 被劫持的激光发射器
            - 符文棱镜
                - 焚化者
            - 护卫加农炮
                - 光电核心
                - 移码投射器
        - 大气控制单元
            - 奇点引擎
                - 奇异包裹（飞船）
                - 奇异包裹（多用途工具）
]]

-- 卷线科技树 v1.0
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
            - 光电核心
        - 多用途工具扩展栏位
            - 焚化者
]]

REQUIREMENTS["TECH_COMP"] = newRequirements("MICROCHIP", "Product", 1, "CASING", "Product", 2, "ASTEROID3", "Substance", 40)                            -- 卷线器
RECIPECOST["TECH_COMP"] = 1
REQUIREMENTS["REPAIRKIT"] = newRequirements("CASING", "Product", 1, "CARBON_SEAL", "Product", 1)                                                        -- 维修套件
RECIPECOST["REPAIRKIT"] = 1
REQUIREMENTS["ILLEGAL_PROD6"] = newRequirements("TECH_COMP", "Product", 1, "MAGNET", "Product", 1)                                                      -- 伪造电路
RECIPECOST["ILLEGAL_PROD6"] = 4
REQUIREMENTS["SALVAGE_TECH10"] = newRequirements("ALLOY4", "Product", 4, "MEGAPROD2", "Product", 1, "COMPOUND6", "Product", 1)                          -- 飞船AI阀门
RECIPECOST["SALVAGE_TECH10"] = 16
REQUIREMENTS["SENTINEL_LOOT"] = newRequirements("ROBOT1", "Substance", 100, "FARMPROD3", "Product", 1)                                                  -- 回收玻璃
RECIPECOST["SENTINEL_LOOT"] = 4
REQUIREMENTS["SHIPBRAIN_CLEAN"] = newRequirements("SHIPBRAIN", "Product", 1, "ROBOT1", "Substance", 16, "MIND_ARC", "Product", 1)                       -- 谐波脑部
RECIPECOST["SHIPBRAIN_CLEAN"] = 8
REQUIREMENTS["NAV_DATA"] = newRequirements("CASING", "Product", 4, "MIRROR", "Product", 1, "MICROCHIP", "Product", 1)                                   -- 导航数据
RECIPECOST["NAV_DATA"] = 1
REQUIREMENTS["BP_SALVAGE"] = newRequirements("TECH_COMP", "Product", 1, "NAV_DATA", "Product", 1, "CARBON_SEAL", "Product", 1)                          -- 已回收的数据
RECIPECOST["BP_SALVAGE"] = 2
REQUIREMENTS["FRIG_TOKEN"] = newRequirements("BP_SALVAGE", "Product", 1, "COMPUTER", "Product", 8, "ALLOY6", "Product", 4)                              -- 已回收的护卫舰模块
RECIPECOST["FRIG_TOKEN"] = 2
REQUIREMENTS["FACT_TOKEN"] = newRequirements("BP_SALVAGE", "Product", 1, "BIO", "Product", 8, "ALLOY3", "Product", 4)                                   -- 工厂超控单元
RECIPECOST["FACT_TOKEN"] = 2
REQUIREMENTS["STATION_KEY"] = newRequirements("FRIG_TOKEN", "Product", 1, "FACT_TOKEN", "Product", 1, "COMPUTER", "Product", 1)                         -- 空间站超控
RECIPECOST["STATION_KEY"] = 8
REQUIREMENTS["SUIT_INV_TOKEN"] = newRequirements("TECH_COMP", "Product", 1, "BP_SALVAGE", "Product", 4, "ALLOY1", "Product", 4)                         -- 套装扩展装置
RECIPECOST["SUIT_INV_TOKEN"] = 4
REQUIREMENTS["SHIP_INV_TOKEN"] = newRequirements("SUIT_INV_TOKEN", "Product", 1, "ALLOY4", "Product", 1)                                                -- 储备扩充
RECIPECOST["SHIP_INV_TOKEN"] = 8
REQUIREMENTS["FREI_INV_TOKEN"] = newRequirements("SUIT_INV_TOKEN", "Product", 1, "ALLOY2", "Product", 1)                                                -- 货物舱壁
RECIPECOST["FREI_INV_TOKEN"] = 8
REQUIREMENTS["WEAP_INV_TOKEN"] = newRequirements("SUIT_INV_TOKEN", "Product", 1, "ALLOY5", "Product", 1)                                                -- 多用途工具扩展栏位
RECIPECOST["WEAP_INV_TOKEN"] = 4
--                                                                                                  -- 焚化者（已有配方）
RECIPECOST["FLAME"] = 8
--                                                                                                  -- 光电核心（已有配方）
RECIPECOST["PHOTONIX_CORE"] = 15
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
            newUnlockableItemTreeNode("FREI_INV_TOKEN"
        ) ..newUnlockableItemTreeNode("PHOTONIX_CORE")
    ) ..newUnlockableItemTreeNode("WEAP_INV_TOKEN",
            newUnlockableItemTreeNode("FLAME"))
)
)

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "WiringLoomTechTree",
    ["MOD_AUTHOR"] = "ZNECrode",
    ["LUA_AUTHOR"] = "ZNECrode",
    ["NMS_VERSION"] = "5.51",
    ["MOD_DESCRIPTION"] = "Added a whole new unlockable item tree",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- New Tech Tree
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\UNLOCKABLEITEMTREES.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title","TEST", "Trees", "GcUnlockableItemTree"},
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
                            ["SKW"] = {"CostTypes", "GcUnlockableTreeCostType"},
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TypeOfCost","Product"},
                                {"TypeID", "WALKER_PROD"}
                            }
                        }
                    }
                },
                { -- New Tech Tree Reward
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GenericTable"},
                            ["ADD"] = REWARDS
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\CONSUMABLEITEMTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["ADD"] = CONSUMABLES
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
						},
                        { -- 光电核心
                            ["SPECIAL_KEY_WORDS"] = {"ID","PHOTONIX_CORE","StatsType","Ship_PulseDrive_MiniJumpFuelSpending"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Bonus","0.25"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","PHOTONIX_CORE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"FragmentCost", tostring(RECIPECOST["PHOTONIX_CORE"])}
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
                }
            }
        }
    }
}