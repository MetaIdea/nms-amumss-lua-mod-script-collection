
Author = "alchemist"
ModName = "RedParallax_Recipe_Refiner"
BaseDescription = "Survive."
GameVersion = "3-22"
ModVersion = "v1-alpha"

Sub = "Substance"
Prod = "Product"

REFINE_DURATION = {1, 5, 10, 15}

REFINE_EQUIV = {
  ["Catalyst"] = {
    ["PLANT_CAVE"] = 5,
    ["CATALYST1"] = 2,
    ["CATALYST2"] = 1,
  },
  ["Earth"] = {
    ["CAVE1"] = 2,
    ["CAVE2"] = 1,
  },
  ["Fuel"] = {
    ["FUEL1"] = 5,
    ["FUEL2"] = 2,
  },
  ["Metal"] = {
    ["LAND1"] = 5,
    ["LAND2"] = 2,
    ["LAND3"] = 1,
  },
  ["Solar"] = {
    ["LAUNCHSUB"] = 5,
    ["ROCKETSUB"] = 2,
    ["LAUNCHSUB2"] = 1,
  },
  ["Stellar"] = {
    ["YELLOW2"] = 5,
    ["RED2"] = 2,
    ["GREEN2"] = 2,
    ["BLUE2"] = 2,
    ["EX_YELLOW"] = 2,
    ["EX_RED"] = 1,
    ["EX_GREEN"] = 1,
    ["EX_BLUE"] = 1,
  },
  ["Creature"] = {
    ["PLANT_POOP"] = 5,
    ["CREATURE1"] = 2,
  }
}

function DEFAULT(value, ifEmpty)
  if value ~= nil then
    return value
  else
    return ifEmpty
  end
end

function TERN(bool, ifTrue, ifFalse)
  if bool == nil or bool == false then
    return ifFalse
  else
    return ifTrue
  end
end

local function contains(t, element)
  for _, value in pairs(t) do
    if value == element then
      return true
    end
  end
  return false
end

local function Substance(substance, mult)
  local m = DEFAULT(mult, 1)
  for key, t in pairs(REFINE_EQUIV) do
    local value = t[substance]
    if value ~= nil then
      return {substance, "Substance", value * m}
    end
  end
end

local function SubstanceEquiv(group, mult, omitKeys)
  local omit = DEFAULT(omitKeys, {})
  local out = {}

  for key, _ in pairs(REFINE_EQUIV[group]) do
    if contains(omit, key) == false then
      table.insert(out, Substance(key, mult))
    end
  end

  return out
end

REFINER_RECIPE_TABLE = {

  --[[
  -- how to use these tables
  {"RECIPE_UI_NAME", SECONDS, {
    {"RESULT_ID", Prod, 2},
    {"INGREDIENT_ID", Sub, 50},
    {"INGREDIENT_ID", Prod, 1},
  }},
  --]]

  -- FUEL // Carbon

  {"RECIPE_FUEL1", REFINE_DURATION[2], {
    Substance("FUEL2"),
    Substance("FUEL1"),
  }},

  -- LAND // Ferite

  {"RECIPE_LAND1", REFINE_DURATION[1], {
    Substance("LAND2"),
    Substance("LAND1"),
  }},


  -- CATALYST // Sodium
  {"RECIPE_PLANT_CAVE", REFINE_DURATION[1], {
    Substance("CATALYST1"),
    Substance("PLANT_CAVE"),
  }},

  -- NaNO3 x2 cause magic
  {"RECIPE_CATALYST1_OXYGEN", REFINE_DURATION[2], {
    {"CATALYST2", Sub, 2},
    {"CATALYST1", Sub, 2},
    {"GAS3", Sub, 2},
    {"OXYGEN", Sub, 3},
  }},

  -- Chromatic Metal
  {"RECIPE_BLUE2", REFINE_DURATION[4], {
    {"STELLAR2", Sub, 16},
    {"RED2", Sub, 1},
    {"GREEN2", Sub, 1},
    {"BLUE2", Sub, 1},
  }},

  -- Rocket Fuel
  {"RECIPE_JELLY", REFINE_DURATION[1], {
    Substance("LAUNCHSUB2", 2),
    Substance("LAUNCHSUB"),
    Substance("ROCKETSUB"),
  }},

}

REFINER_VARIATION_TABLE = {

  {"RECIPE_LAND2", REFINE_DURATION[3], {
    Substance("LAND3", 5),
    SubstanceEquiv("Metal", 5, {"LAND3"}),
    SubstanceEquiv("Solar"),
  }},

  {"RECIPE_CAVE1", REFINE_DURATION[3], {
    Substance("CAVE2", 5),
    SubstanceEquiv("Earth", 5, {"CAVE2"}),
    SubstanceEquiv("Solar"),
  }},

  {"RECIPE_YELLOW2", REFINE_DURATION[3], {
    {"STELLAR2", Sub, 5},
    SubstanceEquiv("Stellar", 5),
    SubstanceEquiv("Metal"),
  }},

  {"RECIPE_CATALYST1", REFINE_DURATION[3], {
    Substance("CATALYST2", 5),
    SubstanceEquiv("Catalyst", 5, {"CATALYST2"}),
    SubstanceEquiv("Creature"),
  }},

  -- PRODUCTS

  {"RECIPE_3INPUT_POWERCELL", REFINE_DURATION[4], {
    {"POWERCELL", Prod, 1},
    SubstanceEquiv("Earth", 15),
    SubstanceEquiv("Metal", 3),
    SubstanceEquiv("Catalyst", 5),
  }},
}

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

  {["MBIN_FILE_SOURCE"] = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCRECIPETABLE.MBIN",
  ["EXML_CHANGE_TABLE"] = {
    -- empty on purpose
  }},

}}}}

local Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

local function map(f, t)
  local r = {}
  if type(t) == 'table' then
    for _, x in ipairs(t) do
      r[#r+1] = f(x)
    end
  else
    for x in t do
      r[#r+1] = f(x)
    end
  end
  return r
end

local function permutations(...)
  local function inc(t, pos)
    if t[pos][3] == t[pos][2] then
      if pos == 1 then return nil end
      t[pos][3] = 1
      return inc(t, pos - 1)
    else
      t[pos][3] = t[pos][3] + 1
      return true
    end

  end

  local sets = {...}
  local state = map(function(x) return {x, #x , 1} end, sets)
  state[#state][3] = 0
  local curr = #state

  return function()
    while true do
      if inc(state, curr) then
        return map(function(s) return s[1][s[3]] end, state)
      else
        return nil
      end
    end
  end
end

local function reduce(iset)
  local res = {}
  for i = 1, #iset do res[i] = iset[i][1] end
  return res
end

local function rowOf(rows, lookup, colIdx)
  for i = 1, #rows do
    if rows[i][colIdx] == lookup then
      return rows[i]
    end
  end
end

for i = 1, #REFINER_VARIATION_TABLE do
  local ing1 = reduce(REFINER_VARIATION_TABLE[i][3][2])
  local ing2 = reduce(REFINER_VARIATION_TABLE[i][3][3])

  local id = REFINER_VARIATION_TABLE[i][1]
  local durr = REFINER_VARIATION_TABLE[i][2]
  local result = REFINER_VARIATION_TABLE[i][3][1]

  if #REFINER_VARIATION_TABLE[i][3] == 3 then
    for p in permutations(ing1, ing2) do
      REFINER_RECIPE_TABLE[#REFINER_RECIPE_TABLE + 1] = {
        id,
        durr,
        {
          result,
          rowOf(REFINER_VARIATION_TABLE[i][3][2], p[1], 1),
          rowOf(REFINER_VARIATION_TABLE[i][3][3], p[2], 1),
        }
      }
    end
  else 
    local ing3 = reduce(REFINER_VARIATION_TABLE[i][3][4])

    for p in permutations(ing1, ing2, ing3) do
      REFINER_RECIPE_TABLE[#REFINER_RECIPE_TABLE + 1] = {
        id,
        durr,
        {
          result,
          rowOf(REFINER_VARIATION_TABLE[i][3][2], p[1], 1),
          rowOf(REFINER_VARIATION_TABLE[i][3][3], p[2], 1),
          rowOf(REFINER_VARIATION_TABLE[i][3][4], p[3], 1),
        }
      }
    end
  end
end

-- remove all non-cooking refiner recipes, might list a few failures
for i = 1, 324 do
  Ref[#Ref + 1] = {
    ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_"..i},
    ["REMOVE"] = "SECTION",
  }
end

for i = 1, #REFINER_RECIPE_TABLE do
  local r = REFINER_RECIPE_TABLE[i]
  local ingredients = ""

  for i2 = 2, #r[3] do
    ingredients = ingredients..[[
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="]]..r[3][i2][1]..[[" />
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="]]..r[3][i2][2]..[[" />
          </Property>
          <Property name="Amount" value="]]..r[3][i2][3]..[[" />
        </Property>]]
  end

  Ref[#Ref + 1] = {
    ["PRECEDING_KEY_WORDS"] = {"Table"},
    ["LINE_OFFSET"] = 0,
    ["ADD"] = [[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="PARALLAX_REFINE_RECIPE_]]..i..[[" />
      <Property name="Name" value="]]..r[1]..[[" />
      <Property name="TimeToMake" value="]]..r[2]..[[" />
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="]]..r[3][1][1]..[[" />
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="]]..r[3][1][2]..[[" />
        </Property>
        <Property name="Amount" value="]]..r[3][1][3]..[[" />
      </Property>
      <Property name="Ingredients">
        ]]..ingredients..[[
      </Property>
    </Property>]]
  }
end

