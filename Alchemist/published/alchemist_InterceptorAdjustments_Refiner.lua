Author = "alchemist"
ModName = "InterceptorAdjustments_Refiner"
BaseDescription = [[Balance adjustments for refinement recipes added by the Interceptor update.]]
GameVersion = "4-21"
ModVersion = "1"

local Config = {
  ModRefinerRecipes = {
    Enabled = true,
    Recipes = {
      -- Original: DRONE_SHARD -> TECHFRAG
      --[[
      R_NAME_DRONESHARD = {
        Result = {
          {"Id", "ROBOT2"},
          {"Amount", 15},
        },
      },
      --]]

      -- Original: DRONE_SALVAGE -> TECHFRAG (95)
      R_NAME_DRONESCRAP = {
        Result = {
          {"Amount", 50},
        }
      },

      -- Original: SHIPBRAIN -> TECHFRAG (260)
      R_NAME_SHIPBRAIN = {
        Result = {
          {"Amount", 250},
        }
      },
    }
  },

  AddRefinerRecipes = {
    Enabled = true,
    Recipes = {
      {
        _IsReplacementFor = "R_NAME_DRONESHARD",
        Id = "REFINERECIPE_327",
        RecipeType = "RECIPE_DRONESHARD",
        RecipeName = "R_NAME_DRONESHARD",
        TimeToMake = 90,
        Result = {
          Id = "DRONE_SALVAGE",
          Type = "Product",
          Amount = 1
        },
        Ingredients = {
          {
            Id = "DRONE_SHARD",
            Type = "Product",
            Amount = 2
          }
        },
      },
      {
        Id = "ALCH_SENTSPIDER_PROD_1",
        RecipeType = "RECIPE_SHIPBRAIN",
        RecipeName = "R_NAME_SHIPBRAIN",
        TimeToMake = 900,
        Result = {
          Id = "TECHFRAG",
          Type = "Substance",
          Amount = 125
        },
        Ingredients = {
          {
            Id = "SPIDER_PROD",
            Type = "Product",
            Amount = 1
          }
        },
      },
    },
  },
}

NMS_MOD_DEFINITION_CONTAINER = {

MOD_FILENAME				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
MOD_DESCRIPTION			= BaseDescription,
MOD_AUTHOR					= Author,
NMS_VERSION					= GameVersion,

MODIFICATIONS	= {{
  MBIN_CHANGE_TABLE = {

    -- 

  } -- END MBIN_CHANGE_TABLE
}} -- END MODIFICATIONS

} -- END NMS_MOD_DEFINITION_CONTAINER

local Ref = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE
local refinerChangeTable = {}

local function addSpaces(block, x)
  return block:gsub("<", string.rep(" ", x) .. "<")
end

local function tableMap(t, fn)
  local res = {}
  for _, v in ipairs(t) do
    table.insert(res, fn(v))
  end
  return res
end

local function GcRefinerRecipeElement(element)
  return [[<Property value="GcRefinerRecipeElement.xml">
  <Property name="Id" value="]]..element.Id..[[" />
  <Property name="Type" value="GcInventoryType.xml">
    <Property name="InventoryType" value="]]..element.Type..[[" />
  </Property>
  <Property name="Amount" value="]]..element.Amount..[[" />
</Property>]]
end

local function GcRefinerRecipe(recipe)
  local ingredients = tableMap(recipe.Ingredients, function (element)
    return GcRefinerRecipeElement(element)
  end)

  return [[<Property value="GcRefinerRecipe.xml">
  <Property name="Id" value="]]..recipe.Id..[[" />
  <Property name="RecipeType" value="]]..recipe.RecipeType..[[" />
  <Property name="RecipeName" value="]]..recipe.RecipeType..[[" />
  <Property name="TimeToMake" value="]]..recipe.TimeToMake..[[" />
  <Property name="Cooking" value="False" />
  <Property name="Result" value="GcRefinerRecipeElement.xml">
    <Property name="Id" value="]]..recipe.Result.Id..[[" />
    <Property name="Type" value="GcInventoryType.xml">
      <Property name="InventoryType" value="]]..recipe.Result.Type..[[" />
    </Property>
    <Property name="Amount" value="]]..recipe.Result.Amount..[[" />
  </Property>
  <Property name="Ingredients">
]]..addSpaces(table.concat(ingredients, "\n"), 4)..[[
  </Property>
</Property>]]
end


if Config.ModRefinerRecipes.Enabled then
  for key, value in pairs(Config.ModRefinerRecipes.Recipes) do
    if value.TimeToMake ~= nil then
      refinerChangeTable[#refinerChangeTable+1] = {
        SPECIAL_KEY_WORDS = {"RecipeName", key},
        VALUE_CHANGE_TABLE = {
          {"TimeToMake", value.TimeToMake}
        }
      }
    end

    if value.Result ~= nil then
      refinerChangeTable[#refinerChangeTable+1] = {
        SPECIAL_KEY_WORDS = {"RecipeName", key},
        PRECEDING_KEY_WORDS = {"Result"},
        VALUE_CHANGE_TABLE = value.Result
      }
    end
  end
end

if Config.AddRefinerRecipes.Enabled and #Config.AddRefinerRecipes.Recipes > 0 then
  local recipeTableAdditions = {}
  for _, recipe in ipairs(Config.AddRefinerRecipes.Recipes) do
    if recipe._IsReplacementFor ~= nil then
      refinerChangeTable[#refinerChangeTable+1] = {
        SPECIAL_KEY_WORDS = {"RecipeName", recipe._IsReplacementFor},
        REMOVE = "SECTION"
      }
    end

    table.insert(recipeTableAdditions, GcRefinerRecipe(recipe))
  end

  refinerChangeTable[#refinerChangeTable+1] = {
    PRECEDING_KEY_WORDS = {"Table"},
    REPLACE_TYPE = "ADDafterSECTION",
    LINE_OFFSET = -1,
    ADD = addSpaces(table.concat(recipeTableAdditions, "\n"), 4)
  }
end

if #refinerChangeTable > 0 then
  Ref[#Ref+1] = {
    MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN",
    EXML_CHANGE_TABLE = refinerChangeTable
  }
end
