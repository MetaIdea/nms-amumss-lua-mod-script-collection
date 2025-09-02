--Mod_Version = "1.0"

-- How to Add More Prices:
-- add another price at the end of DerelictPrices like:

--   10000000, -- 4 -- 30000000
--   12500000, -- 5 --
-- }

-- then add another cost line in the function for DerelictCosts like:

--           <Property value="]]..cost[4]..[[" />
--           <Property value="]]..cost[5]..[[" />
--         </Property>

-- this example adds a 5th price to Derelict Maps
-- the last price will be whats used for the cap price when buying pass that number. 5th price would be used for 6, 7, 8... on the Derelict Maps.

DerelictPrices =
{-- Price,  Buy,   Original Price
  2500000,   -- 1 -- 5000000
  5000000,   -- 2 -- 10000000
  7500000,   -- 3 -- 20000000
  10000000,  -- 4 -- 30000000
} -- all buys after 4 will cost 10mil

-- Derelict Costs Function --
local function DerelictCosts(cost)
return
[[
        <Property name="Costs">
          <Property value="]]..cost[1]..[[" />
          <Property value="]]..cost[2]..[[" />
          <Property value="]]..cost[3]..[[" />
          <Property value="]]..cost[4]..[[" />
        </Property>
]]
end

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Cheaper Derelict Maps.pak",
["MOD_AUTHOR"]      = "Reikokuu & Babscoole",
["MOD_DESCRIPTION"] = "Changes the unit prices for each derelict map at scrap dealer shops",
["NMS_VERSION"]     = "5.29",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        { -- removes original derelict map prices
                            ["SPECIAL_KEY_WORDS"] = {"Id", "C_ABAND_START"},
                            ["PRECEDING_KEY_WORDS"] = {"Costs"},
                            ["REMOVE"] = "SECTION",
                        },
                        { -- adds new derelict map prices
                            ["SPECIAL_KEY_WORDS"] = {"Id", "C_ABAND_START"},
                            ["PRECEDING_KEY_WORDS"] = {"Cost"},
                            ["ADD"] = DerelictCosts(DerelictPrices),
                        },
                    }
                },
            }
        },
    }
}