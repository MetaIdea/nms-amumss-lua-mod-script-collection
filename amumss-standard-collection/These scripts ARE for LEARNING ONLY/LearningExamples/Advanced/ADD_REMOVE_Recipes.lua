---STATIC VARIABLE CONSTANTS---
NewIDname = "NEW_REFINERECIPE_"
NewIDnameLength = string.len(NewIDname)
-- print(NewIDnameLength)
NewID = NewIDname..tostring(1)
-- print("["..NewID.."]")

---SYNTHESIS RECIPES---
NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_PYRITE_SYN =
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_PYRITE_SYN"/>
      <Property name="TimeToMake" value="45"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="DUSTY1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="2"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="LAND2"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="2"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="GAS2"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_AMMONIA_SYN = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_AMMONIA_SYN"/>
      <Property name="TimeToMake" value="45"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="TOXIC1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="2"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="GAS3"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="LAUNCHSUB"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="3"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_DRYICE_SYN = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_DRYICE_SYN"/>
      <Property name="TimeToMake" value="45"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="COLD1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="1"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="FUEL1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="OXYGEN"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]
  
NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_MAGNETITE_SYN = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_MAGNETITE_SYN"/>
      <Property name="TimeToMake" value="50"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="LAND3"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="1"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="LAND2"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="3"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="OXYGEN"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="2"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_SODIUM_NITRATE_SYN = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_SODIUM_NITRATE_SYN"/>
      <Property name="TimeToMake" value="60"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="CATALYST2"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="2"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="2"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="GAS3"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="OXYGEN"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="3"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_SALT_SYN = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_SALT_SYN"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="WATER1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="1"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="2"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="WATER2"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

---DECOMPOSITION RECIPES---
NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_PYRITE_DECOMP = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_PYRITE_DECOMP"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="GAS2"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="2"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="DUSTY1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_AMMONIA_DECOMP = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_AMMONIA_DECOMP"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="GAS3"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="1"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="TOXIC1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="2"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_MAGNETITE_DECOMP = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_MAGNETITE_DECOMP"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="LAND2"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="3"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="LAND3"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_SALT_DECOMP = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_SALT_DECOMP"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="WATER2"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="1"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="WATER1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="2"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_DRYICE_DECOMP = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_DRYICE_DECOMP"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="OXYGEN"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="1"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="COLD1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_SODIUM_NITRATE_DECOMP = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_DRYICE_DECOMP"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="CATALYST1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="1"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST2"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

---EXTRACTION RECIPES---
NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_FROST_EXTRACT1 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_FROST_EXTRACT1"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="COLD1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="10"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_SNOW"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_FROST_EXTRACT2 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_FROST_EXTRACT2"/>
      <Property name="TimeToMake" value="60"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="COLD1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="50"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_SNOW"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST2"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_GAMMA_EXTRACT1 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_GAMMA_EXTRACT1"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="RADIO1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="10"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_RADIO"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_GAMMA_EXTRACT2 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_GAMMA_EXTRACT2"/>
      <Property name="TimeToMake" value="60"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="RADIO1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="50"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_RADIO"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST2"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_POOP_EXTRACT1 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_POOP_EXTRACT1"/>
      <Property name="TimeToMake" value="15"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="FUEL3"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="10"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_POOP"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_POOP_EXTRACT2 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_POOP_EXTRACT2"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="FUEL3"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="20"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_POOP"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_POOP_EXTRACT3 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_POOP_EXTRACT3"/>
      <Property name="TimeToMake" value="60"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="FUEL3"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="50"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_POOP"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST2"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_DUST_EXTRACT1 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_DUST_EXTRACT1"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="DUSTY1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="10"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_DUST"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_DUST_EXTRACT2 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_DUST_EXTRACT2"/>
      <Property name="TimeToMake" value="60"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="DUSTY1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="50"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_DUST"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST2"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_HOT_EXTRACT1 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_HOT_EXTRACT1"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="HOT1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="10"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_HOT"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_HOT_EXTRACT2 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_HOT_EXTRACT2"/>
      <Property name="TimeToMake" value="60"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="HOT1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="50"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_HOT"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST2"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_TOXIC_EXTRACT1 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_TOXIC_EXTRACT1"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="TOXIC1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="10"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_TOXIC"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_TOXIC_EXTRACT2 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_TOXIC_EXTRACT2"/>
      <Property name="TimeToMake" value="60"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="TOXIC1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="50"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_TOXIC"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST2"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_LUSH_EXTRACT1 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_LUSH_EXTRACT1"/>
      <Property name="TimeToMake" value="30"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="LUSH1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="10"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_LUSH"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST1"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

NewID = NewIDname..tostring(tonumber(string.sub(NewID,NewIDnameLength+1))+1)
RECIPE_LUSH_EXTRACT2 = 
[[
    <Property value="GcRefinerRecipe.xml">
      <Property name="Id" value="]]..NewID..[[" />
      <Property name="Name" value="RECIPE_LUSH_EXTRACT2"/>
      <Property name="TimeToMake" value="60"/>
      <Property name="Cooking" value="False" />
      <Property name="Result" value="GcRefinerRecipeElement.xml">
        <Property name="Id" value="LUSH1"/>
        <Property name="Type" value="GcInventoryType.xml">
          <Property name="InventoryType" value="Substance"/>
        </Property>
        <Property name="Amount" value="50"/>
      </Property>
      <Property name="Ingredients">
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="PLANT_LUSH"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
        <Property value="GcRefinerRecipeElement.xml">
          <Property name="Id" value="CATALYST2"/>
          <Property name="Type" value="GcInventoryType.xml">
            <Property name="InventoryType" value="Substance"/>
          </Property>
          <Property name="Amount" value="1"/>
        </Property>
      </Property>
    </Property>
]]

--STRINGS FOR ADD SECTIONS in EXML_CHANGE_TABLE
SynthRecipes = RECIPE_AMMONIA_SYN..RECIPE_DRYICE_SYN..RECIPE_MAGNETITE_SYN..RECIPE_PYRITE_SYN..RECIPE_SALT_SYN..
                RECIPE_SODIUM_NITRATE_SYN
DecompRecipes = RECIPE_AMMONIA_DECOMP..RECIPE_MAGNETITE_DECOMP..RECIPE_PYRITE_DECOMP..RECIPE_SALT_DECOMP..
                 RECIPE_DRYICE_DECOMP..RECIPE_SODIUM_NITRATE_DECOMP
ExtractRecipes = RECIPE_DUST_EXTRACT1..RECIPE_DUST_EXTRACT2..RECIPE_FROST_EXTRACT1..RECIPE_FROST_EXTRACT2..
                  RECIPE_GAMMA_EXTRACT1..RECIPE_GAMMA_EXTRACT2..RECIPE_HOT_EXTRACT1..RECIPE_HOT_EXTRACT2..
                  RECIPE_LUSH_EXTRACT1..RECIPE_LUSH_EXTRACT2..RECIPE_POOP_EXTRACT1..RECIPE_POOP_EXTRACT2..
                  RECIPE_POOP_EXTRACT3..RECIPE_TOXIC_EXTRACT1..RECIPE_TOXIC_EXTRACT2
                  
--TABLES FOR REMOVE LOOPS (will create REMOVE section inside EXML_CHANGE_TABLE)
DelRecipe1 = {"RECIPE_ASTEROID2","RECIPE_CATALYST1","RECIPE_CATALYST2","RECIPE_COLD1","RECIPE_CREATURE1","RECIPE_DUSTY1",
              "RECIPE_GAS1","RECIPE_GAS2","RECIPE_GAS3","RECIPE_HOT1","RECIPE_LAND2","RECIPE_LAND3","RECIPE_LUSH1","RECIPE_OXYGEN",
              "RECIPE_RADIO1","RECIPE_TOXIC1","RECIPE_WATER1","RECIPE_WATER2"}

DelRecipe2 = {"RECIPE_ASTEROID_MIX","RECIPE_ASTEROID1_OXYGEN","RECIPE_ASTEROID2_OXYGEN","RECIPE_ASTEROID3_OXYGEN",
              "RECIPE_CATALYST1_CREATURE1","RECIPE_CATALYST1_OXYGEN","RECIPE_CATALYST1_ROBOT1","RECIPE_CATALYST2_CREATURE1",
              "RECIPE_CATALYST2_OXYGEN","RECIPE_CATALYST2_ROBOT1","RECIPE_CAVE2_OXYGEN","RECIPE_COLD1_LAND1","RECIPE_COLD1_LAND1",
              "RECIPE_CREATURE1","RECIPE_CREATURE1_ROBOT1","RECIPE_DUSTY1_LAND1","RECIPE_DUSTY1_LAND1","RECIPE_FUEL1_CATALYST1",
              "RECIPE_FUEL1_CATALYST2","RECIPE_FUEL1_CREATURE1","RECIPE_FUEL1_OXYGEN","RECIPE_FUEL1_ROBOT1",
              "RECIPE_FUEL2_CATALYST1","RECIPE_FUEL2_CATALYST2","RECIPE_FUEL2_CREATURE1","RECIPE_FUEL2_OXYGEN",
              "RECIPE_FUEL2_ROBOT1","RECIPE_GAS1_CATALYST1","RECIPE_GAS1_CATALYST1","RECIPE_GAS1_CATALYST1",
              "RECIPE_GAS1_CATALYST1","RECIPE_GAS1_LAND","RECIPE_GAS1_LAND","RECIPE_GAS1_LAND","RECIPE_GAS1_OXYGEN",
              "RECIPE_GAS2_CATALYST1","RECIPE_GAS2_CATALYST2","RECIPE_GAS2_LAND","RECIPE_GAS2_LAND","RECIPE_GAS2_LAND",
              "RECIPE_GAS2_OXYGEN","RECIPE_GAS3_CATALYST1","RECIPE_GAS3_CATALYST2","RECIPE_GAS3_OXYGEN",
              "RECIPE_GROW_PLANT","RECIPE_GROW_PLANT","RECIPE_GROW_PLANT","RECIPE_GROW_PLANT","RECIPE_GROW_PLANT",
              "RECIPE_GROW_PLANT","RECIPE_GROW_PLANT","RECIPE_GROW_PLANT","RECIPE_GROW_PLANT","RECIPE_GROW_PLANT",
              "RECIPE_GROW_PLANT","RECIPE_GROW_PLANT","RECIPE_GROW_PLANT","RECIPE_GROW_PLANT","RECIPE_GROW_PLANT",
              "RECIPE_HOT1_LAND1","RECIPE_HOT1_LAND1","RECIPE_LAND_FROM_STELLAR","RECIPE_LAND_FROM_STELLAR","RECIPE_LAND_FROM_STELLAR",
              "RECIPE_LAND_FROM_STELLAR","RECIPE_LAND_FROM_STELLAR","RECIPE_LAND_FROM_STELLAR","RECIPE_LAND_FROM_STELLAR",
              "RECIPE_LAND_FROM_STELLAR","RECIPE_LAND1_ROBOT1","RECIPE_LAND2_ROBOT1","RECIPE_LAUNCHSUB_GAS1",
              "RECIPE_LAUNCHSUB_GAS2","RECIPE_LAUNCHSUB_GAS3","RECIPE_LAUNCHSUB_OXYGEN","RECIPE_LAUNCHSUB_RADIO",
              "RECIPE_LUSH1_LAND1","RECIPE_LUSH1_LAND1","RECIPE_PLANT_CAVE_CATALYST1","RECIPE_3INPUT_ASTEROID1",
              "RECIPE_PLANT_CAVE_CAVE1","RECIPE_PLANT_CAVE_CAVE2","RECIPE_PLANT_CAVE_FUEL1","RECIPE_PLANT_CAVE_FUEL2",
              "RECIPE_PLANT_CAVE_OXYGEN","RECIPE_PLANT_DUST_WATER1","RECIPE_PLANT_HOT_WATER1","RECIPE_PLANT_LUSH_WATER1",
              "RECIPE_PLANT_POOP","RECIPE_PLANT_POOP_CATALYST1","RECIPE_PLANT_POOP_CATALYST2","RECIPE_PLANT_POOP_ROBOT1",
              "RECIPE_PLANT_RADIO_WATER1","RECIPE_PLANT_SNOW_WATER1","RECIPE_PLANT_TOXIC_WATER1","RECIPE_PLANT_WATER_CATALYST1",
              "RECIPE_PLANT_WATER_CATALYST2","RECIPE_PLANT_WATER_FUEL1","RECIPE_PLANT_WATER_FUEL2","RECIPE_PLANT_WATER_OXYGEN",
              "RECIPE_PLANT_WATER_ROBOT1","RECIPE_PLANT_WATER_WATER1","RECIPE_PLANT_WATER_WATER2","RECIPE_POOP_ALCHEMY",
              "RECIPE_RADIO1_LAND1","RECIPE_RADIO1_LAND1","RECIPE_REINFORCE_METAL","RECIPE_REINFORCE_METAL",
              "RECIPE_REINFORCE_METAL","RECIPE_REINFORCE_METAL","RECIPE_TOXIC1_LAND1","RECIPE_TOXIC1_LAND1",
              "RECIPE_WATER1_OXYGEN","RECIPE_WATER2_OXYGEN"}

DelRecipe3 = {"RECIPE_3INPUT_ASTEROID3","RECIPE_3INPUT_LAND3","RECIPE_3INPUT_LAND3",
              "RECIPE_3INPUT_LAND3","RECIPE_3INPUT_OXYGEN_1","RECIPE_3INPUT_OXYGEN_2","RECIPE_3INPUT_OXYGEN_3",
              "RECIPE_3INPUT_OXYGEN_4","RECIPE_3INPUT_OXYGEN_5","RECIPE_3INPUT_OXYGEN_6"}

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "NoMansScience.pak",
  ["MOD_AUTHOR"]				= "PetrikM",
  ["MOD_DESCRIPTION"]   =
    [[
    Date Created: 5/17/19
    Last Edit: 2019-05-18 21:32:23
    by PetrikM

    This file deals with the recipe changes EXCLUSIVELY. No reward differences.
    ]],
  ["NMS_VERSION"]				= "2.0",
  ["MODIFICATIONS"] 		= 
  {
    {
      ["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
      ["MBIN_CHANGE_TABLE"] 	=                           
      {
        {
          ["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",},
          ["EXML_CHANGE_TABLE"] 	=
          {                                               
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_322"},
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
              ["ADD"] 				= DecompRecipes,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_322"},
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
              ["ADD"] 				= ExtractRecipes,
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_322"},
              ["REPLACE_TYPE"] = "ADDAFTERSECTION",
              ["ADD"] 				= SynthRecipes,
            },
          }
				},
			}
		},
	} --149 global replacements	
}

--

--Let us create a shortcut to the EXML_CHANGE_TABLE table that is inside NMS_MOD_DEFINITION_CONTAINER
local Change_Table_Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i=1,#DelRecipe1 do
  local value = DelRecipe1[i]
  -- local word = "RefinerRecipeTable1Input"
  local temp_table = 
            {
              ["SPECIAL_KEY_WORDS"] = {"Name",value},
              -- ["PRECEDING_KEY_WORDS"] = {word,},
              ["REMOVE"] 				= "SECTION",
            }
  Change_Table_Ref[#Change_Table_Ref + 1] = temp_table
end

for i=1,#DelRecipe2 do
  local value = DelRecipe2[i]
  -- local word = "RefinerRecipeTable2Input"
  local temp_table = 
            {
              ["SPECIAL_KEY_WORDS"] = {"Name",value},
              -- ["PRECEDING_KEY_WORDS"] = {word,},
              ["REMOVE"] 				= "SECTION",
            }
  Change_Table_Ref[#Change_Table_Ref + 1] = temp_table
end

for i=1,#DelRecipe3 do
  local value = DelRecipe3[i]
  -- local word = "RefinerRecipeTable3Input"
  local temp_table = 
            {
              ["SPECIAL_KEY_WORDS"] = {"Name",value},
              -- ["PRECEDING_KEY_WORDS"] = {word,},
              ["REMOVE"] 				= "SECTION",
            }
  Change_Table_Ref[#Change_Table_Ref + 1] = temp_table
end

--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE