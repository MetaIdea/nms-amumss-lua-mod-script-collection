NMS_ITEMS_SUBSTANCE = {
    "LAND1","LAND2","LAND3",                                    -- 铁氧体粉末、纯铁氧体、磁化铁氧体
    "FUEL1","FUEL2","OXYGEN",                                   -- 碳、浓缩碳、氧气
    "LAUNCHSUB", "LAUNCHSUB2", "ROCKETSUB",                     -- 二氢、氘、氚
    "CATALYST1","CATALYST2","WATER1","WATER2",                  -- 钠、硝酸钠、盐、氯气
    "CAVE1", "CAVE2", "SAND1", "LAVA1", "WATERPLANT",           -- 钴、离子钴、硅酸盐粉末、玄武岩、磷酸细胞
    "ASTEROID1", "ASTEROID2", "ASTEROID3",                      -- 银、金、铂
    "LUSH1", "TOXIC1", "COLD1", "HOT1", "RADIO1", "DUSTY1",     -- 矿脂、氨、二氧化物、磷、铀、黄铁矿
    "PLANT_LUSH", "PLANT_TOXIC", "PLANT_SNOW",                  -- 星辰朵、真菌团、冰霜水晶
    "PLANT_HOT", "PLANT_RADIO", "PLANT_DUST",                   -- 日光茄、伽马根、仙人掌肉
    "PLANT_CAVE", "PLANT_WATER",                                -- 葫芦朵、海藻袋
    "YELLOW2", "RED2", "GREEN2", "BLUE2", "STELLAR2",           -- 铜、镉、艾梅里尔、铟、有色金属
    "EX_YELLOW", "EX_RED", "EX_GREEN", "EX_BLUE",               -- 活性铜、活性镉、活性艾梅里尔、活性铟
    "CREATURE1", "PLANT_POOP", "GAS1", "GAS2", "GAS3",          -- 腐藤、屎球菌、硫磺、氡气、氮气
    "ROBOT1", "ROBOT2", "SOULFRAG", "SUNGOLD",                  -- 普茵、亚特拉迪姆、破碎的质感、液体太阳
    "SPECIAL_POOP", "BUI_SCRAP", "SPACEGUNK3", "AF_METAL",      -- 己糖醇、虚空微粒、生锈的金属、污染的金属
    "SPACEGUNK1", "SPACEGUNK5", "SPACEGUNK4", "SPACEGUNK2",     -- 剩余粘稠物、粘性流质、活体黏质、失控的模具
    "WORMDUST", "TIMEDUST", "TIMEMILK", "SQUIDFRAG",            -- 诅咒之尘、索姆纳尔灰尘、先祖记忆、残缺质感
}

local DOUBLE_ELEMENTS = ""

for i,v in ipairs(NMS_ITEMS_SUBSTANCE) do
    DOUBLE_ELEMENTS = DOUBLE_ELEMENTS .. [[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="REFINERECIPE_]] .. v .. [[" />
      <Property name="RecipeType" value="RECIPE_ASTEROID3" />
      <Property name="RecipeName" value="R_NAME_ASTEROID3" />
      <Property name="TimeToMake" value="1" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="]] .. v .. [[" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance" />
        </Property>
        <Property name="Amount" value="100" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="ANTIMATTER" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="]] .. v .. [[" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
]]
end

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "ZNE_AntimatterExpansion.pak",
    ["MOD_AUTHOR"] = "ZNECrode",
    ["LUA_AUTHOR"] = "ZNECrode",
    ["NMS_VERSION"] = "5.21",
    ["MOD_DESCRIPTION"] = "Use Antimatter in refiner to expand other substance",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- More Refining
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
<!--Antimatter Reality Warping-->
]] .. DOUBLE_ELEMENTS .. [[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="REFINERECIPE_DOUBLE_ANTIMATTER" />
      <Property name="RecipeType" value="RECIPE_LAND1_ROBOT1" />
      <Property name="RecipeName" value="R_NAME_LAND1_ROBOT1" />
      <Property name="TimeToMake" value="1" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="ANTIMATTER" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Product" />
        </Property>
        <Property name="Amount" value="20" />
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="ANTIMATTER" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Product" />
          </Property>
          <Property name="Amount" value="1" />
        </Property>
      </Property>
    </Property>
]]
                        }
                    }
                }
            }
        }
    }
}