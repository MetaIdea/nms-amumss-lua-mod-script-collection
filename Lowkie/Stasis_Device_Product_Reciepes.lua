    
function GetRefinerRecipe(ID, NAME, OUTPUT, COST, TIMETOMAKE)
    return
    [[
    <Property value='GcRefinerRecipe.xml'>
      <Property name='Id' value=']]..ID..[[' />
      <Property name='RecipeName' value=']]..NAME..[['/>
      <Property name='RecipeType' value=']]..NAME..[['/>
      <Property name='TimeToMake' value=']]..TIMETOMAKE..[['/>
      <Property name='Cooking' value='False' />
      <Property name='Result' value='GcRefinerRecipeElement.xml'>
        <Property name='Id' value=']]..OUTPUT..[['/>
        <Property name='Type' value='GcInventoryType.xml'>
          <Property name='InventoryType' value='Product'/>
        </Property>
        <Property name='Amount' value='1'/>
      </Property>
      <Property name='Ingredients'>
]]..COST..[[            
      </Property>
    </Property>
    ]]
end

function GetCOST(INPUT, INPUTTYPE, QUANTITY)
    return
    [[
        <Property value='GcRefinerRecipeElement.xml'>
          <Property name='Id' value=']]..INPUT..[['/>
          <Property name='Type' value='GcInventoryType.xml'>
            <Property name='InventoryType' value=']]..INPUTTYPE..[['/>
          </Property>
          <Property name='Amount' value=']]..QUANTITY..[['/>
        </Property>
]]
end

TwoAndHalfMinutes = '300'

NewProducts = {
    {--Stasis Device
        NAME 		= 'UI_ULTRAPROD_2_NAME',
        OUTPUT 	    = 'ULTRAPROD2',
        TIMETOMAKE = '7200',--2 hours each
        COSTLIST	= {
            {INPUT='MEGAPROD2', TYPE='Product', QUANTITY=1},
            {INPUT='MEGAPROD3', TYPE='Product', QUANTITY=1},
            {INPUT='ALLOY8',    TYPE='Product', QUANTITY=1},
        }
    },  
    {--Quantum Processor
        NAME 		= 'UI_MEGAPROD_2_NAME',
        OUTPUT 	    = 'MEGAPROD2',
        TIMETOMAKE = TwoAndHalfMinutes,
        COSTLIST	= {
            {INPUT='FARMPROD9', TYPE='Product', QUANTITY=1},
            {INPUT='COMPOUND5', TYPE='Product', QUANTITY=1},
        }
    }, 
    {--Cryogenic Chamber
        NAME 		= 'UI_MEGAPROD_3_NAME',
        OUTPUT 	    = 'MEGAPROD3',
        TIMETOMAKE = TwoAndHalfMinutes,
        COSTLIST	= {
            {INPUT='FARMPROD8', TYPE='Product', QUANTITY=1},
            {INPUT='COMPOUND6', TYPE='Product', QUANTITY=1},
        }
    },  
    {--Circuit Board
        NAME 		= 'UI_FARMPROD_9_NAME',
        OUTPUT 	    = 'FARMPROD9',
        TIMETOMAKE = TwoAndHalfMinutes,
        COSTLIST	= {
            {INPUT='FARMPROD4', TYPE='Product', QUANTITY=1},
            {INPUT='FARMPROD5', TYPE='Product', QUANTITY=1},
        }
    },     
    {--Superconductor
        NAME 		= 'UI_COMPOUND_5_NAME',
        OUTPUT 	    = 'COMPOUND5',
        TIMETOMAKE = TwoAndHalfMinutes,
        COSTLIST	= {
            {INPUT='COMPOUND2', TYPE='Product', QUANTITY=1},
            {INPUT='REACTION2', TYPE='Product', QUANTITY=1},
        }
    },
    {--Living Glass
        NAME 		= 'UI_FARMPROD_8_NAME',
        OUTPUT 	    = 'FARMPROD8',
        TIMETOMAKE = TwoAndHalfMinutes,
        COSTLIST	= {
            {INPUT='FARMPROD2', TYPE='Product', QUANTITY=1},
            {INPUT='FARMPROD3', TYPE='Product', QUANTITY=5},
        }
    },
    {--Cryo-Pump 
        NAME 		= 'UI_COMPOUND_6_NAME',
        OUTPUT 	    = 'COMPOUND6',
        TIMETOMAKE = TwoAndHalfMinutes,
        COSTLIST	= {
            {INPUT='COMPOUND3', TYPE='Product', QUANTITY=1},
            {INPUT='REACTION1', TYPE='Product', QUANTITY=1},
        }
    },    
    {--Iridesite
        NAME 		= 'UI_ALLOY_COMPLEX_2_NAME',
        OUTPUT 	    = 'ALLOY8',
        TIMETOMAKE = TwoAndHalfMinutes,
        COSTLIST	= {
            {INPUT='ALLOY1', TYPE='Product', QUANTITY=1},
            {INPUT='ALLOY5', TYPE='Product', QUANTITY=1},
            {INPUT='ALLOY6', TYPE='Product', QUANTITY=1},
        }
    }, 
    {--Heat Capacitor
        NAME 		= 'UI_FARMPROD_4_NAME',
        OUTPUT 	    = 'FARMPROD4',
        TIMETOMAKE = TwoAndHalfMinutes,
        COSTLIST	= {
            {INPUT='PLANT_SNOW', TYPE='Substance', QUANTITY=100},
            {INPUT='PLANT_HOT', TYPE='Substance', QUANTITY=200},
        }
    }, 
    {--Poly Fibre
        NAME 		= 'UI_FARMPROD_5_NAME',
        OUTPUT 	    = 'FARMPROD5',
        TIMETOMAKE = TwoAndHalfMinutes,
        COSTLIST	= {
            {INPUT='PLANT_DUST', TYPE='Substance', QUANTITY=100},
            {INPUT='PLANT_LUSH', TYPE='Substance', QUANTITY=200},
        }
    }, 
    {--Semiconductor
        NAME 		= 'UI_COMPOUND_2_NAME',
        OUTPUT 	    = 'COMPOUND2',
        TIMETOMAKE = TwoAndHalfMinutes,
        COSTLIST	= {
            {INPUT='REACTION1', TYPE='Product', QUANTITY=1},
            {INPUT='REACTION3', TYPE='Product', QUANTITY=1},
        }
    },
    {--Lubricant
        NAME 		= 'UI_FARMPROD_2_NAME',
        OUTPUT 	    = 'FARMPROD2',
        TIMETOMAKE = TwoAndHalfMinutes,
        COSTLIST	= {
            {INPUT='PLANT_POOP', TYPE='Product', QUANTITY=50},
            {INPUT='PLANT_RADIO',TYPE='Product', QUANTITY=200},
        }
    },
    {--Hot Ice
        NAME 		= 'UI_COMPOUND_3_NAME',
        OUTPUT 	    = 'COMPOUND3',
        TIMETOMAKE = TwoAndHalfMinutes,
        COSTLIST	= {
            {INPUT='REACTION2', TYPE='Product', QUANTITY=50},
            {INPUT='REACTION3', TYPE='Product', QUANTITY=200},
        }
    },
}

local function AddNewRewardsToChangeTable()
        local StartNumber = 1
		local ReturnExml = ''
        for _,NewProduct in ipairs(NewProducts) do            
            local ProdcutId = "ADVANCEDREFINERECIPE_"..tostring(StartNumber)
            StartNumber = StartNumber + 1
            local exml = ''	
            local _cost = ''	
            for _,cost in pairs(NewProduct.COSTLIST) do
                _cost = _cost..GetCOST(cost.INPUT, cost.TYPE, cost.QUANTITY)      
            end
            exml = GetRefinerRecipe(ProdcutId, NewProduct.NAME, NewProduct.OUTPUT, _cost, NewProduct.TIMETOMAKE)
            ReturnExml = ReturnExml..exml	
        end
        return ReturnExml
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 	= 'Stasis_Device_Product_Reciepes.pak',
["MOD_AUTHOR"]		= 'Lowkie',
["MOD_DESCRIPTION"]	= 'This Mod adds Stasis Device tech tree product reciepes to the Refiners',
["NMS_VERSION"]		= '4.08',
["MODIFICATIONS"] 	= 
  {
    {
      ["MBIN_CHANGE_TABLE"] = 
	  { 
	    {
	  	  ["MBIN_FILE_SOURCE"]  = {"METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN",},
	  	  ["EXML_CHANGE_TABLE"] = 
	  	  {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id","REFINERECIPE_327"},
              ["ADD_OPTION"]        = "ADDafterSECTION",
              ["LINEOFFSET"]        = -1,
              ["ADD"] 			    = AddNewRewardsToChangeTable(),
            },
	  	  }
	    },
	  },
	}
  }
}

-- Basic map organizing thoughts
--  Stasis Device               = ULTRAPROD2    Name = 'UI_ULTRAPROD_2_NAME'
--     Quantum Processor        = MEGAPROD2     Name = 'UI_MEGAPROD_2_NAME'
--         Circuit Board        = FARMPROD9     Name = 'UI_FARMPROD_9_NAME' InventoryType = InventoryTypeEnum.Product
--             Heat Capacitor   = FARMPROD4     Name = 'UI_FARMPROD_4_NAME' InventoryType = InventoryTypeEnum.Product
--               Frost Crystal  = PLANT_SNOW                                InventoryType = InventoryTypeEnum.Substance
--               Solanium       = PLANT_HOT                                 InventoryType = InventoryTypeEnum.Substance
--             Poly Fibre       = FARMPROD5     Name = 'UI_FARMPROD_5_NAME' InventoryType = InventoryTypeEnum.Product
--               Cactus Flesh   = PLANT_DUST                                InventoryType = InventoryTypeEnum.Substance
--               Star Bulb      = PLANT_LUSH                                InventoryType = InventoryTypeEnum.Substance
--         Superconductor       = COMPOUND5     Name = 'UI_COMPOUND_5_NAME'        
--           Enriched Carbon    = REACTION2     Name = 'UI_REACTION_2_NAME'
--           Semiconductor      = COMPOUND2     Name = 'UI_COMPOUND_2_NAME' 
--             Thermic Condense = REACTION1     Name = 'UI_REACTION_1_NAME'
--               Nitrogen Salt  = REACTION3     Name = 'UI_REACTION_3_NAME'        
--               Enriched Carbn = REACTION2     Name = 'UI_REACTION_2_NAME'
--     Cryogenic Chamber        = MEGAPROD3     Name = 'UI_MEGAPROD_3_NAME' InventoryType = InventoryTypeEnum.Product
--       Living Glass           = FARMPROD8     Name = 'UI_FARMPROD_8_NAME'
--         Glass                = FARMPROD3     Name = 'UI_FARMPROD_3_NAME'
--         Lubricant            = FARMPROD2     Name = 'UI_FARMPROD_2_NAME'
--           Faecium            = PLANT_POOP                                InventoryType = InventoryTypeEnum.Substance
--           Gamma Root         = PLANT_RADIO                               InventoryType = InventoryTypeEnum.Substance
--       Cryo-Pump              = COMPOUND6     Name = 'UI_COMPOUND_6_NAME'
--         Thermic Condensate   = REACTION1
--         Hot Ice              = COMPOUND3
--           Nitrogen Salt      = REACTION3
--           Enriched Carbon    = REACTION2
--     Iridesite                = ALLOY8        Name = 'UI_ALLOY_COMPLEX_2_NAME'
--         Aronium              = ALLOY1        Name = 'UI_ALLOY_SIMPLE_1_NAME'
--         Magno-Gold           = ALLOY5        Name = 'UI_ALLOY_SIMPLE_5_NAME'
--         Grantine             = ALLOY6        Name = 'UI_ALLOY_SIMPLE_6_NAME'